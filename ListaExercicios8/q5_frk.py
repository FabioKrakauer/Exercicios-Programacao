END_PROGRAM = 'FIM'

fuel_stations = dict()
last_fuel_station = {
    'fuel_station': '',
    'kilometers': 0,
    'used_fuel': 0
}

fuel_supply_instruction = input()
while fuel_supply_instruction != END_PROGRAM:
    fuel_supply_informations = fuel_supply_instruction.split()
    fuel_supply = {
        'fuel_station': fuel_supply_informations[2],
        'kilometers': int(fuel_supply_informations[0]),
        'used_fuel': float(fuel_supply_informations[1])
    }
    if last_fuel_station["kilometers"] != 0:
        traveledKm = fuel_supply["kilometers"] - last_fuel_station["kilometers"]
        average_consumption = traveledKm / fuel_supply["used_fuel"]
        average_consumptionList = fuel_stations.get(last_fuel_station["fuel_station"], []) 
        average_consumptionList.append(average_consumption)
        fuel_stations[last_fuel_station["fuel_station"]] = average_consumptionList

    last_fuel_station = fuel_supply
    fuel_supply_instruction = input()

fuel_stations_keys = sorted(fuel_stations.keys())
for fuel_station_name in fuel_stations_keys:
    fuel_station_kilometers = fuel_stations[fuel_station_name]
    totalKilometers = 0
    for kilometer in fuel_station_kilometers:
        totalKilometers += kilometer

    averageTotalKilometers = totalKilometers / len(fuel_station_kilometers)
    print(fuel_station_name + ":", "{:.2f}".format(averageTotalKilometers))