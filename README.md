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

### Comando para formatar arquivos terraform

```
terraform fmt
```

### Terraform get baixa modules

```
terraform get
```

### Terraform import state

```
terrafomr import [resource]  [resource_name]
```

### terraform graph -  salvar em arquivo .dot

```
terraform graph > base.dot
```

### Backend Terraform para guardar o terraform state
```
terraform{
  backend "s3"{
    bucket="${var.bucket_name}"
    key="ec2/ec2.tfstate"
    region="${var.region}"
  }
}
```

### Para passar parametros no terraform init para backend
```
terraform init -backend=true -backend-config="bucket_name=jax-remote-state-dev" -backend-config="region=us-east-1 -backend-config="profile=terraform"
```