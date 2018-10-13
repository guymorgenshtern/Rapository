#To generate text from table of probabilities

#import random function
from random import random as rand

#Output text
out_text = ""
#List of 'words' (for index value)
items = ["A", "B", "C", "D", "E"]
#Pre-set chain data
#The value represents the chance to go from the value of the row index
#to the value of the column index
#Index value is determined by items list
data = [[0.0, 0.0, 0.0, 0.0, 1.0],
        [0.0, 0.0, 1.0, 0.0, 1.0],
        [1.0, 0.0, 0.0, 0.0, 0.0],
        [0.0, 0.0, 1.0, 0.0, 1.0],
        [0.0, 0.5, 0.0, 0.5, 0.0]
        ]

#The current index
state = 0

for i in range(10):
    #Add current state to output
    out_text += items[state]
    #Generate fandom percent value
    r = rand()
    #Sum of all added chances
    combined = 0.0
    #Adds individual chances until it is greater
    #than value of r
    for y in range(len(items)):
        combined += data[state][y]
        #Sets next state
        if r < combined:
            state = y
            break

print(out_text)

