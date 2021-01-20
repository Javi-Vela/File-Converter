document = input('input absolute path: ')
i = 0 
p = 0
array = [] 
array2 = [3*[0]]

#read t
f = open(document)
for line in f:
	array.append(1)
	array2.append(1)
	array[i] = line
	i = i+1
f.close()

for j in range(1, i):
	separador = ","
	array2[p] = array[j].split(separador)
	p = p+1

for k in range(0, i, 1):
	print ("email is: "+array2[k][0])
	print ("user is: "+array2[k][1])
	print ("password is: "+array2[k][2])
