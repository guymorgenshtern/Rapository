#To generate text from table of probabilities

#import random function
from random import random as rand

END_OF_LINE = "&&&"


def generate_text(items, data, max_lines):
    #Output text
    out_text = ""
    #List of 'words' (for index value)
    #items = ["A", "B", "C", "D", "&&&"]
    #Pre-set chain data
    #The value represents the chance to go from the value of the row index
    #to the value of the column index
    #Index value is determined by items list
    #data = [[0.0, 1.0, 0.0, 0.0, 0.0],
    #         [0.0, 0.0, 1.0, 0.0, 0.0],
    #         [0.5, 0.0, 0.2, 0.0, 0.3],
    #         [0.0, 0.0, 1.0, 0.0, 1.0],
    #         [0.0, 0.5, 0.0, 0.5, 0.0]
    #         ]

    #The current index
    state = items.index(END_OF_LINE)

    lines = 0
    while lines < max_lines:
        #Add current state to output
        if not items[state] == END_OF_LINE:
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
        #Immediately ends when end-of-line character is chosen
        if items[state] == END_OF_LINE:
            out_text += "\n"
            lines += 1
        #Add space otherwise
        else:
            out_text += " "

    return out_text
