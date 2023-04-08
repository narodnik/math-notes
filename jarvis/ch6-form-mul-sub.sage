var("a b c d")

# D = -56

f_e = (1, 0, 14)
f_a = (2, 0, 7)
f_b = (3, 2, 5)
f_c = (3, -2, 5)

def sub_remainder(f1, f2, f3, b1, b2):
    m = b1[0]*a*c + b1[1]*a*d + b1[2]*b*c + b1[3]*b*d
    n = b2[0]*a*c + b2[1]*a*d + b2[2]*b*c + b2[3]*b*d
    F1 = f1[0]*a^2 + f1[1]*a*b + f1[2]*b^2
    F2 = f2[0]*c^2 + f2[1]*c*d + f2[2]*d^2
    F3 = f3[0]*m^2 + f3[1]*m*n + f3[2]*n^2
    return (F1*F2 - F3).expand()

# f_a · f_a = f_e
assert sub_remainder(f_a, f_a, f_e, (2, 0, 0, 7), (0, 1, -1, 0)) == 0
# f_b · f_b = f_e
assert sub_remainder(f_b, f_b, f_e, (-3, -1, -1, -5), (0, 1, -1, 0)) == 0
# f_c · f_c = f_e
assert sub_remainder(f_c, f_c, f_e, (3, -1, -1, 5), (0, -1, 1, 0)) == 0


try:
    b1, b2
except NameError:
    b1 = [0, 0, 0, 0]
    b2 = [0, 0, 0, 0]

print(sub_remainder(f_c, f_c, f_e, b1, b2))

# attach this file in sage
# modify b1, b2
# save file, rinse & repeat

