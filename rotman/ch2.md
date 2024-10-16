---
title: Homo Algebra by Rotman, Chapter 2
header-includes: |
    - \newcommand{\Hom}{\textrm{Hom}}
    - \newcommand{\rmod}{{}_R \textrm{Mod}}
    - \newcommand{\modr}{\textrm{Mod}_R}
---

# Simplex

Let $X$ be the punctured plane and $Δ$ be the triangle with the deleted origin.
Then there are lines which cannot form an area because they lie on both sides of
the origin. Therefore $Δ$ contains a 1-dimensional hole.

# Correspondence Theorem

$$ φ : \{ \textrm{intermediate submodules } T ⊆ S ⊆ M \} → \{ \textrm{submodules
of } M/T \} $$

and $T ⊆ S ⊆ S'$ in $M ⟺  S/T ⊆ S'/T$ in $M/T$.

Every module is an additive abelian group. Thus submodules are subgroups. So $φ$
is an injection: $S ⊆ S'$ in $M ⟺  S/T ⊆ S'/T$ in $M/T$.

$φ$ is surjective too: if $S^* ⊆ M/T$ then there's a submodule $S ⊇ T$ with $S^*
= S/T$.

## Ring Version

$$ φ : \{ \textrm{intermediate left ideals } I ⊆ J ⊆ R \} → \{ \textrm{left ideals of } R/I \} $$

# Theorem 2.30 / 2.31

$$ φ : \Hom(A, \prod Bᵢ) → \prod \Hom(A, Bᵢ) $$
$$ ψ : \Hom(\bigoplus Aᵢ, B) → \prod \Hom(Aᵢ, B) $$

# Extend by Linearity

\begin{tikzcd}
F \arrow[dr, dotted] & \\
X \arrow{u} \arrow{r} & M
\end{tikzcd}

Every $M ∈ \rmod$ is a quotient of a free $F ∈ \rmod$.

# Exactness of $\Hom$ Functors

$$ 0 → A → B → C → 0 $$

$\Hom(X, -)$ is covariant right exact functor.
$$ 0 → \Hom(X, A) → \Hom(X, B) → \Hom(X, C) $$

$$ 0 → ℤ → ℚ → ℚ/ℤ → 0 $$
$\Hom(ℤ₂, ℚ/ℤ) ≠ 0$ because it contains $f(1) = \frac{1}{2} + ℤ$.
But $\Hom(ℤ₂, ℚ) = 0$ so that $p^* : \Hom(ℤ₂, ℚ) → \Hom(ℤ₂, ℚ/ℤ)$ is not
surjective.

$\Hom(-, X)$ is contravariant left exact functor.
$$ 0 → \Hom(C, X) → \Hom(B, X) → \Hom(A, X) $$
Since $\Hom(ℚ, ℤ) = 0$, the induced $i^*$ cannot be surjective
as $1 ∈ \Hom(ℤ, ℤ)$.

# $R/⟨r⟩ ⊗ M ≌ M/rM$ for $r ∈ Z(R)$

For abelian groups this gives us $ℤₙ⊗G ≌ G/nG$.

\begin{tikzcd}
R⊗M \ar[d] \ar[r] & R⊗M \ar[d] \ar[r] & R/⟨r⟩⊗M \ar[d, dotted] \ar[r] & 0 \\
M \ar[r] & M \ar[r] & M/rM \ar[r] & 0
\end{tikzcd}

# Adjoint Isomorphism

$$ τ : \textrm{Hom}_S(A ⊗_R B, C) → \Hom_R(A, \Hom_S(B, C)) $$
let $f : A ⊗_R B → C$
$$ τ : f → τ(f) \textrm{ where } τ(f)ₐ(b) = f(a⊗b) $$

$τ$ is injective, since if $τ(f)ₐ = 0$ then $0 = τ(f)ₐ(b) = f(a⊗b)$
for all $a, b$. Thus $f = 0$ since all generators of $f(A⊗B)$ are 0.

$τ$ is surjective. Defn $F: A → \Hom_S(B, C)$
and $φ : A × B → C$ by $φ(a, b) = Fₐ(b)$.

\begin{tikzcd}
A × B \ar[dr] \ar[rr] & & A ⊗_R B \ar[dl, dotted] \\
& C &
\end{tikzcd}

$$ τ' : \textrm{Hom}_S(B ⊗_R A, C) → \Hom_R(A, \Hom_S(B, C)) $$

## Nautral Isos

$$ Hom_S(- ⊗_R B, C) → Hom_R(-, Hom_S(B, C)) $$
$$ Hom_S(A ⊗_R -, C) → Hom_R(A, Hom_S(-, C)) $$
$$ Hom_S(A ⊗_R B, -) → Hom_R(A, Hom_S(B, -)) $$
$$ Hom_R(-, Hom_S(B, C)) → Hom_S(- ⊗_S B, C) $$
$$ Hom_R(-, Hom_S(B, C)) → Hom_S(B ⊗_S -, C) $$

## Right Exactness of Tensor

$$ B' → B → B'' → 0 $$

Let $B ∈ \rmod$ be a $(R, ℤ)$-bimodule. For any abelian group $C$, then
$C ∈ \textrm{Mod}_ℤ$ and so
$\Hom_ℤ(B, C) ∈ \modr$.

Now given proposition 2.42 which states that if for every $M ∈ \rmod$ then
$$ 0 → \Hom(B'', M) → \Hom(B, M) → \Hom(B', M) $$
then
$$ B' → B → B'' → 0 $$

Therefore we can equivalently show that for every $C$, the top row is exact
below
\begin{tikzcd}
0 \ar[r] & \Hom_ℤ(A⊗_RB'', C) \ar[d] \ar[r] & \Hom_ℤ(A⊗_RB, C) \ar[d] \ar[r] & \Hom_ℤ(A⊗_RB', C) \ar[d] \\
0 \ar[r] & \Hom_R(A, \Hom_ℤ(B'', C)) \ar[r] & \Hom_R(A, \Hom_ℤ(B, C)) \ar[r] &
\Hom_R(A, \Hom(B', C))
\end{tikzcd}

The bottom row is exact by applying $Hom_R(A, Hom_ℤ(-, C))$ to $B' → B → B'' →
0$.

The vertical arrows are iso.

So the top row is exact.
