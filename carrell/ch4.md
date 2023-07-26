# Structure of $\textrm{GL}(n, 𝔽)$

$$ \textrm{GL}(n, 𝔽) = \mathcal{L}_n(𝔽) · P(n) · \mathcal{D}_n(𝔽) · \mathcal{U}_n(𝔽) $$

## $P, Q ∈ Π_n : PN = MQ ⇒ P = Q$

### $MQ = PN$ zero columns also in $P, Q$

Note that $M ∈ \mathcal{L}_n(𝔽)$ and $N$ is non-singular and upper triangular.

First we prove $P$ and $Q$ have the same zero columns. Let the $j$th column of $Q$ be zero, so $q_{kj} = 0 \; ∀k ∈ [n]$.

Let $M = (\mathbf{m₁} ⋯ \mathbf{m_n})$, then $(MQ)_{:j} = q_{1j} \mathbf{m₁} + ⋯ + q_{nj} \mathbf{m_n} = \mathbf{0}$.
But $MQ = PN ⇒ (MQ)_{:j} = (PN)_{:j} = \mathbf{0}$.

Next we prove that the $j$th column of $P$ is also zero. Let $p_{ij} ≠ 0$, but $p_{ir} = 0$ for all $r ≠ j$ since it is
a permutation matrix and there is only a single nonzero value per row.
\begin{align*}
(PN)_{ij} &= p_{i1} n_{1j} + ⋯ + p_{ij} n_{jj} + ⋯ + p_{in} n_{nj} \\
          &= p_{ij} n_{jj}
\end{align*}
But $N$ is nonsingular and it is upper trianglar so a basic property is that its diagonals are nonzero $⇒ n_{jj} ≠ 0$.

This means $(PN)_{:j}$ is nonzero which contradicts the first part of this proof.

Lastly by the same argument $QN⁻¹ = M⁻¹P$ means every zero column of $P$ is also a zero column of $Q$.

### Final proof using the above result

Suppose the $j$th columns of $P$ and $Q$ are nonzero.
$$ p_{rj} = q_{sj} = 1 $$
\begin{align*}
(PN)_{rj} &= p_{rj} n_{jj} ≠ 0 \\
    &= (MQ)_{rj} \\
    &= m_{r1} q_{1j} + ⋯ + m_{rn} q_{nj}
\end{align*}
$M$ does downward transvections so the row terminates after the center
$$ (PN)_{rj} = m_{r1} q_{1j} + ⋯ + m_{rr} q_{rj} $$
Since this cell is nonzero, one of $q_{1j}, …, q_{rj}$ is also nonzero,
and so it follows $s ≤ r$.

Likewise applying the same logic to $QN⁻¹ = M⁻¹P$, we see $r ≤ s$.

Therefore $r = s ⇒ P = Q$.

# Exercises

## Ex 4.3.16

Matrix is symmetric so by eliminating mirror entries, we end up with $U = L^T$.

$LPDU = (LPDU)^T = U^T D^T P^T L^T = LD^T P^T U ⇒ D^T P^T = PD ⇒ P = P^T$ by $MP = NQ$.
But $P(n) ⊆ O(n) ⇒ P^T = P⁻¹$ so $P = P⁻¹ ⇒ D^T P = PD$ but $D^T = D$ so $DP = PD$.

Likewise $DP = D^T P = D^T P^T = PD = (PD)^T$ so is symmetric and $L = U^T$ preserves symmetry.

