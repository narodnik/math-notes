---
header-includes: |
    - \newcommand{\row}[1]{\textrm{row}({#1})}
    - \let\vec\mathbf
---

# Ex 3.1.2

$$ A = (a_{ij}), \qquad A^T = (a_{ij})^T = a_{ji} $$
$$ (A + B)^T = ((a_{ij}) + (b_{ij}))^T = a_{ji} + b_{ji} = A^T + B^T $$

# Ex 3.1.5

We use these simple rules:
$$ (XY)^T = Y^T X^T $$
$$ (X_{k,})^T = (X^T)_{,k} $$
and the column notation
$$ (XY){,k} = Y_{1,k} X_{,1} + ⋯ + Y_{n,k} X_{,n} $$

Putting this all together
\begin{align*}
(AB)^T_{,k} &= (B^T A^T)_{,k} = (A^T)_{1,k} (B^T)_{,1} + ⋯ + (A^T)_{n,k} (B^T)_{,n} \\
            &= A_{k,1} B_{1,} + ⋯ + A_{k,n} B_{n,}
\end{align*}
but $(AB)^T_{,k} = (AB)_{k,}$

# Uniqueness of Reduced Row Echelon Form

## $A' = EA ⇒ \textrm{row}(A') = \textrm{row}(A)$

The row operations are:

1. interchange different rows
2. multiply rows by nonzero scalar
3. add a nonzero multiple of another row

We show $A$ has equivalent row space under row operations.

Type 1 is immediate.

Type 2 replaces $\vec{a}_i$ by $r\vec{a}_i$, so we just rescale by $1/r$.
$$ c₁ \vec{a}₁ + ⋯ + c_n \vec{a}_n = \frac{c₁}{r} \vec{a}'₁ + ⋯ + c_n \vec{a}_n $$

Type 3 replaces $\vec{a}_i$ by $\vec{a}_i + r \vec{a}_j$
\begin{align*}
c₁ \vec{a}₁ + c₂ \vec{a}₂ + ⋯ + c_n \vec{a}_n &= c₁ (\vec{a}₁ + r\vec{a}₂) + (c₂ - rc₁) \vec{a}₂ + ⋯ + c_n \vec{a}_n \\
    &= c₁ \vec{a}₁' + (c₂ - rc₁) \vec{a}₂' + ⋯ + c_n \vec{a}_n' \\
\end{align*}

So $A$ and $A'$ have the same row space.

## $A = B : A, B ∈ \textrm{Red} ⇔ \row{A} = \row{B}$

$A = B ⇒ \row{A} = \row{B}$ is obvious so we prove the reverse direction.

Label the rows of $A, B$ like so starting from the bottom.
$$ A = \begin{pmatrix}
\vec{a}_n \\
\vdots \\
\vec{a}₁
\end{pmatrix},
\qquad
B = \begin{pmatrix}
\vec{b}_n \\
\vdots \\
\vec{b}₁
\end{pmatrix} $$
We induct on the pivots starting with $\vec{a}₁, \vec{b}₁$.

1. the pivots for $\vec{a}₁, \vec{b}₂$ must be the same otherwise
   $\vec{a}₁ ∉ \row{B}$.
2. By symmetry, the pivots of $\vec{a}₁$ and $\vec{b}₁$ are in the
   same component.
3. $\vec{b}₁ = r₁\vec{a}₁ + ⋯ + r_n\vec{a}_n$ but the other components
   don't share pivots $⇒ \vec{b}₁ = r₁\vec{a}₁$.
4. $r₁ = 1$

Keep applying the same argument to see $A = B$.

## Reduced Form is Unique

If two different sequences of elementary matrices corresponding to row operations
yield two different reduced row echelon forms $B$ and $C$ for $A$, then by the previous
propositions we get:

1. $\row{A} = \row{B} = \row{C}$
2. $B = C$

