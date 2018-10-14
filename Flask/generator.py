import read
import test
import percentage

def create():
    #Read markov from 'database' file
    store_file = open("store.txt")
    store_lines = store_file.readlines()

    #First line in file is list of words
    word_list = store_lines[0].split()
    prob_table = []
    for row in store_lines[1:]:
        table_row = []
        for x in row.split():
            table_row.append(int(x))
        prob_table.append(table_row)


    post_table = percentage.generate_percent(prob_table)
    print("Chorus Repetition")
    chorus_rep = 6#int(input())
    print("Chorus Length ")
    chorus_length = 4#int(input())

    print("Verse Length ")
    verse_length = 6#int(input())

    chorus_section = True

    chorus = read.filter(test.generate_text(word_list, post_table, chorus_length))

    #extra_sections = abs(chorus_rep - verse_rep)

    song = ""

    for j in range(chorus_rep * 2):

        if chorus_section == True:
            print("Chorus: ")
            print(" ")
            print(chorus)
            song += chorus
            chorus_section = False
        else:
            verses = read.filter(test.generate_text(word_list, post_table, verse_length))
            print("Verse: ")
            print(" ")
            print(verses)
            song += verses
            chorus_section = True
    return song


