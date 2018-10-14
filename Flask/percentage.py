def generate_percent(prob_table):
    for i in range(len(prob_table)):
        sigma = 0
        for j in range(len(prob_table[i])):
            sigma += prob_table[i][j]
        if not sigma == 0:
            for j in range(len(prob_table[i])):
                prob_table[i][j] /= sigma
    return prob_table

