import read
import test

read.clean_square("data.txt")
word_list = read.generate_word_list("data.txt")
prob_table = read.generate_prob_table("data.txt")

for i in range(len(prob_table)):
    sigma = 0
    for j in range(len(prob_table[i])):
        sigma += prob_table[i][j]
    if not sigma == 0:
        for j in range(len(prob_table[i])):
            prob_table[i][j] /= sigma

test.generate_text(word_list, prob_table)