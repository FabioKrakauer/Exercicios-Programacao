import re
EMAIL_REGEX = '^[a-z0-9.]+@[a-z0-9]+\.[a-z]+\.([a-z]+)'
LEAVE = 'sair'

email = input()
while email != LEAVE:
    emailIsValid = re.search(EMAIL_REGEX, email)
    if emailIsValid:
        print("certo")
    elif email != LEAVE:
        print("errado")
    email = input()