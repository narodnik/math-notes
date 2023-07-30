var("x")
B = matrix([
    [1, x, 1, x],
    [1, 0, x, 1],
    [0, x, 1, 1],
    [1, 0, 1, 0]
])

def det(B, start=True):
    m = B.nrows()
    n = B.ncols()
    assert m == n

    # det((a)) = a
    if n == 1:
        return B[0][0]

    d = 0
    for r in range(n):
        # Remove row r
        sub_B = matrix(row[1:] for i, row in enumerate(B) if i != r)
        b = (-1)^r * B[r][0]
        if b == 0:
            continue
        if start:
            print(f"d += {b} * det(")
            print(f"{sub_B}")
            print(f")")
        d += b * det(sub_B, start=False)
    return d

m = B.nrows()
n = B.ncols()
print(f"B ∈ K^({m}×{n})")
assert det(B) == B.determinant()

