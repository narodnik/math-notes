```
sage: v = matrix([[1, a, b, a*b, b^2, a*b^2]]).transpose()
sage: v
[    1]
[    a]
[    b]
[  a*b]
[  b^2]
[a*b^2]
sage: A = matrix([
....:     [0, 1, 0, 0, 0, 0],
....:     [2, 0, 0, 0, 0, 0],
....:     [0, 0, 0, 1, 0, 0],
....:     [0, 0, 2, 0, 0, 0],
....:     [0, 0, 0, 0, 0, 1],
....:     [0, 0, 0, 0, 2, 0]
....: ])
sage: A*v
[    a]
[    2]
[  a*b]
[  2*b]
[a*b^2]
[2*b^2]
sage: B = matrix([
....:     [0, 0, 1, 0, 0, 0],
....:     [0, 0, 0, 1, 0, 0],
....:     [0, 0, 0, 0, 1, 0],
....:     [0, 0, 0, 0, 0, 1],
....:     [2, 0, 0, 0, 0, 0],
....:     [0, 2, 0, 0, 0, 0]
....: ])
sage: B*v
[    b]
[  a*b]
[  b^2]
[a*b^2]
[    2]
[  2*a]
sage: A_B = A + B
sage: matrix.identity(6)
[1 0 0 0 0 0]
[0 1 0 0 0 0]
[0 0 1 0 0 0]
[0 0 0 1 0 0]
[0 0 0 0 1 0]
[0 0 0 0 0 1]
sage: x*matrix.identity(6)
[x 0 0 0 0 0]
[0 x 0 0 0 0]
[0 0 x 0 0 0]
[0 0 0 x 0 0]
[0 0 0 0 x 0]
[0 0 0 0 0 x]
sage: ( x*matrix.identity(6) - A_B ).determinant()
x^6 - 6*x^4 - 4*x^3 + 12*x^2 - 24*x - 4
```

# Liouville (theorem 2.3)

$$ |α - p/q| > 1 > 1/qⁿ $$
So lets take $|a - p/q| ≤ 1$.

Mean value theorem gives us $f'(γ)$.

$qⁿf(p/q)$ is an integer means $|f(p/q)| ≥ 1/qⁿ$.
$$ α < γ < p/q, |α - p/q| ≤ 1 ⇒ |γ - α| < 1 $$

Then observe
$$ |f(α) - f(p/q)| < C |α - p/q| < C $$
So then $f'(γ) < C = 1/c₀$.

Combine these
$$ \left|α - \frac{p}{q}\right| = \left|\frac{p/q}{f'(γ)}\right| > \frac{c₀}{qⁿ} $$
