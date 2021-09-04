END_ACTION = 'FIM'
actions = dict()

action_code = input().upper()
while action_code != END_ACTION:
    description = input()
    value = float(input())
    purchased_actions = int(input())
    action = {
        'code': action_code,
        'description': description,
        'value': value,
        'purchased': purchased_actions,
        'history': [value]
    }
    actions[action_code] = action
    action_code = input().upper()

check_action_code = input().upper()
while check_action_code != END_ACTION:
    actual_value = float(input())
    action = actions.get(check_action_code, None)
    actions[check_action_code]["history"].append(actual_value)
    history = actions[check_action_code]["history"][-10:]
    history_average = sum(history) / len(history)

    if actual_value > history_average or actual_value > history[-2]:
        print('Venda')
    else:
        print('Compra')
    check_action_code = input().upper()