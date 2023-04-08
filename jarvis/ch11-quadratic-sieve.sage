from tabulate import tabulate

rows = []

#N = 227179
N = 21311
B = 25
loop_range = 18

prime_values = prime_range(B)

table = []
root_N = round(sqrt(N).n())
index = {}
for x in range(root_N - loop_range, root_N + loop_range):
    xsq = x^2 - N
    factors = list(factor(xsq))

    # Check if it is B-smooth
    last_factor = factors[-1][0]
    if last_factor >= B:
        continue

    vector = [0]*(len(prime_values) + 1)
    if xsq < 0:
        vector[0] = 1
    for i, prime in enumerate(prime_values):
        i += 1
        ff = [(p, m) for p, m in factors if p == prime]
        # There should be a single or no matches
        assert len(ff) in (0, 1)
        if not ff:
            continue
        _, m = ff[0]

        vector[i] = m % 2

    table.append([x, xsq, factor(xsq), vector])
    index[x] = vector

print(tabulate(table))

#N = 227179
#x_values = [477, 482, 493]

N = 21311
x_values = [132, 144]

selected_vectors = [index[x] for x in x_values]
# Check they sum to zero mod 2
for i in range(len(prime_values) + 1):
    entry = 0
    for sel in selected_vectors:
        entry = (entry + sel[i]) % 2
    assert entry == 0

x = reduce(operator.mul, x_values, 1) % N
# We can easily construct this using factorization from earlier but
# lets be lazy and use sqrt here
y = sqrt(reduce(lambda y, x: y * (x^2 - N), x_values, 1))
assert x^2 % N == y^2 % N
assert x % N != y % N
assert x % N != -y % N
print(f"{x}² ≡ {y}² (mod {N})")

# ⇒ N | (x + y)(x - y)
a = gcd(N, x + y)
b = gcd(N, x - y)
assert N == a*b
print(f"{N} = {a} × {b}")

