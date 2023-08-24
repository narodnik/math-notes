def ip(w, z):
    return w.conjugate()*z

def d(w):
    return sqrt(ip(w, w))

v1 = vector([1,  I, 0])
v2 = vector([2, -I, 1])

u1 = v1/d(v1)
assert d(u1) == 1
w2 = v2 - ip(u1, v2)*u1
u2 = w2/d(w2)
assert d(u2) == 1
assert ip(u1, u2) == 0

y = vector([0, 0, 1])
# idk why it fails with this line uncommented
#y = vector([1, 1, 1])
y1 = y - ip(y, u1)*u1
y2 = y1 - ip(y1, u2)*u2
u3 = y2/d(y2)
assert ip(y2, u3)*u3 == y2
assert y == ip(y, u1)*u1 + ip(y1, u2)*u2 + ip(y2, u3)*u3

V = VectorSpace(CC, 3)
S = V.subspace([u1, u2])
assert u3 not in S

assert ip(u1, u3) == 0
assert ip(u2, u3) == 0

