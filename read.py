read_file = open("data.txt")

words = []
lines = read_file.readlines()
for line in lines:
    word_set = line.split()
    for word in word_set:
        if not word in words:
            words.append(word)

#Add end of line identifier
words.append("&&&")
print(words)

#init array
prob = []
for i in range(len(words)):
    row = []
    for j in range(len(words)):
        row.append(0)
    prob.append(row)

for line in lines:
    word_set = line.split()
    for i in range(len(word_set)):
        #Link word to next word in phrase
        if not i == len(word_set) - 1:
            prob[words.index(word_set[i])][words.index(word_set[i + 1])] += 1
        #If it is the last word, connect to end of line character
        else:
            prob[words.index(word_set[i])][len(words) - 1] += 1
print(prob)