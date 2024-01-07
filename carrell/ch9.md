---
header-includes: |
    - \let\vec\mathbf
    - \let\M\parenMatrixstack
    - \let\;\quad
    - \def\nullsp{\mathcal{N}}
    - \def\qed{\hfill\blacksquare}
    - \DeclareMathOperator\sgn{sgn}
    - \DeclareMathOperator\dim{dim}
    - \DeclareMathOperator\row{row}
    - \DeclareMathOperator\col{col}
    - \DeclareMathOperator\span{span}
    - \DeclareMathOperator\ker{ker}
    - \DeclareMathOperator\im{im}
    - \DeclareMathOperator\rank{rank}
    - \DeclareMathOperator\det{det}
    - \DeclareMathOperator\Rot{Rot}
    - \DeclareMathOperator\charpoly{charpoly}
    - \DeclareMathOperator\Tr{Tr}
    - \DeclareMathOperator\Re{Re}
    - \DeclareMathOperator\diagonal{diagonal}
    - \DeclareMathOperator\diag{diag}
---

# Normal Matrix Theorem

A matrix $A ∈ ℂ^{n×n}$ is unitarily diagonalizable iff $A$ is normal.

# Principal Axis Theorem

Complex matrix $A$ is Hermitian iff $A$ can be unitarily diagonalized
as $A = UDUᴴ$.

# Diagonalization of Quadratic Forms

We can diagonalize a form $q(r₁, …, rₙ)$ and through a change of coordinates of the
form $𝐫 = C𝐬$, construct a new form $q'(s₁, …, sₙ) = ∑ aᵢsᵢ²$.

# Equivalent Conditions for Positive Definite Form

Let $A$ be a real symmetric matrix.

## (i) eigenvalues of $A$ are positive $⟹$ (ii) $A$ is positive definite

$A = QDQᵀ$ with all eigenvalues from $D = \diag(λ₁, …, λₙ)$ positive.

Since $Q$ is an orthogonal basis, $𝐱 = x₁𝐪₁ + ⋯ + xₙ𝐪ₙ$, so $𝐱ᵀA𝐱 = ∑ λᵢxᵢ² > 0$
for all $𝐱 ≠ 𝟎$.

## (ii) $A$ is positive definite $⟹$ (iii) upper left $k×k$ submatrix $Aₖ$ has $\det(Aₖ) > 0 \;  ∀ k$

We can view vectors in $ℝᵏ$ as vectors in $ℝⁿ$ but with the upper values set to 0
$$ ℝᵏ = \{ 𝐱 ∈ ℝⁿ | xᵢ = 0 \; ∀ i > k \} $$
Since $A$ is positive definite, so is $Aₖ$, which means all eigenvalues are positive,
and so $\det(Aₖ) > 0$.

## (iii) $\det(Aₖ) > 0 \; ∀ k ⟹$ (iv) $A = LDLᵀ$ with all $dᵢ > 0$ for $D = \diag(d₁, …, dₙ)$

Immediate from prop 4.17: *$A$ can be written in the form $LDU$ iff $Aₖ$ is invertible
for all $k = 1, …, n$.*

## (iv) $A = LDLᵀ$ with all $dᵢ > 0 ⟹$ (i) eigenvalues of $A$ are positive

From Sylvester's law of inertia.

# Positive Semidefinite Forms

## Real Symmetric Matrix is Positive Semidefinite iff $A = LDLᵀ$ with $D$ Nonnegative

$A$ can be decomposed as $LPDLᵀ$ where $L$ is orthogonal, and since $A = Aᵀ$, so
$PD$ is symmetric. Then we see $P = I$, and $D$ entries are nonnegative.

# Sylvester's Law of Inertia

Let $A$ and $B$ be congruent real symmetric matrices. Then they have the
same signature- number of positive, zero and negative eigenvalues.
Likewise real symmetric matrices with the same signature are congruent.

* We easily see $n₀(A) = n₀(B)$ since they share the same null space.
* When diagonalizing real symmetric matrices, there's multiple ways to order the
  diagonal, so we reorder it so the positive ones are first.
* Now we only have to look at $D$, $E$ diagonal matrices since $A$ and $B$ are
  congruent to them.
* We assume $n₊(D) < n₊(E)$
* $fⱼ(x₁, …, xₜ)$ is a linear function in $t$ variables.
  For $j = 1, …, s$ we can pick $𝐚 = \M{a₁, ⋯, aₜ}$ so that all $fⱼ(𝐚) = 0$.
    * To see this, simply make $F ∈ ℝ^{s×t}$ be the matrix with the coeffs of $f₁, …, fₛ$
      as its rows and $𝐚 ∈ ℝᵗ$. We see the null space of $F$ is nonzero
      since $s < t$.

# Exercises

## 9.1.6

Since $iA$ is Hermitian and only has real eigenvalues, then $A$
has only imaginary eigenvalues. Write $\det(A) = iⁿ λ₁ ⋯ λₙ$
where $λᵢ$ are the eigenvalues of $iA$.

By this result, if $A$ is skew-symmetric, then $\det(S) = 0$ since
$\det(S)$ is pure imaginary.

For $n$ even, the eigenvalues occur in pairs $±iλₖ$, which means
$\det(S) ≥ 0$.

## 9.1.7

Write $A$ in unitary diagonal form, then note $D = \diag(λ₁, …, λₙ)$.
Since $\det(A) = \det(D)$ and the eigenvalues of a Hermitian matrix are
real so $\det(A) ∈ ℝ$.

## 9.1.8

Follows immediately from $NU = UD$, where $D$ are the eigenvalues, and
$U = \M{𝐮₁, …, 𝐮ₙ}$ are the eigenvectors. Since $U$ is unitary we have
$UUᴴ = I$ which means the eigenvectors are all Hermitian orthonormal.

## 9.1.9

See [wiki](https://en.wikipedia.org/wiki/Normal_matrix#Special_cases)
for such a matrix.

## 9.1.10

$UUᴴ = I ⟹ 𝐮ᵢ \bar{𝐮ᵢ} = N(𝐮ᵢ) = 1$, but $|𝐮ᵢ| = \sqrt{N(𝐮ᵢ)} ⟹ |𝐮ᵢ| = 1$.

$$ |\det(U)| = \sqrt{N(λ₁ ⋯ λₙ)} = \sqrt{N(λ₁)⋯N(λₙ)} = 1 $$

Let $x = a₁ + ib₁, y = a₂ + ib₂$, then let $N(x) = N(y) = 1$. We see
$$ N(x + y) = (a₁ + b₁)² + (a₂ + b₂)² ≤ a₁² + b₁² + a₂² + b₂² = N(x) + N(y) $$
$$ ⟹ |Tr(U)| ≤ n $$

## 9.1.11

$QQᵀ = I ⟹ \det(Q) = ±1$. But $\det(Q) = λ₁ ⋯ λₙ$ with all $λᵢ$ imaginary.
Therefore the eigenvalues are in conjugate pairs $±iμₖ$ and $n$ is even.

## 9.1.14/15

Needs Fuglede's theorem since $AB = BA$ and $AᴴBᴴ = BᴴAᴴ$ does not imply
that $A, B, Aᴴ, Bᴴ$ all commute. Given that and the earlier result on
diagonalizable matrices, as well as $U⁻¹ = Uᴴ$, the questions are easy to solve.

For the next one, just note $A + B = U(D₁ + D₂)Uᴴ$ means the eigenvalues are
$D₁ + D₂$.

## 9.1.17

(iii) $AAᵀ = UD₁Uᵀ = (AᵀA)ᵀ = (UD₂Uᵀ)ᵀ ⟹ D₁ = D₂$.

## 9.2.10 (vi)

Using $B = CACᵀ$ and $A = Aᵀ$, we get $AB = ACACᵀ = BA = CACᵀA ⟹ AB = (AB)ᵀ$.
So $AB$ must be symmetric, which is not always true.

## 9.2.11

$A = QDQᵀ$ with $D = \diag\{d₁, …, dₙ\}$ all nonnegative. Therefore we can take
any arbitrary $k$th root $K$ in $ℝ^{n×n}$. Let $M = QKQᵀ$, then we see $A = Mᵏ$.

## 9.2.12

Let $U ⊂ V$ be the subspace spanned by $B$.
Since $A$ is symmetric diagonalizable, it is a semisimple linear mapping.
Since it is positive definite with only positive eigenvalues, therefore the
span of $A$ is $V ⟹ \span{B} ⊂ \span{A}$.

Let $\{ 𝐯₁, …, 𝐯ₙ \}$ be an eigenbasis for $A$. When $B𝐯₁ = 𝟎$, then
$𝐯₂ᵀAB𝐯₁ = 𝟎$. But $(𝐯₂ᵀAB𝐯₁)ᵀ = λ𝐯₁ᵀB𝐯₂$ where $λ$ is an eigenvalue of
$B𝐯₂$. Since $B$ is symmetric, we have $𝐯₁ᵀBᵀ = 𝐯₁ᵀB = 𝟎 ⟹ 𝐯₁ᵀAB𝐯₂ = 𝟎$.

Now assume $B𝐯₁, B𝐯₂ ≠ 0$. Let $λ$ be the eigenvalue of $B𝐯₂$,
then we see that $𝐯₁ᵀAB𝐯₂ = λ𝐯₁ᵀB𝐯₂ = λ(𝐯₁ᵀB𝐯₂)ᵀ = λ𝐯₂ᵀB𝐯₁ > 0$.

We conclude that $QABQ⁻¹$ is symmetric where $Q = \M{𝐯₁, …, 𝐯ₙ}$.

