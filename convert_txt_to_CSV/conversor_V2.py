import csv
import json

document = input('input absolute path: ')
i = 0
out = []
with open('normal.txt') as csvfile:
	reader = csv.DictReader(csvfile)
	for row in reader:
		print("\nEmail is: "+row['EmailAddress'])
		print("User is: "+row['UserName'])
		print("Password is: "+row['Password'])	
		out.append(1)
		out[i] = json.dumps(row)
		i = i+1

f = open("normal.json", "w")
f.write(str(out))
f.close()
	
