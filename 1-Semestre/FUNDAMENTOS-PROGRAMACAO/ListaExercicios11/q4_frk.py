END = "-1"

def isTableOne(data):
    TEAMS = ["FLAMENGO", "SPORT", "VITORIA"]
    team = data["team"]
    age = data["age"]
    if team in TEAMS and age >= 30:
        return True
    else:
        return False

def isTableTwo(data):
    TEAMS = ["VASCO", "TREZE", "SANTOS"]
    team = data["team"]
    age = data["age"]
    if team in TEAMS and age >= 18 and age <= 36:
        return True
    else:
        return False

def isTableTrhee(data):
    TEAMS = ["BAHIA", "FORTALEZA", "GREMIO"]
    team = data["team"]
    age = data["age"]
    if team in TEAMS and age > 10 and age < 18:
        return True
    else:
        return False


people = dict()
tables = {
    1: [],
    2: [],
    3: [],
    4: []
}

for i in range(10):
    person = input()
    if person == "-1":
        break

    person_data = person.split()
    person_dict = {
        "name": person_data[0].upper(),
        "team": person_data[2].upper(),
        "age": int(person_data[1])
    }
    people[person_dict["name"]] = person_dict

personQuantity = len(people)

for name, data in people.items():
    name = data["name"]
    if isTableOne(data):
        tables[1].append(name)
    elif isTableTwo(data):
        tables[2].append(name)
    elif isTableTrhee(data):
        tables[3].append(name)
    else:
        tables[4].append(name)

if personQuantity != 0:
    for table, names in tables.items():
        print("MESA", table)
        chair = 1
        if len(names) != 0:
            for name in names:
                print(chair, name)
                chair += 1
        else:
            print("VAZIA")
        if table != 4:
            print()
else:
    print("JANTAR SEM CONVIDADOS")
