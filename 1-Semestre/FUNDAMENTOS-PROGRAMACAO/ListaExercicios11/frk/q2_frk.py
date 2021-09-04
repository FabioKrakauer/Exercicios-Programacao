data_string = input()
data = data_string.split()

user_type = data[0].upper()
day = data[1].upper()
weather = data[2].upper()
height = float(data[3])
fight = float(data[4])
stealth = float(data[5])

if fight > 10:
    fight = 10

if stealth > 10:
    stealth = 10
 
def calculate_average(stealth, fight):
    average = stealth + fight
    average = average / 2
    average = 10 * average
    if average > 100:
        return 100
    elif average < 0:
        return 0

    return average

def bruxo(day, weather, height, fight, stealth):
    if day == "D":
        return 0
    
    if weather == "N":
        return 100
    
    if weather == "C":
        fight += 3
        stealth += 3

    elif weather == "S":
        stealth -= 1
    
    if height < 1.70:
        stealth += 3
    
    elif height > 2:
        stealth -= 4
    
    return calculate_average(stealth, fight)

def anao(day, weather, height, fight, stealth):
    if height < 1.50:
        stealth += 2
    
    elif height > 1.80:
        stealth -= 5
    
    return calculate_average(stealth, fight)

def elfo(day, weather, height, fight, stealth):
    if day == "N":
        return 0
    
    if weather == "N":
        return 0
    
    elif weather == "C":
        fight -= 2

    elif weather == "S":
        stealth -= 1
    
    if height < 1.60:
        stealth += 1
    
    if height > 1.90:
        stealth -= 6

    return calculate_average(stealth, fight)

city_join = 0
user_type_name = ""
if user_type == "B":
    city_join = bruxo(day, weather, height, fight, stealth)
    user_type_name = "bruxo"
elif user_type == "H":
    city_join = 100
    user_type_name = "humano"
elif user_type == "E":
    city_join = elfo(day, weather, height, fight, stealth)
    user_type_name = "elfo"
elif user_type == "A":
    city_join = anao(day, weather, height, fight, stealth)
    user_type_name = "anao"

print(f"A taxa de sucesso do {user_type_name} para entrar em Novigrad e de {city_join:.2f}%")