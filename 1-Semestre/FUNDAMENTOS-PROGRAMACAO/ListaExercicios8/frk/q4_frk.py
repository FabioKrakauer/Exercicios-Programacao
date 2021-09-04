END_INSTRUCTION = '*'
infractions = dict()
traffic_infractions = dict()

infraction_command = input()
while infraction_command != END_INSTRUCTION:
    infraction_command_list = infraction_command.split()
    infraction = {
        'id': int(infraction_command_list[0]),
        'price': float(infraction_command_list[1]),
        'points': int(infraction_command_list[2])
    }
    infractions[infraction['id']] = infraction
    infraction_command = input()

traffic_infractions_command = input()
while traffic_infractions_command != END_INSTRUCTION:
    traffic_infractions_command_list = traffic_infractions_command.split()
    traffic_infraction = {
        'car_sign': traffic_infractions_command_list[0],
        'infractions': traffic_infractions_command_list[1:],
        'points': 0,
        'totalPrice': 0.0
    }
    for trafficInfractionId in traffic_infraction["infractions"]:
        trafficInfractionId = int(trafficInfractionId)
        traffic_infraction["points"] += infractions[trafficInfractionId]["points"]
        traffic_infraction["totalPrice"] += infractions[trafficInfractionId]["price"]

    traffic_infractions[traffic_infraction["car_sign"]] = traffic_infraction
    traffic_infractions_command = input()

traffic_infractions_keys = sorted(traffic_infractions.keys())
for car_sign in traffic_infractions_keys:
    trafficInformation = traffic_infractions[car_sign]
    print(car_sign, "{:.2f}".format(trafficInformation["totalPrice"]), trafficInformation["points"])