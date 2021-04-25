MAN_SEX = 'M'
WOMAN_SEX = 'F'
LIFE_TIME = 24

womanKids = 0
manKids = 0
lessThanTwoYears = 0

totalKids = int(input())
if totalKids > 0:
    i = 0
    while i < totalKids:
        i += 1
        kid_sex = input()
        kid_lifetime = int(input())
        
        if kid_lifetime <= 0:
            print("Informe um número positivo")
            break

        if kid_sex == MAN_SEX:
            manKids += 1
        elif kid_sex == WOMAN_SEX:
            womanKids += 1

        if kid_lifetime <= LIFE_TIME:
            lessThanTwoYears += 1

    mans_percent = manKids * 100 / totalKids
    womans_percent = womanKids * 100 / totalKids
    lessThanLifeTime = lessThanTwoYears * 100 / totalKids

    print("a)", str(womans_percent) + "% das crianças eram do sexo feminino.")
    print("b)", str(mans_percent) + "% das crianças eram do sexo masculino.")
    print("c)", str(lessThanLifeTime) + "% das crianças viveram 24 meses ou menos.")
else:
    print("Informe um número positivo")