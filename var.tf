variable "project" {
    type = string
    default = "fastly-soc"
}
variable "machine-type" {
    type         = string
    default      = "e2-medium"
    description  = "Disk to be snapshotted"
}
variable "zone" {
    type        = string
    default     = "us-central1-a"
    description = "Input from the user"
}
variable "region" {
    type        = string
    default     = "us-central1-a"
    description = "Input from the user"
}
variable "image" {
    type        = string
    default     = "ubuntu-2204-jammy-v20220924"
    description = "Input from the user"
}
