# Isomorphisms $A ≌ TA ⊕  (A/TA)$ are not Natural in $A ∈ \Ab$

Epimorphism $f : A ↠  B$ means $hf = kf ⟹  h = k$ which corresponds to the surjective property.
We can see this by setting $h : B → B/\im{f}$ and $k : B → \im{f}$.
Then since $f$ is epic, $h = k$. Let $b ∈ B$, then $h(b) = k(b) ⟹  b ∈ \im f$
and so $f$ is surjective.

Monomorphism $f : A ↣  B$ means $fh = fk ⟹  h = k$ which corresponds to the injective property.

We see the canonical quotient map $A ↠  A/TA$ is clearly surjective and so epic.

The inclusion map $A/TA ↣  TA ⊕  (A/TA)$ is injective/monic by $a + TA → (0, a + TA)$.

Lastly we have $A ≌ TA ⊕  (A/TA)$, giving us the composite
$$ A ↠  A/TA ↣  TA ⊕  (A/TA) ≌ A $$
Our aim is to show this endomorphism is not natural.

## Every Natural Endomorphism of $1_\Ab$ is Multiplication by some $n ∈ ℤ$

Clearly for $α : 1_\Ab ⟹  1_\Ab$, this $n = 1$.

Observe that homomorphisms $ℤ \xrightarrow{a} A$ correspond bijectively
to elements $a ∈ A$ by $1 → a$.

We have the following diagram, noting that since $α$ is supposed to be natural,
the diagram should commute:
\begin{tikzcd}
ℤ \arrow{r}{α_ℤ = [n]} \arrow[swap]{d}{a} & ℤ \arrow{d}{a} \\
A \arrow{r}{α_A} & A
\end{tikzcd}
which means we define $α_A = n·a$.

## The Endofunctor $A → TA ⊕  (A/TA)$

Let us define $F : \Ab → \Ab$ for a morphism $f : A → B$ giving us
a morphism
$$ Ff : TA ⊕  (A/TA) → TB ⊕  (B/TB) $$

* $f(TA) ⊆ TB$, so $f|_{TA} : TA → TB$ is a valid restriction.
* We can define $g : A/TA → B/TB$ by $g(a + TA) = f(a) + TB$.
    * This is well defined since $a + TA = a' + TA ⟹  a - a' ∈ TA$, but by
      above that $f(TA) ⊆ TB$, so $f(a - a') ∈ TB ⟹  g(a + TA) ~ g(a' + TA)$.
* Now put $Ff = f|_{TA} ⊕  g$ which is: $Ff(a, a' + TA) = (f(a), f(a') + TB)$.

All 3 operations: taking torsion, modding out by torsion, and taking direct sums
are valid functors.

Saying there's natural isomorphisms $A ≌ TA ⊕  (A/TA)$ means there's a natural
isomorphism $α : F ⟹  1_\Ab$.

### $β : 1_\Ab ⟹  G$ is a Natural Transformation

$$ β : 1_\Ab ⟹  G $$
$$ β_A : A → GA = A/TA $$
Let $f : A → B$

\begin{tikzcd}
a \arrow{r}{β_A} \arrow[swap]{d}{f} & Ga \arrow{d}{Gf = g} \\
b \arrow{r}{β_B} & Gb
\end{tikzcd}
so we expect that
$$ β_B fa = gβ_A a $$
where $g(a + TA) = f(a) + TB$ so
\begin{align*}
β_B fa &= f(a) + TB \\
gβ_A a &= g(a + TA) \\
       &= f(a) + TB
\end{align*}
with the other transformation being the inclusion $ι_A(a + TA) = (0, a + TA)$.

### "Natural Endomorphism of the Identity Functor"

> "the hypothesized natural isomorphism would define a natural endomorphism
> of the identity functor on $\Ab$."

We showed there's a natural transformation $β : 1_\Ab ⟹  G$ which is the
composition $A → A/TA → TA ⊕  (A/TA)$.

We seek to prove there's a natural transformation $α : G ⟹  1_\Ab$.

The composition $α ∘ β : 1_\Ab ⟹  G ⟹  1_\Ab$ must also be natural.

We now see this is impossible.

## Impossibility of Hypothesis

Let $A = ℤ, B = ℤ/2nℤ$ and $𝜙 : A → A/TA → TA ⊕  (A/TA)$.

\begin{tikzcd}
B \arrow{r}{α_B} & B \\
ℤ \arrow{u}{b} \arrow{r}{α_ℤ = [n]} \arrow[swap]{d}{a} & ℤ \arrow{d}{a} \arrow{u}{b} \\
A \arrow{r}{α_A} & A
\end{tikzcd}

We see that $𝜙(A) = (0, ℤ) ⟹  n = ±1$. Likewise $𝜙(B) = (0, 0) ⟹  n = 0_{ℤ/2nℤ}$
but $n ≠ 0 ∈ ℤ/2nℤ$ which is a contradiction.
