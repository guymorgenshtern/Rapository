#read_file = open("data.txt")

def clean_square(file_name):
    edit_file = open(file_name, "r")
    text = edit_file.readlines()
    edit_file.close()
    edit_file = open(file_name, "w")
    for line in text:
        if "[" in line or "]" in line or line.strip() == '':
            pass
        else:
            edit_file.write(line)
    edit_file.close()

def filter(text):
    # Replace swear words:
    text = text.replace("fuck", "f***")
    text = text.replace("shit", "s***")
    text = text.replace("ass ", "a** ")
    text = text.replace("bitch", "b****")
    text = text.replace("nigg", "n***")
    text = text.replace("fag", "f**")
    return text

def generate_word_list(file_name):
    words = []
    read_file = open(file_name)
    lines = read_file.readlines()
    for line in lines:
        word_set = line.split()
        for word in word_set:
            if not word in words:
                words.append(word)

    #Add end of line identifier
    words.append("&&&")
    read_file.close()
    return words


#init array
def generate_prob_table(file_name):
    words = generate_word_list(file_name)
    read_file = open(file_name)
    lines = read_file.readlines()
    prob = []
    for i in range(len(words)):
        row = []
        for j in range(len(words)):
            row.append(0)
        prob.append(row)

    for line in lines:
        word_set = line.split()
        prob[words.index("&&&")][words.index(word_set[0])] += 1
        for i in range(len(word_set)):
            #Link word to next word in phrase
            if not i == len(word_set) - 1:
                prob[words.index(word_set[i])][words.index(word_set[i + 1])] += 1
            #If it is the last word, connect to end of line character
            else:
                prob[words.index(word_set[i])][len(words) - 1] += 1
    read_file.close()
    return prob

#generate_prob_table("data.txt")