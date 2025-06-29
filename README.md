# TerraformWithAws
Lab criado para implementação de uma infraestrutura na AWS usando o TerraForm

Conhecimentos necessário para implantar esse lab:

AWS Cloud Practitioner Essentials
Terraform
GitHub


# Pré Requisitos
Instalar as ferramentas necessárias para seguir com a implemntação do lab ou no uso do 
dia-a-dia

- Instalar o AWS CLI.
- Instalar o terraform.
- Instalar o VS Code.
- Instalar a extensão do terraform no VS Code.
- Criar uma conta na AWS 12 meses free tier.
- Criar criar um usuário no IAM e criar chaves de acesso.
- Criar um S3 bucket para gerenciar o terraform.tfstate.
- Criar uma tabela no DynamoDB para ativar o locking do arquivo terraform.tfstate e evitar alterações simultâneas.
- Ter ou criar um repositorio no GitHub para gerenciar os arquivos terraform.

## Instruções

 - Instalar o AWS CLI
1. Acesse a url https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi para baixar o instalador do AWS CLI
2. Execute o arquivo AWSCLI64PY3.msi
3. No wizard de instalação clique em Next
4. Aceite o termo de uso e clique em Next
5. Clique em Next
6. Clique em install
7. Clique em Finish para finalizar a instalação do AWS CLI

 - Instalar o Terraform
1. Acesse a url https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_windows_386.zip para baixar o binário do terraform
2. Clique com o botão direito no arquivo terraform_1.2.9_windows_386.zip e depois clique em extrair tudo
3. Faça a extração para dentro do diretório C:\Program Files (x86)
4. Clique com o botão direito no iniciar e depois clique em sistema
5. Clique em configuração avançada do sistema
6. Na tela Propriedade do sistema clique em variáveis de ambiente
7. Clique duas vezes no item path dentro de variáveis do systema
8. Clique em novo.
9. Adicione o caminho C:\Program Files (x86)\terraform_1.2.9_windows_386\
10. Clique em OK
11. Clique em OK novamente
12. Abra o terminal
13. Execute o comando terraform --version para verificar a instalação

 - Instalar o VS Code
1. Acesse a url https://code.visualstudio.com/sha/download?build=stable&os=win32-x64 para baixar o instalador do VS Code
2. Execute o arquivo VSCodeSetup-x64-1.71.0.exe para iniciar a instalação
3. Aceite o termo de uso e clique em Next
4. Clique em Next para selecionar o diretório de instalação
5. Clique em Next para selecionar o nome da aplicação
6. Clique em Next para aceitar as opções adicionais recomendadas
7. Clique em Install para iniciar a instalação
8. Cliquem em finisih para finalizar a instalação do VS Code

 - Instalar a extensão do terraform no VS Code
1. Com o VS Code aberto clique no ícone chamado extensões, localizado no menu lateral esquerdo
2. Procure por HarshiCorp Terraform e clique em install
3. Aguarde finalizar a instalação da extensão

 - Criar um usuário IAM na AWS e criar as credências

1. Criar uma conta na AWS com 12 meses free tier
2. Criar um usuário no IAM e gerar credências de acesso
3. Conceder role de admnistrator ou a role adequada para seu IAC
3. Salvar Access Key e Secret Key para usar como variaveis de ambiente

 - Criar um S3 Bucket para gerenciar o terraform.tfstate

1. Acessar o AWS pesquisar por S3 
2. Criar o Bucket Standard com versionamento

 - Criar uma tabela no DynamoDB

1. Criar uma tabela DynamoDB com chave de partition LockID (String)

 - Variaveis de ambientes para serem declaradas

Essas variavies serão usadas para o AWS CLI autenticar na primeira vez o terraform init for executado usando o backed remoto para controle do terraform.tfstate

AWS_SECRET_ACCESS_KEY = "Valor_Access_Key"
AWS_SECRET_ACCESS_KEY = "Valor_SecretKey"

Essas variaveis serão usadas pelo provider para realizar as implementações e alterações de infrastrutura na AWS.

TF_VAR_AWS_PROVIDER_ACCESS_KEY = "Valor_Access_Key"
TF_VAR_AWS_PROVIDER_SECRET_KEY = "Valor_Access_Key"

 - Fazer o gitclone do repositorio TerraformWithAws

1. git clone https://github.com/p5droluis/TerraformWithAws.git

 - Arquivos que terá no repositório:

  -  .gitignore -- Contem a lista de arquivos para serem ignorado durante um push
  -  README.md -- Documentação do repositório
  -  access_variables.tf -- Será configurado as variaveis de crendências para implantação e alterações da infrastrutura
  - aws_instance.tf -- Criação de uma Instancia EC2
  - aws_network_interface.tf
  - aws_s3_bucket.tf -- Criação de um Bucket S3
  - aws_subnet.tf -- Criação de uma subnet
  - aws_vpc.tf -- Criação de uma VPC
  - backend.tf --  Configurado o S3 Bucket para geraciar o Terraform.tfstate
  -  global_variables.tf -- Declaração de variaves para gerênciar melhor os arquivos
  - outputs.tf -- Outputs para serem usando em futuras automações ou integrações com outros ferramentas
  - providers.tf -- Plugin usado para comunicação com o provider de nuvem e realizar a implantações e alteraçõe da infraestrutura
  - terraform.tf -- Configurações gerais do TerraForm e versão do provider usado
  - terraform.tfvars -- Variaveis para melhor gerenciamento do IAC

## Terraform comandos

1. Dentro do repositório que foi clonado rodar o comando terraform init
2. Executar o comando terraform plan para ver as implantações a serem feitas
3. Executar o comando terraform apply --auto-approve para implantar as alterações
4. Executar o comando terraform destroy --auto-approve para remover todos os recursos provisionados.

## Terraform files

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.foo](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/instance) | resource |
| [aws_network_interface.foo](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/network_interface) | resource |
| [aws_s3_bucket.mytfbucket](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/s3_bucket) | resource |
| [aws_subnet.my_subnet](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/subnet) | resource |
| [aws_vpc.my_vpc](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AWS_PROVIDER_ACCESS_KEY"></a> [AWS\_PROVIDER\_ACCESS\_KEY](#input\_AWS\_PROVIDER\_ACCESS\_KEY) | User Access key | `string` | n/a | yes |
| <a name="input_AWS_PROVIDER_SECRET_KEY"></a> [AWS\_PROVIDER\_SECRET\_KEY](#input\_AWS\_PROVIDER\_SECRET\_KEY) | User Secret key | `string` | n/a | yes |
| <a name="input_ec2_name"></a> [ec2\_name](#input\_ec2\_name) | EC2 instance name | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment type | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Subnet name | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2"></a> [ec2](#output\_ec2) | Show output EC2 Instance |
| <a name="output_ec2_private_ip"></a> [ec2\_private\_ip](#output\_ec2\_private\_ip) | Show output EC2 instance private ip |
<!-- END_TF_DOCS -->