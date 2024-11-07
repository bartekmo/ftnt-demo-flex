terraform {
  required_providers {
    fortiflexvm = {
      #version = "2.3.3"
      source  = "fortinetdev/fortiflexvm"
    }
  }
}


# Create new licenses
resource "fortiflexvm_config" "demo" {
  name                  = "DEMO"
  product_type          = "FGT_VM_Bundle"
  program_serial_number = var.flex_program
  fgt_vm_bundle {
    cpu_size            = 4          
    service_pkg         = "ATP"     
    vdom_num            = 0    
    fortiguard_services = [] 
    cloud_services      = [] 
  }
}


resource "fortiflexvm_entitlements_vm" "demo" {
  count = 2
  config_id     = fortiflexvm_config.demo.config_id
  description   = "Web demo license"
  end_date      = "2024-11-30"
  #status = "ACTIVE"
  serial_number = count.index == 0 ? "FGVMELTM24012282" : "FGVMELTM24012283"
}

module "fgt_ha" {
  source        = "git::github.com/fortinet/terraform-google-fgt-ha-ap-lb?ref=v1.1"

  region        = "us-central1"
  subnets       = [ "external", "internal", "mgmt" ]

  flex_tokens   = fortiflexvm_entitlements_vm.demo[*].token
  image = {
    family  = "fortigate-76-byol"
  }
}