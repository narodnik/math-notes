K = GF(2)

A1 = matrix([
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0]
])
A2 = matrix([
    [1, 1, 1],
    [0, 1, 0],
    [0, 1, 0]
])
A3 = matrix([
    [1, 1, 1],
    [0, 0, 1],
    [0, 0, 1]
])
A4 = matrix([
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0]
])
A5 = matrix([
    [0, 1, 0],
    [1, 1, 1],
    [0, 1, 0]
])
A6 = matrix([
    [0, 0, 1],
    [1, 1, 1],
    [0, 0, 1]
])
A7 = matrix([
    [1, 0, 0],
    [1, 0, 0],
    [1, 1, 1]
])
A8 = matrix([
    [0, 1, 0],
    [0, 1, 0],
    [1, 1, 1]
])
A9 = matrix([
    [0, 0, 1],
    [0, 0, 1],
    [1, 1, 1]
])

# Every entry can be written in the form
# X = a₁A₁ + ⋯ + a₉A₉ where a_i ∈ K₂

A = matrix(K, [
    # 1  2  3  4  5  6  7  8  9
    [ 1, 1, 1, 1, 0, 0, 1, 0, 0],   # 1 toggled
    [ 1, 1, 1, 0, 1, 0, 0, 1, 0],   # 2
    [ 1, 1, 1, 0, 0, 1, 0, 0, 1],   # 3
    [ 1, 0, 0, 1, 1, 1, 1, 0, 0],   # 4
    [ 0, 1, 0, 1, 1, 1, 0, 1, 0],   # 5
    [ 0, 0, 1, 1, 1, 1, 0, 0, 1],   # 6
    [ 1, 0, 0, 1, 0, 0, 1, 1, 1],   # 7
    [ 0, 1, 0, 0, 1, 0, 1, 1, 1],   # 8
    [ 0, 0, 1, 0, 0, 1, 1, 1, 1],   # 9
])

# Now we can use the vector to toggle states
#              1  2  3  4  5  6  7  8  9
x = vector(K, [1, 0, 0, 0, 0, 0, 0, 0, 0])
print(A*x)

# if we can toggle one then any configuration is possible
# and hence the matrix can be inverted.
# but it cannot be inverted, so toggling 1 is impossible

