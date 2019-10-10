# estudos-terraform



### Adicionar credentials com profile

```
aws configure --profile profile-name
```

### Lista usuários configurados da aws na máquina
```
aws configure list 
```

### Terraform plan para saber o que ele irá modificar

```
terraform plan
``

### Terraform apply para aplicar as mudanças

```
terraform apply
``

### Observação
Não é necessário informar o caminho shared_credentials_file, caso você tenha configurado um profile para credenciais na sua máquina
```
provider "aws" {
    #shared_credentials_file="~/.aws/credentials"
    profile="terraform-script"
    region="us-east-1"
}
```

### Mostra os resultados dos terraforms aplicados
```
terraform show
```

### Destroe tudo que foi criado

```
terraform destroy
```

### Força destruição e criação de recurso
```
terraform taint [nome do recurso]
```

### Remove o taint do recurso
```
terraform untaint [nome do recurso]
```

### Terraform Console para manipular variáveis de recursos

```
terraform console
// [recurso.nome.variable]
```

### Variáveis que não apresentam Default serão solicitadas no apply do terraform

```HCL
variable "instance_type" {
  
}

variable "ami"{
    default="ami-0b69ea66ff7391e80"
}

```

### Passar valor da variável por linha de comando
```
terraform plan -var 'instace_type=t2.micro'
```

### Arquivo de variáveis arquivo.tfvars
```
terraform plan -var-file="dev.tfvars"
```

### Name de uma instancia EC2. Tag Name será o nome mostrado no portal da aws
```
variable "tags" {
    type="map"
    default={
        "Name"="NodeJs"
        "Env"="Dev"
    }
  
}
```