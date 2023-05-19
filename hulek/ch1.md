# $K[x, y]/⟨x - a₁, y - a₂⟩ ≌ K$

Let $P = (a₁, a₂)$ and $𝜙$ be the evaluation map
$$ 𝜙 : K[x, y] → K $$
$$ 𝜙(f(x, y)) = f(P) $$
then $𝜙(K) = K$ so we see $𝜙$ is surjective.

We also see $K[x, y] / \ker 𝜙 ≌ K$.
Since the map is surjective, and $K$ is a field, therefore $\ker 𝜙$ is maximal.

Now we prove $\ker 𝜙 = ⟨x - a₁, y - a₂⟩$. We can easily see
$⟨x - a₁, y - a₂⟩ ⊆ \ker 𝜙$, so now we prove the reverse inclusion.
We write $f(x, y) = \sum f_i(x)yⁱ$ and then see $f(x, a₂) = \sum f_i(x)a₂ⁱ$.
$$ f(x, y) - f(x, a₂) = \sum f_i(x)(yⁱ - a₂ⁱ) $$
but $(yⁱ - a₂ⁱ) = (y - a₂)(yⁱ⁻¹ + ⋯ + a₂)$
$$ ⇒ f(x, y) - f(x, a₂) ∈ ⟨y - a₂⟩ $$
Continuing with the same argument for $x$, and noting $f(a₁, a₂) = 0$, we see
$$ f(x, y) ∈ ⟨x - a₁, y - a₂⟩ ⇒ \ker 𝜙 = ⟨x - a₁, y - a₂⟩ $$

