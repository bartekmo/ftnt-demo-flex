variable "flex_username_secret_name" {
    type = string
    description = "Where to find the FortiFlex API username in Google Cloud Secret Manager"
}

variable "flex_passwd_secret_name" {
    type = string
    description = "Where to find the FortiFlex API password in Google Cloud Secret Manager"
}

variable "flex_program" {
    type = string
    default = "ELAVMR0000000367"
}