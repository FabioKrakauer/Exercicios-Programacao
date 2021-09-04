quantityProducts = int(input())
products = dict()

for product in range(quantityProducts):
    code = int(input())
    description = input()
    price = float(input())

    product = {
        'code': code,
        'description': description,
        'price': price
    }
    products[code] = product

totalPrice = 0.0
productCode = int(input())
while productCode != 0:
    selectedProduct = products.get(productCode, {'price': 0})
    quantity = int(input())
    if quantity <= 0:
        quantity = 0
    totalPrice += selectedProduct['price'] * quantity
    productCode = int(input())
print("{:.2f}".format(totalPrice))