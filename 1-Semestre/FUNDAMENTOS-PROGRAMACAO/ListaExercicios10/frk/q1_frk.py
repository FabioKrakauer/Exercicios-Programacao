products = (
    ("arroz", 5.50),
    ("feijao", 6.00),
    ("oleo", 7.50),
    ("sal", 1.99),
    ("açucar", 4.00),
    ("cafe", 6.70),
    ("molho de tomate", 1.20),
    ("macarrao", 2.80),
    ("farinha de trigo", 5.30),
    ("pao", 5.00),
    ("manteiga", 3.00),
    ("banana", 2.00),
    ("leite", 3.50),
    ("sabonete", 0.80),
    ("creme dental", 1.00),
    ("escova de dentes", 0.80),
    ("desodorante", 5.40),
    ("absorvente", 1.90),
    ("shampoo", 5.00),
    ("papel higienico", 10.00),
    ("detergente liquido", 0.50),
    ("sabao em barra", 0.50),
    ("sabao em po", 5.00),
    ("amaciante", 4.50),
    ("agua sanitaria", 1.99),
    ("multiuso", 2.90),
    ("esponja de aco", 0.30)
)
basic_basket = input()
basketItensQuantity = basic_basket.split(",")
donated_amount = float(input())

total_basket = 0
index = 0
for itemQuantity in basketItensQuantity:
    itemInformation = products[index]
    total_basket += float(itemInformation[1]) * int(itemQuantity)
    index += 1
donated_basic_basket = int(donated_amount / total_basket)
print("O valor da cesta básica ficou em:", "R${:.2f}".format(total_basket))
print("Com o valor doado pode ser comprada", donated_basic_basket, "cestas básicas")