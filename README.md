# Relatorio-ABAP-com-JOIN-Total-de-Vendas-por-Cliente

Relat-rio-ABAP-Total-de-Vendas-por-Cliente
Desenvolvimento de relatório em ABAP para consolidação de vendas por cliente, utilizando Open SQL com agregações e exibição em ALV OO.

O programa permite filtrar os pedidos por data de criação (ERDAT) através de SELECT-OPTIONS, realizando junção entre as tabelas:

VBAK – Cabeçalho de pedidos de venda

VBAP – Itens do pedido

KNA1 – Cadastro de clientes

Foram implementadas as seguintes funcionalidades:

Cálculo do valor total vendido por cliente (SUM VBAP-NETWR)

Cálculo da quantidade total vendida (SUM VBAP-KWMENG)

Agrupamento por código e nome do cliente

Ordenação decrescente pelo total vendido

Exibição dos dados via ALV utilizando a classe padrão da SAP CL_SALV_TABLE

Objetivo do desenvolvimento: praticar JOINs, funções de agregação, GROUP BY, ORDER BY e utilização de ALV orientado a objetos para apresentação de dados consolidados.

<img width="662" height="199" alt="557868588-b9d6461b-e031-454e-9d2e-d7de2a241c93" src="https://github.com/user-attachments/assets/e98011f0-9db3-4b21-a91c-dbbae3ecd026" />
<img width="741" height="154" alt="557868601-bd0954a4-f4aa-4218-affd-c1791ea45c4e" src="https://github.com/user-attachments/assets/c7ba39d9-c70d-4b41-8d87-998a265058cd" />
