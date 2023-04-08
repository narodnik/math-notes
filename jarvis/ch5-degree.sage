# Measure [ℤ_K : ⟨√6 - 1⟩]
# K = ℚ(√2, √3)

# Change of basis from ℤ_K to ⟨α⟩
# This is going from our group G to subgroup H
A = matrix([
    [-1, 1, 0, -1],
    [5, -1, 1, 0],
    [0, 1, -1, 5],
    [-1, 0, 1, -1]
])
assert A.determinant() == 25

# The basis of G
B = matrix([
    [1, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [0, 0, 0, 1]
])

def listify(matrix):
    return [[cell for cell in row] for row in matrix]

# Add k*j to i
def add_row_multiple(A, modify_row_idx, k, other_row_idx):
    assert modify_row_idx != other_row_idx
    A = listify(A)
    for i in range(4):
        for j in range(4):
            if i == modify_row_idx:
                A[i][j] += k*A[other_row_idx][j]
    return matrix(A)

def add_col_multiple(A, modify_col_idx, k, other_col_idx, basis):
    assert modify_col_idx != other_col_idx
    basis = listify(basis)
    A = listify(A)
    for i in range(4):
        for j in range(4):
            if j == modify_col_idx:
                A[i][j] += k*A[i][other_col_idx]
    basis[modify_col_idx][other_col_idx] -= k
    return matrix(basis), matrix(A)

# Now we apply these operations to diagonalize A
# We can swap columns and rows quite easily :)

def swap_row(A, i, j):
    A = add_row_multiple(A, i,  1, j)
    A = add_row_multiple(A, j, -1, i)
    A = add_row_multiple(A, i,  1, j)
    return A

def swap_col(A, i, j, basis):
    basis, A = add_col_multiple(A, i,  1, j, basis)
    basis, A = add_col_multiple(A, j, -1, i, basis)
    basis, A = add_col_multiple(A, i,  1, j, basis)
    return basis, A

print("Start:")
print(A)
print()

# We can play sudoku but lets solve it algorithmically.

# Swap rows/cols until top left is nonzero.
# Then start with 2x2 square, eliminate nondiagonals
# We proceed inductively, using rows/cols to eliminate rows/cols on n + 1

# n = 2

A = add_row_multiple(A, 1, 5, 0)
print("A[1] += 5 A[0]")
print(A)
print()

B, A = add_col_multiple(A, 1, 1, 0, B)
print("A[:][1] += A[:][0]")
print(A)
print()

# n = 3

# Cannot eliminate 4 with 1 so swap the rows
A = swap_row(A, 1, 2)
print("swap_row(A[1], A[2])")
print(A)
print()

A = add_row_multiple(A, 2, 4, 1)
print("A[2] += 4 A[1]")
print(A)
print()

B, A = add_col_multiple(A, 2, 1, 1, B)
print("A[:][2] += A[:][1]")
print(A)
print()

# n = 4

A = add_row_multiple(A, 3, -1, 0)
print("A[3] -= A[0]")
print(A)
print()

A = add_row_multiple(A, 3, 1, 1)
print("A[3] += A[1]")
print(A)
print()

B, A = add_col_multiple(A, 3, -1, 0, B)
print("A[:][3] -= A[:][0]")
print(A)
print()

B, A = add_col_multiple(A, 3, -5, 1, B)
print("A[:][3] -= 5 A[:][1]")
print(A)
print()

B, A = add_col_multiple(A, 3, 5, 2, B)
print("A[:][3] += 5 A[:][2]")
print(A)
print()

# Done!

