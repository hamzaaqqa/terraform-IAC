variable "location" {
type = string
default = "ukwest"  
}

###################################################
## Azure Authentication
variable "subscriptionID" {
  default ="0e2fa24c-4435-457e-9a4a-5b7096f4bd41"
  type = string
  description = "this is my  subscription ID"
}

variable "client_id" {
  default ="f5a8412c-6f23-4a20-a164-ff87fb697fb8"
  type = string
  description = "this is my  Client ID"
}

variable "client_secret" {
  default ="GrK8Q~Q1F4PIeH_TxSpn6HbmkdSgdatRW5nJnbXz"
  type = string
  description = "this is my  Client secret "
}

variable "tenant_id" {
  default ="19cf3ffd-ea7f-494b-9730-dcb3b0dbb793"
  type = string
  description = "this is my  Tenant ID"
}

##############################################
#vnet
##############################################
variable "res_grp" {
  type = string
  default = "webhelp_rabat"
}
variable "address_space_name" {
  type = string
  default = "webhelp_site"
}

variable "address_space" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_pref" {
  type = list(string)
  default = [ "10.1.0.0/24", "10.2.0.0/24", "10.3.0.0/24" ]
}
variable "subnet_name" {
  type = list(string)
  default = [ "sub1", "sub2", "sub3" ]
}