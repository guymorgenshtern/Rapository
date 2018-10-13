import read
import test

word_list = read.generate_word_list("data.txt")
prob_table = read.generate_prob_table("data.txt")

test.generate_text(word_list,prob_table)

for i in prob_table:
    print("a")
    sum = 0
    for j in i:
        sum += j
    print(sum)
    if not sum == 0:
        for j in i:
            print((j / sum), end=" ")

