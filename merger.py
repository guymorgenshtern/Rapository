import read
import percentage
import test

read.clean_square("data.txt")
word_list = read.generate_word_list("data.txt")
prob_table = read.generate_prob_table("data.txt")

#Read markov from 'database' file
store_file = open("store.txt")
store_lines = store_file.readlines()

#First line in file is list of words
store_word_list = store_lines[0].split()
store_matrix = []
for row in store_lines[1:]:
    matrix_row = []
    for x in row.split():
        matrix_row.append(int(x))
    store_matrix.append(matrix_row)

#TIME TO MERGE!!!

#Update word list
new_word_list = []
for word in store_word_list:
    new_word_list.append(word)
for word in word_list:
    if word not in new_word_list:
        new_word_list.append(word)

#Update table
new_table = []
for i in range(len(new_word_list)):
    new_row = []
    for j in range(len(new_word_list)):
        new_row.append(0)
    new_table.append(new_row)

for y in range(len(store_matrix)):
    row = store_matrix[y]
    for x in range(len(row)):
        new_table[new_word_list.index(store_word_list[y])][new_word_list.index(store_word_list[x])] += store_matrix[y][x]


for y in range(len(prob_table)):
    row = prob_table[y]
    for x in range(len(row)):
        print(word_list[y])
        print(word_list[x])
        print()
        new_table[new_word_list.index(word_list[y])][new_word_list.index(word_list[x])] += prob_table[y][x]

print("NOW")
print(new_table)

store_file.close()
store_file = open("store.txt", "w")
set_string = ""
for word in new_word_list:
    set_string += word + " "
store_file.write(set_string + "\n")
for y in new_table:
    row = ""
    for x in y:
        row += str(x) + " "
    store_file.write(row + "\n")