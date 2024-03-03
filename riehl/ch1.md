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

Observe that homomorphisms $ℤ \→{a} A$ correspond bijectively
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

# Ex

## 1.4.ii: Natural Transform between Parallel Functors in $\catname{B}A$

We view the group $A$ as a category with one object $s_A$ with the Hom-set
$\End(s_A) = A$ and composition by the group law. Likewise for $B$.

If $F, G: A → B$ are functors, then they both consist of the following data:
$F(s_A) = s_B$ and for all $g₁, g₂ ∈ \End(s_A), F(g₁)F(g₂) = F(g₁g₂) ∈ \End(s_B)$
(likewise for $G$).

A natural transformation $α : F ⟹  G$ consists of the following data:

1. $α_{s_A} ∈ \End(s_B) = B$
2. For all $h ∈ \End(s_A) = A$, we have $G(h) α_{s_A} = α_{s_A} F(h)$.

Noting that since $B$ is a group there exists $α_{s_A}⁻¹$, we can
rewrite (2) as
$$ G(h) = α_{s_A} F(h) α_{s_A}⁻¹ $$
That is that the group elements $G(h), F(h) ∈ B$ are conjugates of each other.

## 1.4.v: Comma Category Natural Transform $α : F \dom ⟹  G \cod$

### Comma Category

\begin{tikzcd}
d  \arrow{r} \arrow{d}{h} & Fd  \arrow{r}{f} \arrow{d}{Fh} & Ge  \arrow{d}{Gk} & e  \arrow{l} \arrow{d}{k} \\
d' \arrow{r}              & Fd' \arrow{r}{f}               & Ge'               & e' \arrow{l} \\
D                         & C                              & C                 & E
\end{tikzcd}
$$ f : Fd → Ge ∈ C $$
Comma category $F↓G$:

* objects $(d, e, f)$
* morphisms $(d, e, f) → (d', e', f')$

$$ \dom: F↓G → D $$
$$ \cod: F↓G → E $$

### Globular Diagram

\begin{tikzcd}
F↓G \arrow{r}{\cod} \arrow{d}{\dom}       & E \arrow{d}{G} \\
D   \arrow{r}{F} \ar[ur, "α", Rightarrow] & C
\end{tikzcd}
$$ α : F \dom ⟹  G \cod $$
$$ F \dom : F↓G \→{\dom} D \→{F} C $$
$$ G \cod : F↓G \→{\cod} E \→{G} C $$
\begin{tikzcd}[column sep=1.5cm]
F↓G
  \ar[r, bend left=40, "F \dom", ""{name=fdom, above,}]
  \ar[r, bend right=40, swap, "G \cod", ""{name=gcod, below,}]
  \ar[from=fdom, to=gcod, Rightarrow, "α"]
& C
\end{tikzcd}

## Natural Transformation $α : F \dom ⟹  G \cod$

$$ F \dom, G \cod : F↓G \rightrightarrows C $$

$$ α : F \dom ⟹  G \cod $$
Data of natural transform is:

For each $(d, e, f) ∈ F↓G$,
$$ α_{(d, e, f)} : F \dom(d, e, f) → G \cod(d, e, f) ∈ C $$

Let
$$ z : (d, e, f) → (d', e', f') ∈ F↓G $$
\begin{tikzcd}
F \dom(d, e, f)    \arrow{r}{α_{(d, e, f)}} \arrow[swap]{d}{F \dom z} & G \cod(d, e, f) \arrow{d}{G \cod z} \\
F \dom(d', e', f') \arrow{r}{α_{(d', e', f')}} & G \cod(d', e', f')
\end{tikzcd}
which is equivalent to
\begin{tikzcd}
Fd  \arrow{r}{α_{(d, e, f)}} \arrow[swap]{d}{Fh} & Ge \arrow{d}{Gk} \\
Fd' \arrow{r}{α_{(d', e', f')}} & Ge'
\end{tikzcd}
so we can take $α_{(d, e, f)} : F \dom(d, e, f) = Fd → G \cod(d, e, f) = Ge ∈ C$
to be $α_{(d, e, f)} = f : Fd → Ge ∈ G$ which commutes as expected.

# Categorification of the Orbit-Stabilizer Theorem

> The orbit of $x$ is "everything that can be reached from $x$ by an action of something in $G$".
> 
> The stabilizer of $x$ is "the set of all elements of $G$ which don't move $x$ when they act on $x$".

The left $G$-set for a set $S$ is $X = \{ g·s | g ∈ S, s ∈ S \}$.
Let $X : \catname{B}G → \Set$ be such a left $G$-set.
The translation groupoid (action groupoid in other sources)
$\catname{T}_G X$ has elements of the set $X$ as objects.

For example let $R × Kⁿ → Ax ∈ Kⁿ$ where $R$ is the group of $π/2$
rotation matrices be such a left $G$-set.
Then $\catname{B}G$ has a single object $s$ and morphisms
$I, G, G², G³$ where $R = ⟨G⟩$.

Then $X : \catname{B}G → \Set$ is a functor taking $s$ to the left $G$-set
and the same morphisms as before.

$$ G = \left\{ I = \M{0, 1; 1, 0}, G = \M{0, -1; 1, 0}, G² = \M{-1, 0; 0, -1}, G³ = \M{0, 1; -1, 0} \right\} $$

Applying this group to the vector $𝐮 = \M{1; 0}$, we get the left $G$-set
$$ X_𝐮 : s → \left\{ \M{1; 0}, \M{0; 1}, \M{-1; 0}, \M{0; -1} \right\} $$
And applying it to $𝐯 = \M{1; 1}$ we get
$$ X_𝐯 : s → \left\{ \M{1; 1}, \M{-1; 1}, \M{-1; -1}, \M{1; -1} \right\} $$

The **translation groupoid** for these sets consists of the following diagrams
\begin{tikzcd}
\M{1; 0} \arrow{rd}{G²} \arrow{r}{G} \arrow[swap]{d}{G} & \M{0; 1} \arrow{ld}{G²} \arrow{d}{G} \\
\M{0; -1} & \arrow{l}{G} \M{-1; 0}
\end{tikzcd}
\begin{tikzcd}
\M{1; 1} \arrow{rd}{G²} \arrow{r}{G} \arrow[swap]{d}{G} & \M{-1; 1} \arrow{ld}{G²} \arrow{d}{G} \\
\M{-1; -1} & \arrow{l}{G} \M{1; -1}
\end{tikzcd}
(including the inverses $G⁻¹ = G³$ and $(G²)⁻¹ = G²$)

Morphisms $g : x → y$ are elements of $g ∈ G$ such that $g · x = y$.

The orbit $Oₓ = \{ g·x | g ∈ G \}$.
There are two orbits which we can observe from the diagrams. They are
$$ O_𝐮 = \{ 𝐮, G𝐮, G²𝐮, G³𝐮 \} $$
$$ O_𝐯 = \{ 𝐯, G𝐯, G²𝐯, G³𝐯 \} $$
We can pick one of these diagrams to form the skeleton $\catname{skT}_G X$
which is equivalent to any of these orbit partitions.

Take an $x ∈ X$ as a representative of its orbit $Oₓ$. Then by the previous
section's mentioned equivalency of categories $\catname{skC} ↪ \catname{C}$
we must have
$$ \Hom_{\catname{skT}_G X}(Oₓ, O_y) ≌ \Hom_{\catname{T}_G X}(x, x) = Gₓ $$
These are the automorphisms of $x$, the $g ∈ G$ such that $g·x = x$.
$Gₓ$ is the stabilizer of $x$ with respect to $G$.

The **skeleton** of the translation groupoid $\catname{skT}_G X$ is
simply the two objects $O_𝐮, O_𝐯$ with no arrows between them.
They are discrete, and there's no morphisms between the objects.

This argument implies any pair of elements in the same orbit, must have
isomorphic stabilizers.

The skeleton of the translation groupoid, as a category, is the disjoint
union of the stabilizer groups, indexed by the orbits $Oₓ$. In our example,
the stabilizer groups are trivial.

The set of morphisms for the translation groupoid with domain $x$ is
isomorphic to $G$. That is $\Hom_{\catname{T}_G X}(x, y)$ for all $y ∈ Oₓ$.
Each of these hom-sets is isomorphic to $\Hom_{\catname{T}_G X}(x, x) = Gₓ$.

$$ |G| = |Oₓ| |Gₓ| $$

## $D₄$

\begin{align*}
G &= \{ a, b : a⁴ = e, b² = e, bab⁻¹ = a⁻¹ \} \\
  &= \{ e, a, a², a³, b, ab, a²b, a³b \}
\end{align*}
Let our set $X$ be the verices of a square
$$ X = \{ 1, 2, 3, 4 \} $$
The orbit of each vertex $x$ is the entire group since vertices can
be sent to any other vertex through rotations,
$$ Oₓ = \{ 1, 2, 3, 4 \} $$
The stabilizer for 3 is
$$ G₃ = \{ e, b \} $$

We now formalize this as per above.

$$ X : \catname{B}G → \catname{Set} $$
$$ X(s) = \{ 1, 2, 3, 4 \} $$
with $X$ mapping morphisms identically. We now prove $X$ is functorial.
Let $g : s → s$ define an arrow in $\catname{B}G$. Define the morphism
$F(g) : \{ 1, 2, 3, 4 \} → \{ 1, 2, 3, 4 \}$ by $F(g)(s) = m·s$. Then
\begin{align*}
X(g₁ ∘ g₂)(s) &= (m₁ m₂)·s \\
    &= m₁ · (m₂ · s) \\
    &= X(m₁)(X(m₂)(s)) \\
    &= (X(m₁) ∘ X(m₂))(s)
\end{align*}

![](d4.png)
![](d4-tgx.png)

*The entire group, and its skeletal translation groupoid.*

The translation groupoid is the dihedral group applied to all sets $S$ where
$|S| = 4$. Which is an infinite collection of discrete identical graphs.

Each node has exactly 2 automorphisms:

```py
1 ()
2 ()
3 ()
4 ()
1 (2,4)
3 (2,4)
2 (1,3)
4 (1,3)
```
Which are the stabilizers.
All elements in the same orbit thus have isomorphic stabilizers.

The disjoint union of the stabilizer groups is:
$$ \{ (O₁, \{e, b\}), (O₃, \{e, b\}), (O₂, \{e, a²b\}), (O₄, \{e, a²b\}) \} $$
The set of morphisms with domain $x$ is isomorphic to $G$.

Another way of looking at it is the disjoint union of hom-sets
$\Hom_{\catname{T}_G X}(x, y)$ for $y ∈ Oₓ$ where each set is isomorphic
to $\Hom_{\catname{T}_G X}(x, x) = Gₓ$.

$$ |G| = |Oₓ| |Gₓ| $$

# Full, Faithful and Essentially Surjective $⟺$ Equivalent Categories

Fully faithful functors are bijective on hom-sets. For example given the
category with objects $c, c'$, then we expect a bijection for
$\Hom(c, c), \Hom(c', c')$ and $\Hom(c, c')$.

## Equivalent Category is Essentially Surjective

Suppose $F : C → D, G : D → C, α : 1_C ≌ GF, β : FG ⟹  1_D$ defines an
equivalence of categories.

Pick any $d ∈ D$. Then we have that $Gd ∈ C$. This object is isomorphic to $d$
since
$$ β_d FGd = d $$

## Equivalent Category is Faithful

\begin{tikzcd}
c \arrow{r}{F} \arrow{d}{f \textrm{ or } g} & Fc \arrow{r}{G} \arrow{d}{Ff = Fg} & GFc \arrow{r}{α⁻¹} \arrow{d}{GFf = GFg} & c \arrow{d}{f = g} \\
c' \arrow{r}{F} & Fc' \arrow{r}{G} & GFc' \arrow{r}{α⁻¹} & c'
\end{tikzcd}

We can simplify this argument using the lemma.

\begin{tikzcd}
c \arrow{r}{≌} \arrow{d}{f \textrm{ or } g} & GFc \arrow{d}{GFf = GFg} \\
c' \arrow{r}{≌} & GFc'
\end{tikzcd}
with the isomorphisms determining a unique morphism $f' : c → c' ⟹  f = g$.

## Equivalent Category is Full

Let $k : Fc → Fc'$, then $Gk : GFc → GFc'$
\begin{tikzcd}
GFc \arrow{r}{≌} \arrow{d}{Gk} & c \ar[d, dotted, "h"] \\
GFc' \arrow{r}{≌} & c'
\end{tikzcd}
induces a unique map $h: c → c'$ such that
$$ Gk = GFh ⟹  k = Fh $$
by faithfulness of $G$.

## Fully Faithful and Essentially Surjective defines an Equivalent Category

### $β : FG ⟹  1_D$

Essentially surjective means $∀d ∈ D, ∃c ∈ C : Fc ≌ d$.

\begin{tikzcd}
c \arrow{r}{F} & Fc \ar[r, dotted, "h"] & d \\
\end{tikzcd}

Take any $d ∈ D$, there is a
$$ β_{Fc}(Fc) = d $$
We will construct *maps* $G$ and $β$. Set
$$ Gd := c $$
$$ βFc := d $$
we now have
$$ G = \M{
     , d, d',;
    ⋯, , , ⋯   ;
     , c, c', 
} $$
$$ β = \M{
     , Fc, Fc',;
    ⋯, , , ⋯   ;
     , d, d', 
} $$
these maps are well-formed since for distinct $d ≠ d'$, we must have
$c ≠ c'$ otherwise $Fc = Fc' ⟹  d = d'$ which is a contradiction.
Likewise if $Fc = Fc'$, then the bijectivity of hom-sets means that
$\Hom(Fc, Fc) = \Hom(d, d) = \Hom(d', d')$ which means $d = d'$ since they
share the same identity arrow.

Continuing,

\begin{tikzcd}
    A & B \ar{r}{g} & C \ar{r}{h} & D \ar[ll,bend right, shift right,"h"]
\end{tikzcd}

\begin{tikzcd}
d \ar{d}{h} & Gd  = c  \ar{r}{F} & Fc \ar[d, dotted, "FGh"] \ar[ll, bend right, shift right, "β"] \\
d' \ar[rr, bend right, shift right, "β⁻¹"] & Gd' = c' \ar{r}{F} & Fc'
\end{tikzcd}
where we construct $FGh : FGd → FGd'$ by
$$ FGh = β⁻¹hβ $$

Since $F$ is fully faithful, the map
$$ \Hom(Gd, Gd') → Hom(FGd, FGd') $$
is bijective.

which allows us to induce the map $Gh : Gd → Gd'$
\begin{tikzcd}
Gd \ar{r}{F} \ar[d, dotted, "Gh"] & FGd \ar{d}{FGh} \\
Gd' \ar{r}{F} & FGd'
\end{tikzcd}
thus
$$ β : FG ⟹  1_D $$
since
\begin{tikzcd}
FGd \ar{r}{β_d} \ar[d, dotted, "FGh"] & d \ar{d}{h} \\
FGd' \ar{r}{β_{d'}} & d'
\end{tikzcd}
commutes, so $β$ is a natural transformation.

### Exercise 1.5.iv: Fully Faithful Functors Reflects and Creates Isomorphisms

Let $F : C → D$ be a fully faithful functor.

#### $Ff ∈ D$ is an Isomorphism $⟹$ $f ∈ C$ is an Isomorphism

Let $Fh : Fc' → Fc ∈ D$ such that $Fh · Ff = 1_{Fc}$ and $Ff · Fh = 1_{Fc'}$.

Since $F$ is fully faithful, there is a preimage $h : c' → c$, then we see
that $FgFf = 1_{Fc} = F1_C = F(gf) ⟹  1_C = gf$ (and vice-versa) so $f$ is
also an isomorphism.

#### $Fx ≌ Fy ∈ D ⟹  x ≌ y ∈ C$

$f : Fx → Fy, g: Fy → Fx ∈ D : gf = 1_{Fx}$, but by fully faithful $F$
there are $h, k$ such that $hk = 1_x$ and $kh = 1_y ⟹  x ≌ y$.

### $α : 1_C ⟹  GF$

By (ii) above, if $Fα = β⁻¹$ is isomorphic, then so is $α$.

We know $β : FG ⟹  1_D$ is an isomorphism, so we have
$$ β_d : FGd → d $$
since $β$ is isomorphic, we also have
$$ β_d⁻¹ : d → FGd $$
since $F$ is essentially surjective, $∃c ∈ C$, such that $d = Fc$ so we have
$$ β_{Fc}⁻¹ : Fc → FGFc $$
since $F$ is fully faithful, set $Fα_c = β_{Fc}⁻¹$ which gives a unique
$$ α_c : c → GFc $$

To show $α$ is a natural transformation, we must show this diagram commutes
\begin{tikzcd}
c \ar{r}{α_c} \ar{d}{f} & GFc \ar{d}{GFf} \\
c' \ar{r}{α_{c'}} & GFc'
\end{tikzcd}

Now we know that $β$ is a natural transformation and hence this diagram
commutes,
\begin{tikzcd}
FGd \ar{r}{β_d} \ar{d}{FGh} & d \ar{d}{h} \\
FGd' \ar{r}{β_{d'}} & c'
\end{tikzcd}
since $d = Fc$, we have
\begin{tikzcd}
Fc  \ar{r}{Fα_c} \ar{d}{Ff} & FGFc  \ar{r}{β_{Fc}} \ar{d}{FGFf} & Fc \ar{d}{Ff} \\
Fc' \ar{r}{Fα_{c'}}         & FGFc' \ar{r}{β_{Fc'}}             & Fc'
\end{tikzcd}
our aim is to show the left square commutes, since then
$$ FGFf ∘ Fα_c = Fα_c ∘ Ff ⟹  F(GFf ∘ α_c) = F(α_{c'} ∘ f) $$
which by the faithfulness of $F$ means
$$ GFf ∘ α_c = α_{c'} ∘ f $$

Notice in the diagram that the outer box commutes since $Fα_c = β_{Fc}⁻¹$ so
$β_{Fc} Fα_c = 1_{Fc}$ and likewise for $c'$ so that
$$ Ff β_{Fc} Fα_c = β_{Fc'} Fα_{c'} Ff $$

Likewise since $β$ is a natural transformation, the right hand square commutes.

We see the following equivalent sequence of moves
$$ RRD = RDR = DRR $$
since $β$ is invertible, we can right cancel $R$ from $RDR = DRR$ giving
us $RD = DR$
$$ FGFf ∘ Fα_c = Fα_{c'} ∘ Ff $$
as desired.

### Show $G$ is Functorial

Let $Gd ∈ C$, show that $FG1_d = F1_{Gd}$
\begin{tikzcd}[column sep=huge]
FGd \ar{r}{β_d} \ar[swap]{d}{FG1_d \textrm{ or } F1_{Gd}} & d \ar{d}{1_d} \\
FGd \ar{r}{β_d}                                     & d
\end{tikzcd}
the diagram commutes for both $FG1_d$ and $F1_{Gd}$, but $F$ is faithful
so
$$ 1_d ∘ β_d = FG1_d = F1_{Gd} ⟹  G1_d = 1_{Gd} $$

Then for $h∘h'$
\begin{tikzcd}[column sep=large]
  \ar{r}{β} \ar[swap]{d}{FG(h·h') \textrm{ or } FGh ∘ FGh'} &   \ar{d}{h·h'} \\
  \ar{r}{β} & \;
\end{tikzcd}
use the same trick as above.

Thus $G$ is functorial.

# Ex 1.6

## 1.6.iv

Let $U : \Ring → \Grp$ be the forgetful functor. Forgetful functors are
always fully faithful.

From the Wiki article on epimorphism, we have:

* Every epimorphism in $\Grp$ is surjective.
* The inclusion map $ι : ℤ ↪  ℚ$ is a non-surjective epimorphism.

If $ι$ is non-surjective, then we would expect $Uι$ to remain non-surjective.

