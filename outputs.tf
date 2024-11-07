output "License_serial_numbers" {
    value = fortiflexvm_entitlements_vm.demo[*].serial_number
}

output "FortiGate_management_IPs" {
    value = module.fgt_ha.fgt_mgmt_eips
}