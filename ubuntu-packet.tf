# Create a multi-node openstack system in Packet.net

# The title of this project specifies packet, but in reaility
# it is packet.net and didigitalocean.com services that are
# used in order to enable dns resolution of names for nodes
# that are created

# Note: You will need to source a file that has the following two
# tokens defined:

# export PACKET_AUTH_TOKEN=GET_PACKET_AUTH_TOKEN_FROM_API_PAGES
# export TOKEN=GET_DIGITAL_OCEAN_TOKEN_FROM_API_PAGES
# export DIGITALOCEAN_TOKEN=${TOKEN}

# If you don't already have a domain defined in Digital Ocean,
# uncomment the next three lines tocreate one, and we'll
# use digital ocean as our DNS service

variable domain_name {
    type = "string"
    default = "cloudsushi.io"
}

variable control_name {
    type = "string"
    default = "control"
}

variable compute_name {
    type = "string"
    default = "compute"
}

variable project_id {
    type = "string"
    default =  "320c2c2f-6876-4621-929a-93a47e07d2da"
}

# resource "digitalocean_domain" "${var.domain_name}" {
#     name = "${var.domain_name}"
# }

## DNSimple
#provider "dnsimple" {
#    token = "${var.dnsimple_token}"
#    account = "${var.dnsimple_account}"
#    email = "${var.dnsimple_email}"
#}

# packet images:
# ubuntu_16_04_image
# ubuntu_14_04_image
# ubuntu_16_04_image
# curl -H "X-Auth-Token: ${PACKET_AUTH_TOKEN}" https://api.packet.net/operating-systems

# packet facilities:
# ewr1
# sjc1
# ewr1

# plan:
# baremetal_0 average
# baremetal_1
# baremetal_2
# baremetal_4

resource "packet_device" "control" {
        hostname = "${var.control_name}"
        plan = "baremetal_1"
        facility = "ewr1"
        operating_system = "ubuntu_16_04_image"
        billing_cycle = "hourly"
        project_id = "320c2c2f-6876-4621-929a-93a47e07d2da"
        provisioner "local-exec" {
          command = "sed -i '' -e 's/^${var.control_name}.*/${var.control_name} ansible_ssh_host=${packet_device.control.network.0.address}/' inventory"
        }
}

# Create a new block volume
resource "packet_volume" "control_vol" {
    description = "${var.control_name}_vol"
    facility = "ewr1"
    project_id = "${var.project_id}"
    plan = "storage_1"
    size = 10
    billing_cycle = "hourly"
}


resource "packet_device" "compute" {
        hostname = "${var.compute_name}"
        plan = "baremetal_1"
        facility = "ewr1"
        operating_system = "ubuntu_16_04_image"
        billing_cycle = "hourly"
        project_id = "${var.project_id}"
        provisioner "local-exec" {
          command = "sed -i '' -e 's/^${var.compute_name}.*/${var.compute_name} ansible_ssh_host=${packet_device.compute.network.0.address}/' inventory"
        }
}

# Create a new block volume
resource "packet_volume" "compute_vol" {
    description = "${var.compute_name}_vol"
    facility = "ewr1"
    project_id = "${var.project_id}"
    plan = "storage_1"
    size = 10
    billing_cycle = "hourly"
}
# Create a new block volume
#resource "packet_volume" "compute_vol_2" {
#    description = "${var.compute_name}_vol_2"
#    facility = "ewr1"
#    project_id = "${var.project_id}"
#    plan = "storage_1"
#    size = 10
#    billing_cycle = "hourly"
#}


###resource "packet_device" "kolla-registry" {
###        hostname = "kolla-registry"
###        plan = "baremetal_0"
###        facility = "ewr1"
###	operating_system = "ubuntu_16_04_image"
###        billing_cycle = "hourly"
###        project_id = "320c2c2f-6876-4621-929a-93a47e07d2da"
###}

# Add a pointer to the new IP address
# Note that the default TTYL is 1800 seconds, so it will take
# up to 30 minutes in this enviornment for the record to time out.

resource "dnsimple_record" "control" {
    domain = "${var.domain_name}"
    type = "A"
    name = "${var.control_name}"
    value = "${packet_device.control.network.0.address}"
}

resource "dnsimple_record" "compute" {
    domain = "${var.domain_name}"
    type = "A"
    name = "${var.compute_name}"
    value = "${packet_device.compute.network.0.address}"
}

###resource "digitalocean_record" "kolla-registry" {
###    domain = "${var.domain_name}"
###    type = "A"
###    name = "kolla-registry"
###    value = "${packet_device.kolla-registry.network.0.address}"
###}
