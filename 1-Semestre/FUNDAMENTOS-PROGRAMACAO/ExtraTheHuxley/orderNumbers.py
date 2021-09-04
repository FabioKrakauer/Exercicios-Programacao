number1 = int(input())
number2 = int(input())
number3 = int(input())
listNumbers = list()
listNumbers.append(number1)
listNumbers.append(number2)
listNumbers.append(number3)
for number in sorted(listNumbers):
    print(number)