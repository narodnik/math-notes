# Motivation

We want to find the common divisor for $f(x), g(x)$

\begin{align*}
f(x) &= x² - 5x + 6 \\
g(x) &= x³ - x - 6
\end{align*}

$$ \underbrace{ r(x) }_{\deg r < 3} f(x) = \underbrace{ s(x) }_{\deg s < 2} g(x) $$

\begin{alignat*}{2}
r(x) &= α₂ x² + && α₁ x + α₀ \\
s(x) &=         && β₁ x + β₀
\end{alignat*}

Lets expand $r(x) f(x)$
\begin{alignat*}{3}
(α₂x² + α₁x + α₀)(1x² - 5x + 6) = α₂ · 1 x⁴ &+ α₂ · (-5) x³ &&+ α₂ · 6 x²  && \\
                                            &+ α₁ · 1 x³    &&+ α₁ (-5) x² &&+ α₁ 6 x \\
                                            &               &&+ α₀ · 1 x²  &&+ α₀ (-5) x + α₀ 6
\end{alignat*}
$$ = (α₂ α₁ α₀)
\begin{pmatrix}
1 & -5 &  6 &  0 & 0 \\
0 &  1 & -5 &  6 & 0 \\
0 &  0 &  1 & -5 & 6
\end{pmatrix}
$$

Likewise for $s(x) g(x)$
\begin{alignat*}{4}
(       β₁x + β₀)(1x² - 1x + 6) = β₁ · 1 x⁴ &               &&+ β₁ · (-1) x²  &&+ β₁ 6x \\
                                            &+ β₀ · 1 x³    &&                &&+ β₀ (-1) x &&+ β₀ 6 \\
\end{alignat*}
$$ = (β₁ β₀)
\begin{pmatrix}
1 &  0 & -1 &  6 & 0 \\
0 &  1 &  0 & -1 & 6 \\
\end{pmatrix}
$$

Since $r(x)f(x) = s(x)g(x)$
$$(α₂ α₁ α₀)
\begin{pmatrix}
1 & -5 &  6 &  0 & 0 \\
0 &  1 & -5 &  6 & 0 \\
0 &  0 &  1 & -5 & 6
\end{pmatrix}
= (β₁ β₀)
\begin{pmatrix}
1 &  0 & -1 &  6 & 0 \\
0 &  1 &  0 & -1 & 6 \\
\end{pmatrix}
$$
$$⇒ (α₂ α₁ α₀|-β₁ -β₀)
\begin{pmatrix}
1 & -5 &  6 &  0 & 0 \\
0 &  1 & -5 &  6 & 0 \\
0 &  0 &  1 & -5 & 6 \\
\hline
1 &  0 & -1 &  6 & 0 \\
0 &  1 &  0 & -1 & 6 \\
\end{pmatrix}
= 0
$$

# Definition

$$
S = \begin{pmatrix}
1 & -5 &  6 &  0 & 0 \\
0 &  1 & -5 &  6 & 0 \\
0 &  0 &  1 & -5 & 6 \\
\hline
1 &  0 & -1 &  6 & 0 \\
0 &  1 &  0 & -1 & 6 \\
\end{pmatrix}
$$

This is the **Sylvester matrix**. More precisely given
\begin{align*}
f(x) &= a_n xⁿ + a_{n - 1} x^{n - 1} + ⋯ + a₀ \\
g(x) &= b_m xᵐ + b_{m - 1} x^{m - 1} + ⋯ + b₀ 
\end{align*}
$$ S =
\begin{pmatrix}
a_n & a_{n - 1} & \hdots    & a_0       &        &     \\
    & a_n       & a_{n - 1} & \hdots    & a_0    &     \\
    &           & \vdots    &           &        &     \\
    &           & a_n       & a_{n - 1} & \hdots & a_0 \\
b_m & b_{m - 1} & \hdots    & b_0       &        &     \\
    & b_m       & b_{m - 1} & \hdots    & b_0    &     \\
    &           & \vdots    &           &        &     \\
    &           & b_m       & b_{m - 1} & \hdots & b_0 \\
\end{pmatrix}
$$
The resultant $R(f, g) = \det(S)$.

When $f(x)$ and $g(x)$ share a common divisor then $rf - sg = 0$ for some $r, s$,
and hence $(α_{m - 1} … α₀ | -β_{n - 1} … -β₀$ has a solution.

We now follow the exercises of Dummit & Foote 14.6.29-31.

# $R(f, g) = 0 ⇔ (f(x), g(x))$ are not Coprime

*29a: Prove $f(x)$ and $g(x)$ have a common divisor $⇔ ∃ r(x), s(x) ∈ A[x] : r(x)f(x) = s(x)g(x)$
where $\deg r < m, \deg s < n$.*

Assuming $f(x)$ and $g(x)$ share a single factor $(x - γ)$, then the remaining non-shared factors
will be $\deg r = \deg g - 1 = m - 1$ and $\deg s = n - 1$.

*29b: Prove there is a nontrivial solution iff $R(x, y) = \det S = 0$.*

The coefficients of $r, s$ are $m + n$ unknowns. This is a system of $m + n$ homogenous equations.
We know that in such a system $\det S ≠ 0$ means the trivial solution, whereas $\det S = 0$
means an infinite number of nontrivial solutions. Hence we can find the polynomials $r, s$.

# $R(f, g)$ is a Linear Combination $r(x)f(x) + s(x)g(x)$

Remembering there are $m$ followed by $n$ rows.

\begin{align*}
S
\begin{pmatrix}
x^{n + m - 1} \\
x^{n + m - 2} \\
\vdots \\
x \\
1
\end{pmatrix}
&=
\begin{pmatrix}
a_n x^{n + m - 1} + & a_{n - 1} x^{n + m - 2} + & \hdots    & a_0 x^{m - 1}       &        &     \\
                    & a_n       x^{n + m - 2} + & a_{n - 1} x^{n + m - 3} + & \hdots    + & a_0 x^{m - 2}    &     \\
                    &                           & \vdots    \\
                    &                           & a_n x^n                 + & a_{n - 1} x^{n - 1} + & \hdots + & a_0 \\
b_m x^{n + m - 1} + & b_{m - 1} x^{n + m - 2}     + & \hdots    & b_0 x^{n - 1}      &        &     \\
                    & b_m       x^{n + m - 2} +     & b_{m - 1} x^{n + m - 3} + & \hdots    + & b_0 x^{n - 2}    &     \\
                    &                               & \vdots    &           &        &     \\
                    &                               & b_m x^m + & b_{m - 1} x^{m - 1} + & \hdots + & b_0 \\
\end{pmatrix} \\
&=
\begin{pmatrix}
x^{m - 1} f(x) \\
x^{m - 2} f(x) \\
\vdots \\
f(x) \\
x^{n - 1} g(x) \\
x^{n - 2} g(x) \\
\vdots \\
g(x)
\end{pmatrix}
\end{align*}

Let $S'$ denote the matrix of cofactors. Then a basic rule of matrices is that
$$ S' S = \det(S) I $$
Denote coefficients on the final row of $S'$ as $k_i$
$$ S' =
\begin{pmatrix}
& \hdots & \\
k_0 & \hdots & k_{m + n}
\end{pmatrix}
$$
Left multiply the above equations by $S'$
\begin{align*}
S' S
\begin{pmatrix}
x^{n + m - 1} \\
x^{n + m - 2} \\
\vdots \\
x \\
1
\end{pmatrix}
&=
\det(S)
\begin{pmatrix}
x^{n + m - 1} \\
x^{n + m - 2} \\
\vdots \\
x \\
1
\end{pmatrix} \\
&=
\begin{pmatrix}
x^{n + m - 1} R(f, g) \\
x^{n + m - 2} R(f, g) \\
\vdots \\
x R(f, g) \\
R(f, g)
\end{pmatrix} \\
&=
S'
\begin{pmatrix}
x^{m - 1} f(x) \\
x^{m - 2} f(x) \\
\vdots \\
f(x) \\
x^{n - 1} g(x) \\
x^{n - 2} g(x) \\
\vdots \\
g(x)
\end{pmatrix}
\end{align*}
Observing the last row, we see
\begin{align*}
R(f, g) &= k₀ x^{m - 1} f(x) + k₁ x^{m - 2} f(x) + ⋯ + k_{m - 1} f(x) + k_m x^{n - 1} g(x) + ⋯ + k_{m + 1} x^{n - 2} g(x) + ⋯ + k_{n + m - 1} g(x) \\
&= r(x) f(x) + s(x)g(x)
\end{align*}

# Reciprocity

We create the ring
$$ A₀ = R[a_n, b_m, x₁, …, x_n, y₁, …, y_m] $$
$$ f(x) = a_n (x - x₁) ⋯ (x - x_n) $$
$$ g(x) = b_m (y - y₁) ⋯ (y - y_m) $$
So therefore $a_n$ divides all the coefficients of $f(x)$.

*31b: show $R(f, g)$ is $a_nᵐ b_mⁿ$ times a symmetric function in $x₁, …, x_n, y₁, …, y_m$.*

Each coefficient of $f$ is an elementary symmetric function of the roots $x_1, …, x_n$.
For example
$$ (X - a)(X - b)(X - c) = X^3 - (a + b + c)X² + (ab + ac + bc)X - abc $$

We can use [determinant expansion by minors](https://mathworld.wolfram.com/DeterminantExpansionbyMinors.html)
to cancel $a_n$ from the first $m$ rows, then continue by cancelling $b_m$ from the remaining $n$ rows.
We therefore see that $R(f, g)$ is a multiple of $a_n^m b_m^n$.

The remaining values which are the coefficients divided out are symmetric functions on the roots.

Therefore $R(f, g)$ is equal to $a_n^m b_m^n$ times a symmetric function of $x_1, …, x_n, y_1, …, y_m$.

*31c: $R(f, g)$ is divisible by $(x_i - y_j)$.*

$R(f, g)$ is 0 if $f, g$ share a common root. This means when $f(x)$ and $g(x)$ share a root such that
$x_i = y_j$ for some $i, j$ then $R(f, g)$ must be zero.

Lets consider $R(f, g)$ as an indeterminate over $x_k$ (same argument for $y_k$)
then $R(f, g)$ will be 0 when $x_k = y_j$ for any $y_j$. Therefore we can divide $R(f, g) ∈ A[x_k]$ by $(x_k - y_j)$.

Applying this argument for all $x_i, y_j ∈ A₀$, we see that

$$ R(f, g) = a_n^m b_m^n \prod_{i = 1}^n \prod_{j = 1}^m (x_i - y_j) $$

*31d: final reciprocity*

We can now very easily rewrite the above as

$$ R(f, g) = a_n^m \prod_{i = 1}^n g(x_i) = (-1)^{nm} b_m^n \prod_{j = 1}^m f(y_j) $$

# References

* [Resultants, Discriminants, Bezout, Nullstellensatz, etc,](https://people.reed.edu/~jpb/alg/notes/101.pdf)

