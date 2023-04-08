def is_normal(f):
    a, b, c = f
    return -a < b <= a

def is_reduced(f):
    a, b, c = f
    return is_normal(f) and (a < c or (a == c and b >= 0))

def reduce(f):
    a, b, c = f
    while not is_reduced((a, b, c)):
        if a > c or (a == c and b < 0):
            a, b, c = c, -b, a
        elif a < c:
            if b <= -a:
                a, b, c = a, b + 2*a, c + b + a
            else:
                assert b > a
                a, b, c = a, b - 2*a, c - b + a
        else:
            assert a == c and b >= 0
            a, b, c = a, b - 2*a, c - b + a
    return a, b, c

assert is_reduced((1, 0, 13))
assert not is_reduced((1, 2, 14))

def class_number(d):
    if d % 4 in (2, 3):
        D = 4*d
    else:
        D = d
    print(f"d = {d}, D = {D}")

    reduced_forms = set()

    for ac in range(ceil(-D/4), floor(-D/3 + 1)):
        # b² - 4ac = D
        b2 = D + 4*ac
        if not b2.is_square():
            continue
        b = sqrt(b2)
        # 0 < a ≤ c
        print(f"  ac = {ac}")
        for a in range(1, ac):
            c = ac/a
            if a > c:
                break
            if not c in ZZ:
                continue
            c = int(c)

            f = reduce((a, b, c))
            reduced_forms.add(f)
            print(f"    {f}")

            f = reduce((a, -b, c))
            reduced_forms.add(f)
            print(f"    {f}")

    h = len(reduced_forms)
    print(f"Class number = {h}")
    print()
    return h

assert class_number(-5) == 2
assert class_number(-13) == 2
assert class_number(-14) == 4
assert class_number(-19) == 1
assert class_number(-355) == 4
assert class_number(-371) == 8
assert class_number(-395) == 8
assert class_number(-271) == 11

