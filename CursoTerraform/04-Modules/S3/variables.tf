variable "name" {
  
 
}
variable "acl"{
  default="private"
}

variable "versioning" {

  default="true"
  
}
variable "tag" {
  type="map"
  default={
    Name="paparazi"
    ambiente="dev"
  }  
}

variable "create_object" {
  default=false
}

variable "object_key" {
  default=""
}

variable "object_source" {
   default=""
}


