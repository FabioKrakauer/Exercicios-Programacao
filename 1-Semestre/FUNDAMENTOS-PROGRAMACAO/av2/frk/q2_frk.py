TEST_GRADE_WEIGHT = 7
LISTS_GRADE_WEIGHT = 3
MAX_GRADE = 10
testGrade = float(input())
listQuantity = int(input())

listsGrades = dict()
totalListGrade = 0.0
for listId in range(listQuantity):
    listGrade = float(input())

    listsGrades[listId] = listGrade
    totalListGrade += listGrade
totalListGrade = totalListGrade / listQuantity

totalGrade = 0.0
totalGrade += (testGrade * TEST_GRADE_WEIGHT) / MAX_GRADE
totalGrade += (totalListGrade * LISTS_GRADE_WEIGHT) / MAX_GRADE

print("{:.2f}".format(totalGrade))
if 0 <= totalGrade and totalGrade < 3:
    print('RED ZONE!')
elif 3 <= totalGrade and totalGrade < 5:
    print('DA PARA RECUPERAR!')
elif 5 <= totalGrade and totalGrade < 7:
    print('QUASE LA!')
elif 7 <= totalGrade and totalGrade < 9:
    print('TA FAVORAVEL!')
elif totalGrade >= 9:
    print('EXCELENTE!')