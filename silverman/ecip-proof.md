---
header-includes: |
    - \newcommand{\div}{\operatorname{div}}
---

# Weil Reciprocity

$$ f(\div(g)) = g(\div(f)) $$

```python
sage: E = EllipticCurve([0, 17])
sage: E(2, 5) + E(4, 9) + E(-2, -3)
(0 : 1 : 0)
sage: E(-1, 4) + E(8, 23) + E(-206/81, 541/729)
(0 : 1 : 0)
sage: var("x y z")
(x, y, z)
sage: f = y - 2*x - z
sage: g = 9*y - 19*x - 55*z
sage: f(x=2, y=5, z=1), f(x=4, y=9, z=1), f(x=-2, y=-3, z=1)
(0, 0, 0)
sage: g(x=-1, y=4, z=1), g(x=8, y=23, z=1), g(x=-206/81, y=541/729, z=1)
(0, 0, 0)
sage: f(x=0, y=1, z=0), g(x=0, y=1, z=0)
(1, 9)
sage: f(x=2, y=5, z=1) * f(x=4, y=9, z=1) * f(x=-2, y=-3, z=1) / 1
0
sage: g(x=-1, y=4, z=1) * g(x=8, y=23, z=1) * g(x=-206/81, y=541/729, z=1) / 9^3
0
sage: g(x=2, y=5, z=1) * g(x=4, y=9, z=1) * g(x=-2, y=-3, z=1) / g(x=0, y=1, z=0)^3
-35200/243
sage: f(x=-1, y=4, z=1) * f(x=8, y=23, z=1) * f(x=-206/81, y=541/729, z=1) / f(x=0, y=1
....: , z=0)^3
35200/243
```

## Proof

Let $z ∈ ℙ¹$ and $f_*⟨g⟩(z) = g(T₁) ⋯ g(T_n)$ where $\{ T₁, …, T_n \} = f⁻¹(z)$ is the fiber for $z$.

We claim that $f_*⟨g⟩(\div z) = g(\div f)$.
$$ f⁻¹(z) = \{ T₁, …, T_n \} $$
$$ f_*⟨g⟩(z) = g(T₁) ⋯ g(T_n) $$
But $\div z = [0] - [∞]$
$$ f_*⟨g⟩(0) = g(T₁) ⋯ g(T_n) $$
where $T_i ∈ f⁻¹(0)$, which are the zeros of $f ⇒ f_*⟨g⟩([0] - [∞]) = g(\div f)$.

Likewise $z(\div f_*⟨g⟩) = f(\div g)$ which using the argument above is easy to see.

$$ f_*⟨g⟩([0] - [∞]) = f_*⟨g⟩(0) / f_*⟨g⟩(∞) = z(\div f_*⟨g⟩) $$
By the fact $P/Q (\div z) = (p₀/q₀)/(p_m/q_m) ⇒ z(\div P/Q) = ($ product of roots of $P / ($ product of roots of $Q)$.

# Divisor Construction

We can either use the Miller loop, or Mumford polynomial representation.
Both are trivial.

We end up with a polynomial $f$ that represents our divisor.

# Proving Interpolation

Let $f ∈ K(C)^×$, with roots $P₁, …, P_n$. Then the norm

$$ f(P) f(-P) = (x(P) - x(P₁)) ⋯ (x(P) - x(P_n)) $$

Canonical form is $f(x, y) = v(x) + yw(x)$.
The conjugate of $f$ is $\bar{f} = v(x) - yw(x)$ and the norm is

$$ N_f = f·\bar{f} = v(x)² - (x³ + Ax + B)w(x)² $$

For $r = \frac{f}{g} ∈ K(C)$
$$ \frac{f}{g} = \frac{fg̅}{gg̅} = \frac{fg̅}{N_g} $$

But this norm also counts $-P$ which we want to disallow.
We instead use the resultant.

