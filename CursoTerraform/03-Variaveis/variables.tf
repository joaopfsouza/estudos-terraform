variable "region"{
    default="us-east-1"
    description="Main region"
}

variable "access_key" {
  default="AKIAYVPRGRMEAXLPMTMV"
}

variable "secret_key" {
  default="AEYyVwpe+0FU7+JxJ4Aoz8rIFhE+LeLwIaqyjr/l"
}

variable "instance_type" {
  
}

variable "ami"{
    default="ami-0b69ea66ff7391e80"
}

variable "ips"{
    type="list"
    default=["fd8f:5b8f:4120:1234:ffff:ffff:ffff:ffff",
    "fd8f:5b8f:4120:1234:0:0:0:0"]
}

variable "tags" {
    type="map"
    default={
        "Name"="NodeJs"
        "Env"="Dev"
    }
  
}

