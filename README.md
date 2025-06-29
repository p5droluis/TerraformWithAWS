# TerraformWithAws
Lab criado para implementação de uma infraestrutura na AWS usando o TerraForm

# Pré Requisitos
Instalar as ferramentas necessárias para seguir o treinamento e que recomendamos o uso no
dia-a-dia.

Instalar o AWS CLI
Instalar o terraform
Instalar o VS Code
Instalar a extensão do terraform no VS Code

 - Instruções

Instalar o AWS CLI
1. Acesse a url https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi para baixar o instalador do AWS CLI.
2. Execute o arquivo AWSCLI64PY3.msi.
3. No wizard de instalação clique em Next.
4. Aceite o termo de uso e clique em Next.
5. Clique em Next.
6. Clique em install.
7. Clique em Finish para finalizar a instalação do AWS CLI.

Instalar o Terraform
1. Acesse a url https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_windows_386.zip para baixar o
binário do terraform.
2. Clique com o botão direito no arquivo terraform_1.2.9_windows_386.zip e depois clique em extrair tudo.
3. Faça a extração para dentro do diretório C:\Program Files (x86).
4. Clique com o botão direito no iniciar e depois clique em sistema.
5. Clique em configuração avançada do sistema.
6. Na tela Propriedade do sistema clique em variáveis de ambiente.
7. Clique duas vezes no item path dentro de variáveis do systema.
8. Clique em novo.
9. Adicione o caminho C:\Program Files (x86)\terraform_1.2.9_windows_386\.
10. Clique em OK.
11. Clique em OK novamente.
12. Abra o terminal
13. Execute o comando terraform --version para verificar a instalação

Instalar o VS Code
1. Acesse a url https://code.visualstudio.com/sha/download?build=stable&os=win32-x64 para baixar o instalador
do VS Code.
2. Execute o arquivo VSCodeSetup-x64-1.71.0.exe para iniciar a instalação.
3. Aceite o termo de uso e clique em Next.
4. Clique em Next para selecionar o diretório de instalação
5. Clique em Next para selecionar o nome da aplicação.
6. Clique em Next para aceitar as opções adicionais recomendadas.
7. Clique em Install para iniciar a instalação.
8. Cliquem em finisih para finalizar a instalação do VS Code

Instalar a extensão do terraform no VS Code
1. Com o VS Code aberto clique no ícone chamado extensões, localizado no menu lateral esquerdo.
2. Procure por HarshiCorp Terraform e clique em install.
3. Aguarde finalizar a instalação da extensão.

#Terraform files

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