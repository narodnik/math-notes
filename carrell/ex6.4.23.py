#           111
# 123   ->  111
#           111

#           001
# 586   ->  010
# 245       100

#           100
# 159   ->  010
#           001

#           001
# 357   ->  010
#           100

#           101
# 1379  ->  000
#           101

#           010
# 547   ->  100
# 249       001

def modify(grid, idx):
    if idx < 1 or idx > 9:
        return
    i = (idx - 1)//3
    j = (idx - 1)%3
    for k in range(3):
        # row
        v = grid[i][k]
        grid[i][k] = 1 - v

        # don't do v twice for (i, j)
        if k == i:
            continue
        # col
        v = grid[k][j]
        grid[k][j] = 1 - v

def zero_grid():
    return [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
    ]

# Ensure the group is commutative
for a in range(1, 10):
    for b in range(1, 10):
        G = zero_grid()
        modify(G, a)
        modify(G, b)

        H = zero_grid()
        modify(H, b)
        modify(H, a)

        assert G == H

# Since every element is its own inverse, and
# the group is commutative, there are 2^9 possible
# values.
entire_group = []
for t in range(2**9):
    digits = [int(c) for c in f"{t:09b}"]
    X = zero_grid()
    for a, exp in enumerate(digits, start=1):
        if exp:
            modify(X, a)
    entire_group.append(X)

def is_result(X):
    for i in range(3):
        for j in range(3):
            if i == j == 0:
                if X[0][0] != 1:
                    return False
            else:
                if X[i][j] != 0:
                    return False
    return True

for X in entire_group:
    if is_result(X):
        print(X)
        print()

grid = zero_grid()
while True:
    for row in grid:
        print(row)
    print()

    choice = input("> ")
    if choice == "x":
        break
    elif choice == "r":
        grid = zero_grid()
        continue

    for digit in choice:
        index = int(digit)
        modify(grid, index)

