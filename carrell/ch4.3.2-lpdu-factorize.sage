# Downward transvection
A = matrix([
    [0, 4, 3, 2, 1],
    [0, 3, 7, 4, 2],
    [5, 2, 1, 7, 2],
    [2, 4, 7, 3, 1],
    [8, 1, 4, 6, 7]
])
L = matrix([
    [1, 0, 0, 0, 0],
    [0, 1, 0, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, -2/5, 1, 0],
    [0, 0, -8/5, 0, 1]
])
assert tuple((L*A).column(0)) == (0, 0, 5, 0, 0)

# Rightward transvection
A = matrix([
    [0, 0, 0, 2, 1],
    [0, 0, 0, 4, 2],
    [0, 0, 5, 7, 2],
    [0, 4, 0, 0, 0],
    [8, 0, 0, 0, 0]
])
U = matrix([
    [1, 0, 0, 0, 0],
    [0, 1, 0, 0, 0],
    [0, 0, 1, -7/5, -2/5],
    [0, 0, 0, 1, 0],
    [0, 0, 0, 0, 1]
])
assert tuple((A*U).row(2)) == (0, 0, 5, 0, 0)

A = matrix([
    [0,   2, -2],
    [0,   4, -5],
    [-1, -2, -1]
])

def first_nonzero_col(A, start_col):
    for j in range(start_col, A.ncols()):
        for i, a in enumerate(A.column(j)):
            if a != 0:
                return (i, j, a)
    return None

PD = A
L = U = matrix.identity(QQ, A.ncols())
j = -1
while (ij := first_nonzero_col(PD, j+1)) is not None:
    ijd = first_nonzero_col(PD, j+1)
    i, j, d = ijd

    L_i = matrix.identity(QQ, PD.ncols())
    # Annihilate those below
    for ii, a in enumerate(PD.column(j)[i+1:], start=i+1):
        L_i[ii, i] = -a/d
    L = L_i*L

    U_i = matrix.identity(QQ, PD.nrows())
    # Annihilate those to the right
    for jj, a in enumerate(PD.row(i)[j+1:], start=j+1):
        U_i[j, jj] = -a/d
    U = U*U_i

    PD = L_i*PD*U_i

L = L^-1
U = U^-1
assert A == L*PD*U

# Now decompose PD
P = []
D = []
for i, col in enumerate(PD.transpose()):
    P.append(1 if p else 0 for p in col)
    # hacky trick, we only care about the value
    v = sum(col)
    D.append([0]*i + [v] + [0]*(PD.ncols() - i - 1))
P = matrix(P).transpose()
D = matrix(D).transpose()
assert P*D == PD

assert A == L*P*D*U

