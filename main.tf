terraform {
    required_providers {
        mgc = {
        source = "MagaluCloud/mgc"
        }
    }
}

provider "mgc" {
    region="br-se1"
}

resource "mgc_virtual_machine_instances" "myvm" {
    provider = "mgc"
    name = "cafeinaa"
    machine_type = {
        name = "cloud-bs1.xsmall"
    }

    image = {
        name = "cloud-ubuntu-22.04 LTS"
    }

   network = {
    associate_public_ip = true
    interface = {
      security_groups = [{
         # grupo criado previamente pelo gabriel
        id = "4aa1a237-2d57-439b-bf6a-177ddbace4cb"
      }]
    }
  }


    ssh_key_name = "bruxaria"
}

