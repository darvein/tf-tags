variable "tags" {
  description = "A map of tags to add to all resources"
  type = object({
    # Technical Tags
    Name        = optional(string, "")
    Environment = string # Mandatory
    Application = optional(string, "")
    Tier        = optional(string, "")

    # Automation Tags
    Automated_Shutdown = optional(string, "")

    # Business Tags
    Customer = string # Mandatory
    Team     = optional(string, "")

    # Security Tags
    Confidentiality = optional(string, "")
  })

  default = {
    Name        = ""
    Environment = ""
    Application = ""
    Tier        = ""
    Automated_Shutdown = ""
    Customer = ""
    Team     = ""
    Confidentiality = ""
  }
}

variable "custom_tags" {
  description = "A map of custom tags as needed"
  type = map(string)
  default = {}
}
