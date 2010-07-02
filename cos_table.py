import math

print ";cosines table:"

for i in range(8):
	values = []
	for j in range(8):
		values.append(str(int(math.cos((8*i+j)*2*3.1415/64)*128 + 127)))
	print "\tdb " + ", ".join(values)
