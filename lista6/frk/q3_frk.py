READ_CONTINUE = 'S'
READ_STOP= 'N'

cities = list()
country_vehicles = 0
country_accidents = 0
country_fatal_accidents = 0
country_non_fatal_accidents = 0
country_non_vitims_accident = 0

mostAccidentCityId = 0
lessAccidentCityId = 0

biggerIvtId = 0
smallerIvtId = 0

reading = READ_CONTINUE
citiesQuantity = 0
while reading == READ_CONTINUE:
    city = list()

    city_name = input()
    vehicles = int(input())
    fatal_accident = int(input())
    non_fatal_accident = int(input())
    non_vitims_accident = int(input())
    totalCityAccidents = fatal_accident + non_fatal_accident + non_vitims_accident
    ivt = (5 * fatal_accident + 3 * non_fatal_accident + 1 * non_vitims_accident) / vehicles

    country_accidents += totalCityAccidents
    country_vehicles += vehicles
    country_fatal_accidents += fatal_accident
    country_non_fatal_accidents += non_fatal_accident
    country_non_vitims_accident += non_vitims_accident

    city.append(city_name)
    city.append(vehicles)
    city.append(fatal_accident)
    city.append(non_fatal_accident)
    city.append(non_vitims_accident)
    city.append(totalCityAccidents)
    city.append(ivt)

    cities.append(city)

    mostAccidentCity = cities[mostAccidentCityId]
    lessAccidentCity = cities[lessAccidentCityId]

    if totalCityAccidents > mostAccidentCity[5]:
        mostAccidentCityId = citiesQuantity

    if totalCityAccidents < lessAccidentCity[5]:
        lessAccidentCityId = citiesQuantity
    
    biggerIvtCity = cities[biggerIvtId]
    smallerIvtCity = cities[smallerIvtId]

    if ivt > biggerIvtCity[6]:
        biggerIvtId = citiesQuantity

    if ivt < smallerIvtCity[6]:
        smallerIvtId = citiesQuantity

    reading = input()
    citiesQuantity += 1

countryVehiclesAverage = country_vehicles / citiesQuantity
countryFatalAccidentsAverage = country_fatal_accidents / citiesQuantity
countryNonFatalAccidentsAverage = country_non_fatal_accidents / citiesQuantity
countryNonVitimsAccidentsAverage = country_non_vitims_accident / citiesQuantity

mostAccidentCity = cities[mostAccidentCityId]
lessAccidentCity = cities[lessAccidentCityId]

biggerIvtCity = cities[biggerIvtId]
smallerIvtCity = cities[smallerIvtId]

print("4.a) A quantidade de veículos no país:", country_vehicles)
print("4.b) A quantidade de acidentes no país:", country_accidents)
print("4.c) A quantidade de acidentes com vítimas fatais no país:", country_fatal_accidents)
print("4.d) O município com maior número de acidentes:", mostAccidentCity[0], "(" + str(mostAccidentCity[5]) + ")")
print("4.d) O município com menor número de acidentes:", lessAccidentCity[0], "(" + str(lessAccidentCity[5]) + ")")
print("")
print("5.a) A média de veículos por municípios:", countryVehiclesAverage)
print("5.b) A média de acidentes com vítimas fatais por municípios:", countryFatalAccidentsAverage)
print("5.b) A média de acidentes com vítimas não-fatais por municípios:", countryNonFatalAccidentsAverage)
print("5.b) A média de acidentes sem vítimas por municípios:", countryNonVitimsAccidentsAverage)
print("")
print("5.c) O maior IVT é de", biggerIvtCity[6],"e pertence ao município", biggerIvtCity[0])
print("5.d) Nome do município:", biggerIvtCity[0])
print("5.d) Quantidade de veículos de", biggerIvtCity[0]+":", biggerIvtCity[1])
print("5.d) Total de acidentes com vítimas fatais em", biggerIvtCity[0]+":", biggerIvtCity[2])
print("5.d) Total de acidentes com vítimas não-fatais em", biggerIvtCity[0]+":", biggerIvtCity[3])
print("5.d) Total de acidentes sem vítimas em", biggerIvtCity[0]+":", biggerIvtCity[4])
print("")
print("5.c) O menor IVT é de", smallerIvtCity[6],"e pertence ao município", smallerIvtCity[0])
print("5.d) Nome do município:", smallerIvtCity[0])
print("5.d) Quantidade de veículos de", smallerIvtCity[0]+":", smallerIvtCity[1])
print("5.d) Total de acidentes com vítimas fatais em", smallerIvtCity[0]+":", smallerIvtCity[2])
print("5.d) Total de acidentes com vítimas não-fatais em", smallerIvtCity[0]+":", smallerIvtCity[3])
print("5.d) Total de acidentes sem vítimas em", smallerIvtCity[0]+":", smallerIvtCity[4])