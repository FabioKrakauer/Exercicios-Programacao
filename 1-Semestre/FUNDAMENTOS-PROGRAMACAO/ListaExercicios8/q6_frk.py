END_PRODUCTS_REGISTRATION = '*'
END_ACTIONS = 'TOTAL'
products = dict()

product_command = input()
while product_command != END_PRODUCTS_REGISTRATION:
    product_command_list = product_command.split()
    product = {
        'name': " ".join(product_command_list[:-1]).lower(),
        'price': product_command_list[-1]
    }
    products[product["name"]] = product
    product_command = input()

action = ""
while action != END_ACTIONS:
    action = input()
    action = action.lower()
    if action == 'quantidade':
        print(len(products))
    elif action.startswith('retire'):
        action_list = action.split()
        product_name = " ".join(action_list[1:])
        products.pop(product_name, None)
    elif action == 'total':
        totalPrice = 0.0
        for product in products.keys():
            totalPrice += float(products[product]["price"])
        print("{:.2f}".format(totalPrice))
    action = action.upper()
