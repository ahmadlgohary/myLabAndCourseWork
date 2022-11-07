I edited the towersMain.c file to take aruguments as parameters and add if statements for 
exceptions and included #include <stdio.h> library so I can print out an error message
when invalide arguments are passed
Everything Works Fine

Question 1: 
	1.	Moving 5 rings from tower 2 to tower 3 will inovke a recursive call to tower().
		the spare tower becomes the destination for the first recursion and the inital tower
		stays the starting/from tower "towers(n-1, from, spare);" so: towers(4, 2, 1);
 
	2. 	n+1 so  6 recussions

	3. 	output is in junk3(R1Q3)
		output:
			2 3
			2 1
			3 1
			2 3
			1 2
			1 3
			2 3
			2 1
			3 1
			3 2
			1 2
			3 1
			2 3
			2 1  
			3 1
			2 3
			1 2
			1 3
			2 3
			1 2
			3 1
			3 2
			1 2
			1 3
			2 3
			2 1
			3 1
			2 3
			1 2
			1 3
			2 3

	4. 	same as question 1 but n=4 (first recurssion of towers(4, 2, 1);)so the spare 
		tower, is the tower that is neither the destination or the initial, which will be 
		tower 3 in this case then n-1 is 3 and the from tower stays the same thus
		"towers(3, 2, 3);"

Question 2:

	1. 	255 lines

