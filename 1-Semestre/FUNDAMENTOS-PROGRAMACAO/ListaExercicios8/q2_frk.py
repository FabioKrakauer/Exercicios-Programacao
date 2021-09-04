MAX_VITAMIN = 130
MIN_VITAMIN = 110

foods = dict()

food_information = input()
while food_information != '*':
    food_datails = food_information.split(",")
    food = {
        'name': food_datails[0],
        'vitaminQuantity': int(food_datails[1])
    }
    foods[food['name']] = food
    food_information = input()

food_insert = int(input())
while food_insert != 0:
    totalVitaminConsumed = 0
    for quantity in range(food_insert):
        consumed_food_command = input()
        consumed_food_list = consumed_food_command.split()
        consumed_food_quantity = int(consumed_food_list[0])
        consumed_food_name_list = consumed_food_list[1:]
        food_name = " ".join(consumed_food_name_list)
        food_dict = foods.get(food_name, {'vitaminQuantity': 0})
        totalVitaminConsumed += consumed_food_quantity * food_dict["vitaminQuantity"]
    
    if totalVitaminConsumed > MAX_VITAMIN:
        restVitamin = totalVitaminConsumed - MAX_VITAMIN
        print("Menos", restVitamin, "mg")
    elif totalVitaminConsumed < MIN_VITAMIN:
        plusVitamin = MIN_VITAMIN - totalVitaminConsumed
        print("Mais", plusVitamin, "mg")
    else:
        print(totalVitaminConsumed, "mg")
    food_insert = int(input())