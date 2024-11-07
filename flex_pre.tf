# Get Flex credentials from secure secret vault and configure Flex provider
data "google_secret_manager_secret_version" "flex_user" {
  secret = var.flex_username_secret_name
}
data "google_secret_manager_secret_version" "flex_pass" {
  secret = var.flex_passwd_secret_name
}
provider "fortiflexvm" {
    username = data.google_secret_manager_secret_version.flex_user.secret_data
    password = data.google_secret_manager_secret_version.flex_pass.secret_data
    import_options = toset(["program_serial_number=${var.flex_program}"])
}