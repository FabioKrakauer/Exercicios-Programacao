value = input().split()
interface = value[0]
ia = value[1]
encap = value[2]
indent = value[3]
structs = value[4]

req1 = False
req2 = False
req3 = False

if interface == '1' or ia == '1':
    req1 = True
if encap == '1' and indent == '1':
    req2 = True
if structs == '1':
    req3 = True

if req1 == True and req2 == True and req3 == True:
    print('AVALIADO')
else:
    print('0')