memo = []

def bernoulli(n):
    if n < len(memo):
        return memo[n]

    for i in range(len(memo), n + 1):
        if i == 0:
            memo.append(1)
            continue

        B = 0
        for j, B_j in enumerate(memo):
            B -= binomial(i + 1, j) * B_j
        B /= binomial(i + 1, i)
        memo.append(B)

    return memo[n]

def is_regular(p):
    for k in range(2, p - 3 + 1, 2):
        B = bernoulli(k)
        if B.numerator() % p == 0:
            return False
    return True

regular = []
irregular = []
for p in primes_first_n(30):
    if is_regular(p):
        regular.append(p)
    else:
        irregular.append(p)
print("Regular:")
print(regular)
print()
print("Irregular:")
print(irregular)
