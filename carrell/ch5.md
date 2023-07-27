---
header-includes: |
    - \newcommand{\row}[1]{\textrm{row}({#1})}
    - \let\vec\mathbf
    - \DeclareMathOperator\sgn{sgn}
---

# Signature of a Permutation

Define the signature $\sgn(σ)$ to be
$$ \sgn(σ) = \prod_{i < j} \frac{σ(i) - σ(j)}{i - j} $$

## $\sgn(σ) = ±1 \quad ∀σ ∈ S(n)$

By swapping the arbitrary symbols $i, j$ we see
\begin{align*}
\prod_{i < j} \frac{σ(i) - σ(j)}{i - j} &= \prod_{j < i} \frac{σ(j) - σ(i)}{j - i} \\
    &= \prod_{j < i} \frac{σ(j) - σ(i)}{j - i} \\
    &= \prod_{j < i} \frac{σ(i) - σ(j)}{i - j} && \text{multiply prev line by (-1/-1)} \\
⇒ (\sgn(σ))² &= \prod_{i < j} \frac{σ(i) - σ(j)}{i - j} \prod_{j < i} \frac{σ(i) - σ(j)}{i - j} \\
    &= \prod_{i ≠ j} \frac{σ(i) - σ(j)}{i - j}
\end{align*}
Expanding this out gives us all possible combos $i, j$, so $\sgn(σ)² = 1$.

## $\sgn(τσ) = \sgn(τ)\sgn(σ)$

Let $N(σ) = \{(i, j) \; | \; i < j, σ(i) > σ(j)\}$, and $n(σ) = |N(σ)|$. Thus $n(σ)$ counts the
number of inversions in the set $D = \{(i, j) \; | \; i < j \}$. By the proposition above,
$$ \sgn(σ) = (-1)^{n(σ)} $$

Let $σD = \{(σ(i), σ(j)) \; | \; i < j\}$, then for all $k < l$, either $(k, l)$ or $(l, k) ∈ σD$.

Now apply $τσD$ which contains either $(τk, τl)$ or $(τl, τk)$. Thus $τ$ inverts $n(τ)$ pairs,
and so $D → σD → τσD$ has inverted $n(σ) + n(τ)$ pairs.

But $D → (τσ)D$ has inverted $n(τσ)$ pairs.

We also see $(i, j) ∈ N(τσ) ⇔ (i, j) ∈ N(σ)$ or $(σ(i), σ(j)) ∈ N(τ)$.
And there is no pair $(i, j) ∈ N(τσ) : (i, j) ∈ N(σ)$ and $(σ(i), σ(j)) ∈ N(τ)$ so it follows
$$ n(τσ) = n(τ) + n(σ) $$

