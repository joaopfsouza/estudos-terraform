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