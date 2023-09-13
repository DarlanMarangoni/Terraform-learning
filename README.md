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






https://hands-on.cloud/terraform-api-gateway/

    terraform init
    terraform validate
    terraform plan
    terraform apply --auto-approve
    terraform destroy --auto-approve