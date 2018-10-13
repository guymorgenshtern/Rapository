import read
import test
import percentage


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

chorus = read.filter(test.generate_text(word_list, post_table, 6))
verses = []
for i in range(6):
    verses.append(read.filter(test.generate_text(word_list, post_table, 6)))

#


#




for v in verses:
    print(v)
    print()
    print(chorus)