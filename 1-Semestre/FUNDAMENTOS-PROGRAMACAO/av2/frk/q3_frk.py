TEST_GRADE_WEIGHT = 7
LISTS_GRADE_WEIGHT = 3
MAX_GRADE = 10

modulesQuantity = int(input())
studentsQuantity = int(input())
students = dict()
modulesGrades = dict()

for studentId in range(studentsQuantity):
    name = input()
    students[studentId] = {
        'name': name,
        'modules': []
    }

for module in range(modulesQuantity):
    moduleId = module + 1
    listsInModule = int(input())
    modulesGrades[moduleId] = []
    for studentId in range(studentsQuantity):
        studentTestGrade = float(input())
        module = {
            'id': moduleId,
            'listQuantity': listsInModule,
            'testGrade': studentTestGrade,
            'listsGrades': [],
            'totalListsGrade': 0,
            'grade': 0
        }
        totalListsGrade = 0
        moduleGrade = 0
        for listId in range(listsInModule):
            listGrade = float(input())
            module["listsGrades"].append(listGrade)
            totalListsGrade += listGrade
        
        totalListsGrade = totalListsGrade / listsInModule
        moduleGrade += (studentTestGrade * TEST_GRADE_WEIGHT) / MAX_GRADE
        moduleGrade += (totalListsGrade * LISTS_GRADE_WEIGHT) / MAX_GRADE
        module["totalListsGrade"] = totalListsGrade
        module["grade"] = moduleGrade

        students[studentId]["modules"].append(module)
        modulesGrades[moduleId].append(moduleGrade)

for module in range(modulesQuantity):
    totalModuleGrades = 0
    moduleId = module + 1
    for grade in modulesGrades[moduleId]:
        totalModuleGrades += grade
    totalModuleGrade = totalModuleGrades / len(modulesGrades[moduleId])
    print(moduleId, "{:.2f}".format(totalModuleGrade))

for studentId in range(studentsQuantity):
    student = students[studentId]
    studentTotalModulesGrades = 0
    
    for module in student["modules"]:
        studentTotalModulesGrades += module["grade"]
    studentFinalGrade = studentTotalModulesGrades / modulesQuantity
    studentStatus = ""
    if 0 <= studentFinalGrade and studentFinalGrade < 3:
        studentStatus = "REPROVADO"
    elif 3 <= studentFinalGrade and studentFinalGrade < 5:
        studentStatus = "TA DIFICIL"
    elif 5 <= studentFinalGrade and studentFinalGrade < 7:
        studentStatus = "FOI POR POUCO"
    elif 7 <= studentFinalGrade and studentFinalGrade < 9:
        studentStatus = "PASSOU"
    elif studentFinalGrade >= 9:
        studentStatus = "PASSOU FACIL"
    print(student["name"], "{:.2f}".format(studentFinalGrade), studentStatus)

    for module in student["modules"]:
        print(module["id"], "{:.2f}".format(module["grade"]))