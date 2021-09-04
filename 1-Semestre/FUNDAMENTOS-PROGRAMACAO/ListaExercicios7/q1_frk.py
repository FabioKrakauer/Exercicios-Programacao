import re
cpf = input()

cpfNumbers = re.split('\.|\-', cpf)
for number in cpfNumbers:
    print(number)