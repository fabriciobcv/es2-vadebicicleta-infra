resource "aws_eip" "aluguel" {}

resource "aws_eip" "equipamento" {}

resource "aws_eip" "externo" {}

resource "aws_eip" "example" {}

output "eip_aluguel_id" {value = aws_eip.aluguel.id}
output "eip_equipamento_id" {value = aws_eip.equipamento.id}
output "eip_externo_id" {value = aws_eip.externo.id}
output "eip_example_id" {value = aws_eip.example.id}
