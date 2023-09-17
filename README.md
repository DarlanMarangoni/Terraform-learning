Curso alura

criando uma chave ssh local para usar nas diferentes regiões da AWS
    ssh-keygen -f terraform-aws -t rsa 
        - apos a criacao da chave import a .pub para aws e referencie no arquivo main.tf
    deploy da infra
        terraform init
        terraform plan
        terraform apply

ssh -i terraform-aws ubuntu@ec2-3-90-151-175.compute-1.amazonaws.com

terraform ...
    show ->  utilizado para informacoes como IP, rede e etc alocados em nossa infraestrutura


https://registry.terraform.io/providers/hashicorp/aws/latest/docs?product_intent=terraform#environment-variables

Removendo recursos da AWS

para remover algum recurso podemos fazer dede 3 maneiras
    1 - apagando o recurno no arquivo .tf e executando o comando terraform apply
    2 - utilizando o terraform destroy (nesse caso todos os recursos declarados sao excluidos)
    3 - terraform destroy -target nome_do_recurso (nesse caso também devemos deletar no arquivo para evitar criar novamente)

Na última aula aprendemos a salvar o terraform state no terraform cloud, adicionando o arquivo terraformrc na HOME do 
nosso usuário para armazenar o token e criando o arquivo o arquivo remote-state.tf para salvar o estado na terraform 
cloud

terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "rmerceslabs"
    
        workspaces {
          name = "aws-rmerceslabs"
        }
    }
}




https://hands-on.cloud/terraform-api-gateway/

    terraform init
    terraform validate
    terraform plan
    terraform apply --auto-approve
    terraform destroy --auto-approve