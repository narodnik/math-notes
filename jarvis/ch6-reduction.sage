# Normalization:
# (1 1)
# (0 1)
def rule1(f):
    a, b, c = f
    return (a, b + 2*a, c + b + a)

# Inverse
# (1 -1)
# (0  1)
def rule2(f):
    a, b, c = f
    return a, b - 2*a, c - b + a

# Reduction:
# (0  1)
# (-1 0)
def rule3(f):
    a, b, c = f
    return c, -b, a

f = (7, -24, 21)
#f = (6, -7, 8)
#f = (13, 12, 11)
#f = (43, 71, 67)

M = matrix([
    [1, 0],
    [0, 1]
])
print(f)
while True:
    a, b, c = f

    if b <= -a:
        print("b <= -a")
    if b > a:
        print("b > a")

    if a > c:
        print("a > c")
    if a == c and b < 0:
        print("a = c and b < 0")

    choice = input("> ")
    match choice:
        case "1":
            print("(a, b, c) → (a, b + 2a, c + b + a)")
            f = rule1(f)

            M1 = matrix([
                [1, 1],
                [0, 1]
            ])
            M = M1*M
        case "2":
            print("(a, b, c) → (a, b - 2a, c - b + a)")
            f = rule2(f)

            M2 = matrix([
                [1, -1],
                [0, 1]
            ])
            M = M2*M
        case "3":
            print("(a, b, c) → (c, -b, a)")
            f = rule3(f)

            M3 = matrix([
                [0, 1],
                [-1, 0]
            ])
            M = M3*M
    print(f)
    print(M)
    print()

