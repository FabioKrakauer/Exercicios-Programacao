CHEESE_WEIGHT = 50
BURGUER_WEIGHT = 100
HAM_WEIGHT = 50

CHEESE_QUANTITY = 2
BURGUER_QUANTITY = 1
HAM_QUANTITY = 1

def gramsToKilograms(grams):
    return grams / 1000

def calculateSandwichsWeight(sandwichs):
    cheeseTotalWeight = sandwichs * CHEESE_QUANTITY * CHEESE_WEIGHT
    hamTotalWeight = sandwichs * HAM_QUANTITY * HAM_WEIGHT
    burguerTotalWeight = sandwichs * BURGUER_QUANTITY * BURGUER_WEIGHT
    
    weights = [gramsToKilograms(cheeseTotalWeight), gramsToKilograms(hamTotalWeight), gramsToKilograms(burguerTotalWeight)]
    return weights

sandwichs = int(input())
weights = calculateSandwichsWeight(sandwichs)
print(weights[0], 'kg de queijo')
print(weights[1], 'kg de presunto')
print(weights[2], 'kg de carne')