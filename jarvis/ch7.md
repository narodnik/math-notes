---
header-includes: |
    - \usepackage{mathrsfs}
    - \usepackage{mathtools}
    - \usepackage{extpfeil}
    - \DeclareMathOperator\ker{ker}
    - \DeclareMathOperator\ord{ord}
    - \DeclareMathOperator\cl{cl}
    - \DeclareMathOperator\gcd{gcd}
    - \DeclareMathOperator\lcm{lcm}
    - \DeclareMathOperator\char{char}
    - \DeclareMathOperator\max{max}
    - \DeclareMathOperator\ran{ran}
    - \newcommand{\mod}[1]{\ (\mathrm{mod}\ #1)}
    - \newcommand{\repr}[1]{\overline{#1}}
    - \newcommand{\√}[1]{\sqrt{#1}}
---

# No Integer Solutions for $x³ = y² + k$

*Suppose $k = 1, 2 \mod{4}$, that $k$ is squarefree, and $k$ is not of the form
$3t² ± 1$ for some $t ∈ ℤ$.*

*Also assume $3 ∤ \cl(ℚ(\√{-k}))$.*

*Then $x³ = y² + k$ has no integer solution.*

## $x$ is Odd

We start by brute-forcing all possible values mod 4 for $x, y$.

```python
sage: for x in range(4):
....:     for y in range(4):
....:         if (x^3 - (y^2 + 1)) % 4 == 0:
....:             print(x, y)
....:             
1 0
1 2
sage: for x in range(4):
....:     for y in range(4):
....:         if (x^3 - (y^2 + 2)) % 4 == 0:
....:             print(x, y)
....:             
3 1
3 3
```

So in both cases $x$ is odd.

## $(x, y)$ are Coprime

Let $p | (x, y)$ then $p | x³ - y²$ so $p|k$.

We also see $p³|x³ ⇒ p²|x³$ but $p² ∤ k$ since $k$ is squarefree, so $p² ∤ y² + k$.

Hence $(x, y)$ are coprime.

## $y + \√{-k}$ and $y - \√{-k}$ are in the Same Ideal

$$x³ = (y + \√{-k})(y - \√{-k})$$
Suppose there is a prime ideal $𝔭$ such that $(y ± \sqrt{-k}) ∈ 𝔭$ which means they are both coprime.
This means $x³ ∈ 𝔭 ⇒ x ∈ 𝔭$, also by summing the ideals we see also $2y ∈ 𝔭$.
Since $x$ is odd, 2 is not in $𝔭$ otherwise it would be the whole ring.
But $𝔭$ is prime $⇒ y ∈ 𝔭$. But both $x, y$ are coprime so this cannot be true.

## Both Ideals are Principal

Next we see both ideals are principal.
$$⟨y + \sqrt{-k}⟩ = 𝔞³, \qquad ⟨y - \sqrt{-k}⟩ = 𝔟³$$
We see $[𝔞³] = [1]$ in the class group since it is principal. Therefore $[𝔞]³ = [1]$ means
that $3 | \ord([𝔞])$, but by lagrange's theorem $\ord([𝔞]) | \cl(ℚ(\sqrt{-k}))$
which means also $3 | \cl(ℚ(\sqrt{-k}))$.
But we stated this is not true in the beginning so we conclude $𝔞$ and likewise $𝔟$ are both principal.

## Result

Lastly we see our result.

$y + \√{-k} = uα³$ for some unit $u$.
Note $k ≡ 1, 2 \mod{4}$ means $-k ≡ 3, 2 \mod{4}$.
For all $-k$, the units are $\{ ± 1 \}$ except $-k = -1$ which includes $\{ ±i \}$.
But $k = 1$ is of the form $3t² + 1$ so we ignore that value.

In all cases, these units have integer cube roots so
$y + \√{-k} = α³$ for some $α = a + b \√{-k}$. Then

$$ y + \√{-k} = (a + b \√{-5})³ $$

```python
sage: var("a b k")
(a, b, k)
sage: ( (a + b*sqrt(-k))^3 ).expand()
b^3*(-k)^(3/2) - 3*a*b^2*k + 3*a^2*b*sqrt(-k) + a^3
```
By comparing coefficients, we see
\begin{align*}
\√{-k} &= b³ \√{-k}³ + 3a² b \√{-k} \\
  &= (b³ \√{-k}² + 3a² b) \√{-k} \\
  &= (-k b³ + 3a² b) \√{-k} \\
⇒ 1 &= b (3a² - k b²) \\
\end{align*}
So $b = ±1$ and so $3a² - kb² = 3a² - k = ±1$, which means
$$ k = 3a² ∓ 1 $$
which has no solutions as stated at the beginning.

