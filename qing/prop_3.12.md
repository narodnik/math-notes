# The Universal Property of Localization

Let $A$ be a commutative ring and $f \in A$. The localization $A_f = A[T]/(fT - 1)$ consists of fractions of the form $a/f^n$ for $a \in A$ and $n \geq 0$, with the usual addition and multiplication rules for fractions.

**Universal Property:** Let $\varphi : A \to B$ be a ring homomorphism such that $\varphi(f)$ is a unit in $B$. Then there exists a unique ring homomorphism $\tilde{\varphi} : A_f \to B$ making the following diagram commute:

$$
\begin{array}{ccc}
A & \xrightarrow{\varphi} & B \\
\downarrow & \nearrow \tilde{\varphi} & \\
A_f & &
\end{array}
$$

Explicitly, $\tilde{\varphi}$ is given by $\tilde{\varphi}(a/f^n) = \varphi(a) \cdot \varphi(f)^{-n}$.

**Proof sketch:** The map $a/f^n \mapsto \varphi(a)\varphi(f)^{-n}$ is well-defined because any two representations $a/f^n = a'/f^m$ of the same element satisfy $af^m = a'f^n$ in $A$, and applying $\varphi$ gives $\varphi(a)\varphi(f)^m = \varphi(a')\varphi(f)^n$. Since $\varphi(f)$ is invertible in $B$, we can multiply by $\varphi(f)^{-(n+m)}$ to obtain $\varphi(a)\varphi(f)^{-n} = \varphi(a')\varphi(f)^{-m}$. The homomorphism properties follow directly from the definition, and uniqueness holds because any such homomorphism must satisfy $\tilde{\varphi}(1/f) = \tilde{\varphi}(f/1)^{-1} = \varphi(f)^{-1}$, which determines $\tilde{\varphi}$ on all elements.

# Flat Modules

**Definition:** If $R$ is a ring, then a right $R$-module $A$ is flat if $A \otimes_R \square$ is an exact functor; that is, whenever
$$
0 \to B' \xrightarrow{i} B \xrightarrow{p} B'' \to 0
$$
is an exact sequence of left $R$-modules, then
$$
0 \to A \otimes_R B' \xrightarrow{1_A \otimes i} A \otimes_R B \xrightarrow{1_A \otimes p} A \otimes_R B'' \to 0
$$
is an exact sequence of abelian groups. Flatness of left $R$-modules is defined similarly.

Because the functors $A \otimes_R \square : R\text{-Mod} \to \text{Ab}$ are right exact, we see that a right $R$-module $A$ is flat if and only if, whenever $i : B' \to B$ is an injection, then $1_A \otimes i : A \otimes_R B' \to A \otimes_R B$ is also an injection.

### Flat Homomorphisms

A ring homomorphism $\varphi : A \to B$ is called **flat** if $B$ is flat as an $A$-module (where the $A$-module structure on $B$ is given by $a \cdot b = \varphi(a)b$ for $a \in A$, $b \in B$).

Equivalently, $\varphi : A \to B$ is flat if the functor $B \otimes_A \square : A\text{-Mod} \to \text{Ab}$ is exact. This means that for every injection $M' \hookrightarrow M$ of $A$-modules, the induced map $B \otimes_A M' \to B \otimes_A M$ is also injective.

**Example:** The localization homomorphism $A \to S^{-1}A$ is flat (Corollary 1.2.11).

# Lemma 2.10

Let $A$ be a ring, $S$ a multiplicative subset of $A$, and $M$ an $A$-module. There exists a canonical isomorphism of $S^{-1}A$-modules:
$$
M \otimes_A S^{-1}A \simeq S^{-1}M
$$

**Proof:** We have a canonical homomorphism of $A$-modules $M \otimes_A S^{-1}A \to S^{-1}M$ defined by $m \otimes (a/s) \mapsto (am)/s$. This is an isomorphism because it has an inverse given by $m/s \mapsto m \otimes (1/s)$ (this map is well defined). Moreover, this homomorphism is clearly compatible with the structure of $S^{-1}A$-modules.

# Corollary 1.2.11

For any multiplicative subset $S$ of $A$, the canonical homomorphism $A \to S^{-1}A$ is flat.

**Proof:** Let $N \subseteq M$ be an $A$-module inclusion. By construction, $S^{-1}N$ is a submodule of $S^{-1}M$. Hence the induced map $N \otimes_A S^{-1}A \to M \otimes_A S^{-1}A$ is injective, which shows $S^{-1}A$ is flat over $A$.

# Lemma 2.7

Let $\mathcal{U} = \{U_i\}_i$ be a family of open subsets of $X$. Let $U = \bigcup_i U_i$ and $U_{ij} = U_i \cap U_j$. For any presheaf $\mathcal{F}$ on $X$, we have a complex of Abelian groups $C_\bullet(\mathcal{U}, \mathcal{F})$:

$$
0 \to \mathcal{F}(U) \xrightarrow{d_0} \prod_i \mathcal{F}(U_i) \xrightarrow{d_1} \prod_{i,j} \mathcal{F}(U_{ij})
$$

defined by $d_0 : s \mapsto (s|_{U_i})_i$ and $d_1 : (s_i)_i \mapsto (s_i|_{U_{ij}} - s_j|_{U_{ij}})_{i,j}$.

**Lemma 2.7:** With the above notation, $\mathcal{F}$ is a sheaf if and only if $C_\bullet(\mathcal{U}, \mathcal{F})$ is exact for every family of open subsets $\mathcal{U}$ of $X$.

**Proof:** We note that the injectivity of $d_0$ is equivalent to condition (4) of Definition 2.2 (locality/uniqueness), while the equality $\ker d_1 = \operatorname{im} d_0$ is equivalent to condition (5) (gluing).

# Exercise 2.7

*Let $\mathcal{B}$ be a base of open subsets on a topological space $X$. Let $\mathcal{F}, \mathcal{G}$ be two sheaves on $X$. Suppose that for every $U \in \mathcal{B}$ there exists a homomorphism $\alpha(U) : \mathcal{F}(U) \to \mathcal{G}(U)$ which is compatible with restrictions. Show that this extends in a unique way to a homomorphism of sheaves $\alpha : \mathcal{F} \to \mathcal{G}$. Show that if $\alpha(U)$ is surjective (resp. injective) for every $U \in \mathcal{B}$, then $\alpha$ is surjective (resp. injective).*

**Solution:**

### Extension to a sheaf homomorphism

For any open set $U \subseteq X$, write $U$ as a union of basic open sets from $\mathcal{B}$: $U = \bigcup_{i \in I} U_i$ with $U_i \in \mathcal{B}$. By the sheaf property of $\mathcal{F}$ and $\mathcal{G}$, we have:
$$
\mathcal{F}(U) = \ker\left(\prod_{i \in I} \mathcal{F}(U_i) \to \prod_{i,j \in I} \mathcal{F}(U_i \cap U_j)\right)
$$

Define $\alpha(U) : \mathcal{F}(U) \to \mathcal{G}(U)$ as follows: for $s \in \mathcal{F}(U)$, let $\alpha(U)(s)$ be the unique section in $\mathcal{G}(U)$ whose restriction to each $U_i$ equals $\alpha(U_i)(s|_{U_i})$. This is well-defined because the maps $\alpha(U_i)$ are compatible with restrictions:
$$
\alpha(U_i)(s|_{U_i})|_{U_i \cap U_j} = \alpha(U_i \cap U_j)(s|_{U_i \cap U_j}) = \alpha(U_j)(s|_{U_j})|_{U_i \cap U_j}
$$
so the sections $\alpha(U_i)(s|_{U_i})$ glue to a unique section of $\mathcal{G}(U)$.

**Uniqueness:** Any sheaf homomorphism extending the $\alpha(U)$ must satisfy the gluing condition above, so the construction is forced.

### Surjectivity

If each $\alpha(U)$ for $U \in \mathcal{B}$ is surjective, let $t \in \mathcal{G}(V)$ for any open $V \subseteq X$. Write $V = \bigcup_i V_i$ with $V_i \in \mathcal{B}$. For each $i$, surjectivity of $\alpha(V_i)$ gives $s_i \in \mathcal{F}(V_i)$ with $\alpha(V_i)(s_i) = t|_{V_i}$.

On overlaps $V_i \cap V_j$, we have $\alpha(V_i \cap V_j)(s_i|_{V_i \cap V_j} - s_j|_{V_i \cap V_j}) = 0$. Since $\alpha(V_i \cap V_j)$ is injective on $V_i \cap V_j \in \mathcal{B}$ (assuming $\mathcal{B}$ is closed under finite intersections, or working with a basis), we get $s_i|_{V_i \cap V_j} = s_j|_{V_i \cap V_j}$. By the sheaf property of $\mathcal{F}$, the $s_i$ glue to $s \in \mathcal{F}(V)$ with $\alpha(V)(s) = t$.

### Injectivity

If each $\alpha(U)$ for $U \in \mathcal{B}$ is injective and $s \in \mathcal{F}(V)$ satisfies $\alpha(V)(s) = 0$, then for any $U \in \mathcal{B}$ with $U \subseteq V$, we have $\alpha(U)(s|_U) = 0$. By injectivity of $\alpha(U)$, $s|_U = 0$. Since $\mathcal{B}$ is a basis, this implies $s = 0$ in $\mathcal{F}(V)$ (a section that vanishes on a basis must be zero by the sheaf property).

# Lemma 3.7

*Let $X = \text{Spec}(A)$ be an affine scheme, and let $g \in A$. Then the open subset $D(g)$, endowed with the structure of a ringed topological space induced by that of $X$, is an affine scheme isomorphic to $\text{Spec}(A_g)$ (as a ringed topological space).*

Let $Y$ denote the affine scheme $\text{Spec}(A_g)$. By Lemma 1.7(c), we canonically have a topological open immersion $i : Y \to X$ whose image is $D(g)$. Let $D(h)$ be a principal open subset of $X$ contained in $D(g)$. Let $\bar{h}$ be the image of $h$ in $A_g$. We canonically have $\mathcal{O}_X(D(h)) = A_h \simeq (A_g)_{\bar{h}} = \mathcal{O}_Y(D(\bar{h})) = i_*\mathcal{O}_Y(D(h))$. As the $D(h)$ form a base of open subsets on $D(g)$, this shows that $i$ induces an isomorphism from $(Y, \mathcal{O}_Y)$ onto $(D(g), \mathcal{O}_X|_{D(g)})$ (Exercise 2.7).

# Definition 3.11

Let $X$ be a scheme and $f \in \mathcal{O}_X(X)$. We denote by $X_f$ the set of $x \in X$ such that $f_x \in \mathcal{O}_{X,x}^*$ (i.e., $f_x$ is a unit in the stalk at $x$).

Let us consider the following condition:

$$
\begin{cases}
X \text{ admits a covering by a finite number of affine} \\
\text{open subsets } \{U_i\}_i \text{ such that } U_i \cap U_j \text{ also admits} \\
\text{a finite covering by affine open subsets.}
\end{cases}
\tag{3.2}
$$

Affine schemes always verify this condition, as do Noetherian schemes (Proposition 3.46(a)).

# Proposition 3.12

*Let $X$ be a scheme and $f \in \mathcal{O}_X(X)$. Then $X_f$ is an open
subset of $X$. Moreover, if $X$ verifies condition (3.2) above, then the restriction
$\mathcal{O}_X(X) \to \mathcal{O}_X(X_f)$ induces an isomorphism $\mathcal{O}_X(X)_f \simeq \mathcal{O}_X(X_f)$.*

## $\mathcal{O}_X(X) \to \mathcal{O}_X(X_f)$ induces $\alpha : \mathcal{O}_X(X)_f \to \mathcal{O}_X(X_f)$

If $x \in X_f$, then by definition $f_x$ is invertible in the stalk $\mathcal{O}_{X,x}$. Thus there exists an open neighborhood $U \ni x$ and a $g \in \mathcal{O}_X(U)$ such that $f|_x g|_x = 1$ in $\mathcal{O}_{X,x}$. Since equality in the stalk means equality on some open neighborhood, it follows that $(f g)|_V = 1$ in an open neighborhood $V \subseteq U$ of $x$.

**Why $V \subseteq X_f$:** For any point $y \in V$, the section $(fg)|_V = 1$ restricts to $f_y g_y = 1$ in the stalk $\mathcal{O}_{X,y}$. This shows $f_y$ is invertible (with inverse $g_y$), hence $y \in X_f$ by definition. Therefore $V \subseteq X_f$.

**Why $X_f$ is open:** We have shown that every point $x \in X_f$ admits an open neighborhood $V$ such that $V \subseteq X_f$. This means $X_f = \bigcup_{x \in X_f} V_x$ is a union of open sets, hence $X_f$ itself is open. Moreover, by glueing
the inverses $g \in \mathcal{O}_X(V)$ of $f$ as the $V$ vary, we obtain an element of $\mathcal{O}_X(X_f)$,
the inverse of $f|_{X_f}$.

Consequently, $\mathcal{O}_X(X) \to \mathcal{O}_X(X_f)$ induces a homomorphism
$\alpha : \mathcal{O}_X(X)_f \to \mathcal{O}_X(X_f)$.

**Why $\alpha$ exists:** The restriction map $\rho : \mathcal{O}_X(X) \to \mathcal{O}_X(X_f)$ sends $f \mapsto f|_{X_f}$. Since we constructed an inverse of $f|_{X_f}$ in $\mathcal{O}_X(X_f)$ by glueing the local inverses $g$, the element $f|_{X_f}$ is a unit in $\mathcal{O}_X(X_f)$. By the universal property of localization, any ring homomorphism $\varphi : A \to B$ with $\varphi(f)$ a unit factors uniquely through $A_f$. Applying this to $\rho : \mathcal{O}_X(X) \to \mathcal{O}_X(X_f)$, we obtain the unique homomorphism $\alpha : \mathcal{O}_X(X)_f \to \mathcal{O}_X(X_f)$ satisfying $\alpha(a/1) = \rho(a)$ for all $a \in \mathcal{O}_X(X)$. Explicitly, $\alpha(a/f^n) = \rho(a) \cdot (\rho(f))^{-n}$.

## $α$ is Iso

By hypothesis (3.2), $X$ admits a finite covering $\mathcal{U} = \{U_i\}_i$ by affine open
subsets.
Hence $X_f$ is the union of the $V_i := U_i \cap X_f = D(f|_{U_i})$.

Note: in a topological space if $X$ is the union of a finite covering of $U_i$ of open subsets, then if $Y$ is an open subset of $X$, then $Y$ is the union  of $V_i = Y \cap U_i$.

**Why $V_i = D(f|_{U_i})$:** Since each $U_i = \text{Spec}(A_i)$ is affine, the distinguished open $D(f|_{U_i}) \subseteq \text{Spec}(A_i)$ consists precisely of the primes $\mathfrak{p} \subset A_i$ where $f \notin \mathfrak{p}$, which is equivalent to $f$ being a unit in the stalk $A_{i,\mathfrak{p}}$. This is exactly the definition of $U_i \cap X_f$.

$$⟹  V_i := U_i \cap X_f = D(f|_{U_i}) $$

For simplicity, let us also denote by $f$ its restriction to any open subset of $X$. We have
$\mathcal{O}_X(U_i)_f = \mathcal{O}_X(V_i)$ by virtue of Lemma 3.7. With the notation of Lemma 2.7,
we have an exact complex $C_\bullet(\mathcal{U}, \mathcal{O}_X)$ where we can replace $\prod$ by $\oplus$ since there
are only a finite number of terms:

$$
0 \to \mathcal{O}_X(X) \xrightarrow{d_0} \bigoplus_i \mathcal{O}_X(U_i) \xrightarrow{d_1} \bigoplus_{i,j} \mathcal{O}_X(U_i \cap U_j)
$$

where $d_0$ sends $s \mapsto (s|_{U_i})_i$ and $d_1$ sends $(s_i)_i \mapsto (s_i|_{U_i \cap U_j} - s_j|_{U_i \cap U_j})_{i,j}$.

Therefore $C_\bullet(\mathcal{U}, \mathcal{O}_X) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f$ is still
exact owing to the flatness of $\mathcal{O}_X(X) \to \mathcal{O}_X(X)_f$ (Corollary 1.2.11):

Explicitly, using the standard isomorphism $A \otimes_A M \cong M$ for any ring $A$ and $A$-module $M$, we have:
$$
\begin{aligned}
\mathcal{O}_X(X) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f &\cong \mathcal{O}_X(X)_f, \\
\bigoplus_i \mathcal{O}_X(U_i) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f &\cong \bigoplus_i \left(\mathcal{O}_X(U_i) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f\right), \\
&\cong \bigoplus_i \mathcal{O}_X(U_i)_f, \\
\bigoplus_{i,j} \mathcal{O}_X(U_i \cap U_j) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f &\cong \bigoplus_{i,j} \mathcal{O}_X(U_i \cap U_j)_f.
\end{aligned}
$$

**Explanation of the second line:** The tensor product distributes over direct sums, giving $\bigoplus_i \left(\mathcal{O}_X(U_i) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f\right)$. Each $\mathcal{O}_X(U_i)$ is an $\mathcal{O}_X(X)$-algebra via the restriction map, and localization commutes with tensor products: $\mathcal{O}_X(U_i) \otimes_{\mathcal{O}_X(X)} \mathcal{O}_X(X)_f \cong \mathcal{O}_X(U_i)_f$ (where the right side means localization at the image of $f$ in $\mathcal{O}_X(U_i)$).

This gives
a commutative diagram:

$$
\begin{array}{ccccccccc}
0 & \to & \mathcal{O}_X(X)_f & \to & \bigoplus_i \mathcal{O}_X(U_i)_f & \to & \bigoplus_{i,j} \mathcal{O}_X(U_i \cap U_j)_f & \to & 0 \\
  &     & \downarrow \alpha &     & \downarrow &     & \downarrow \beta &     &   \\
0 & \to & \mathcal{O}_X(X_f) & \to & \bigoplus_i \mathcal{O}_X(V_i) & \to & \bigoplus_{i,j} \mathcal{O}_X(V_i \cap V_j) & \to & 0
\end{array}
$$

where the horizontal lines are exact.

**Why $\alpha$ is injective:** Let $a \in \mathcal{O}_X(X)_f$ with $\alpha(a) = 0$. By exactness of the top row, $a$ maps to some element $b \in \bigoplus_i \mathcal{O}_X(U_i)_f$. By commutativity of the left square, $b$ maps to $0$ in $\bigoplus_i \mathcal{O}_X(V_i)$. By exactness of the bottom row, $b$ must be in the kernel of $\bigoplus_i \mathcal{O}_X(U_i)_f \to \bigoplus_i \mathcal{O}_X(V_i)$, which (by the middle square commuting) equals the image of $\bigoplus_{i,j} \mathcal{O}_X(U_i \cap U_j)_f$. By exactness of the top row, $a$ must be $0$. Hence $\alpha$ is injective.

Let us note that
we have only used the hypothesis that $X$ admits a covering by a finite number
of affine open subsets. We can therefore apply the same reasoning to $U_i \cap U_j$,
which implies that $\beta$ is injective.

**Why $\alpha$ is an isomorphism given that $\alpha$ and $\beta$ are injective:**

We need to show $\alpha$ is surjective. Let $y \in \mathcal{O}_X(X_f)$. By exactness of the bottom row, there exists an element $(s_i) \in \bigoplus_i \mathcal{O}_X(V_i)$ mapping to $y$. Since the middle vertical map is surjective onto $\bigoplus_i \mathcal{O}_X(V_i)$ (as each $\mathcal{O}_X(U_i)_f \to \mathcal{O}_X(V_i)$ is an isomorphism by Lemma 3.7), we can lift $(s_i)$ to some $(t_i) \in \bigoplus_i \mathcal{O}_X(U_i)_f$.

By commutativity of the right square, $(t_i)$ maps to $0$ in $\bigoplus_{i,j} \mathcal{O}_X(V_i \cap V_j)$ (since $y$ maps to $0$ by exactness). Since $\beta$ is injective, $(t_i)$ must map to $0$ in $\bigoplus_{i,j} \mathcal{O}_X(U_i \cap U_j)_f$. By exactness of the top row, there exists $x \in \mathcal{O}_X(X)_f$ mapping to $(t_i)$. By commutativity of the left square, $\alpha(x) = y$. Hence $\alpha$ is surjective.

Since $\alpha$ is both injective and surjective, it is an isomorphism.

---

## Example: The Projective Line $\mathbb{P}^1_k$

Let $X = \mathbb{P}^1_k$ be the projective line over a field $k$, with homogeneous coordinates $[x_0 : x_1]$.

### Standard affine open covering

$$
\mathcal{U} = \{U_0, U_1\}, \quad \text{where } U_0 = \{x_0 \neq 0\} \cong \mathbb{A}^1_k, \quad U_1 = \{x_1 \neq 0\} \cong \mathbb{A}^1_k
$$

We have:
- $\mathcal{O}_X(U_0) = k[t]$ where $t = x_1/x_0$
- $\mathcal{O}_X(U_1) = k[s]$ where $s = x_0/x_1$
- $\mathcal{O}_X(U_0 \cap U_1) = k[t, t^{-1}] \cong k[s, s^{-1}]$ with $s = t^{-1}$

### Choosing a global section

Let $f = x_0 \in H^0(\mathbb{P}^1, \mathcal{O}(1))$. However, this is a section of $\mathcal{O}(1)$, not $\mathcal{O}_X$.
Instead, let's work with $f \in \mathcal{O}_X(X) = k$ (the only global functions are constants).

Take $f = 2 \in k$ (assuming $\text{char}(k) \neq 2$). Then:
- $X_f = \{p \in \mathbb{P}^1 \mid f_p \text{ is a unit in } \mathcal{O}_{X,p}\} = \mathbb{P}^1$ (since $2$ is invertible in $k$)

The proposition gives:
$$
\mathcal{O}_X(X)_f = k_2 \cong k \simeq \mathcal{O}_X(X_f) = k
$$

### A more interesting case: $X = \text{Spec}(A) \cup \text{Spec}(B)$

Let $A = k[x]$, $B = k[y]$, and glue along $D(x) \cong D(y)$ via $x \leftrightarrow y^{-1}$.
This gives $\mathbb{P}^1_k$ as before.

Now consider $f$ defined as $x$ on $U_0 = \text{Spec}(A)$ and $1$ on $U_1 = \text{Spec}(B)$.

**Check compatibility on overlap:** On $U_0 \cap U_1$, we have $x = y^{-1}$, and $1 = 1$. These don't match, so this isn't a valid global section.

### Example with a genuine non-constant function on a non-separated scheme

Let $X$ be the affine line with doubled origin. Let $A = k[t]$, and let $X = \text{Spec}(A) \cup_{\text{Spec}(A[t^{-1}])} \text{Spec}(A)$.

Take $f = t \in A$. Then:
- $X_f = D(t)$ in both copies of $\text{Spec}(A)$, which are identified
- $X_f = \mathbb{A}^1_k \setminus \{0\}$

The proposition gives:
$$
\mathcal{O}_X(X)_f = k[t]_t \cong k[t, t^{-1}] \simeq \mathcal{O}_X(X_f) = k[t, t^{-1}]
$$

### Verification

On $X_f = \mathbb{A}^1_k \setminus \{0\} = \text{Spec}(k[t, t^{-1}])$:
- $\mathcal{O}_X(X_f) = k[t, t^{-1}]$
- $\mathcal{O}_X(X)_f = k[t]_t = k[t, t^{-1}]$

The isomorphism is indeed $\frac{p(t)}{t^n} \mapsto \frac{p(t)}{t^n}$.

---

## Why This Proposition Matters

### The Big Picture

Proposition 3.12 establishes a fundamental bridge between **algebra** and **geometry** in scheme theory. It tells us that:

1. **Geometric side**: The set $X_f$ — where a function $f$ doesn't vanish (is invertible in the stalks) — forms an open subset of the scheme
2. **Algebraic side**: The ring of functions on this open set is just the localization of the global functions at $f$

**In plain English:** If you want to study your scheme where $f \neq 0$, you can algebraically localize the ring of global functions at $f$. This is incredibly powerful because it lets us translate geometric problems into algebraic computations.

### Why $X_f$ instead of $D(f)$?

For an **affine scheme** $X = \text{Spec}(A)$ and $f \in A$, the two notions coincide:
$$
X_f = D(f) = \{\mathfrak{p} \in \text{Spec}(A) \mid f \notin \mathfrak{p}\}
$$

However, for **general schemes**, they differ:

| Notation | When defined | Meaning |
|----------|--------------|---------|
| $D(f)$ | Only for affine $\text{Spec}(A)$ | Primes not containing $f$ |
| $X_f$ | Any scheme, any $f \in \mathcal{O}_X(X)$ | Points where $f$ is a unit in the stalk |

**Key distinction:** $X_f$ is defined for *any* scheme and *any* global section, not just affine ones. For non-affine schemes (like $\mathbb{P}^1$), there's no single ring $A$ where we can talk about $D(f)$ in the usual sense.

### When are they different?

**Example 1: Projective space $\mathbb{P}^1$**

The global functions on $\mathbb{P}^1$ are just constants: $\mathcal{O}_X(X) = k$. If $f = 2 \in k$, then:
- $X_f = \mathbb{P}^1$ (since $2$ is invertible everywhere)
- $\mathcal{O}_X(X)_f = k_2 \cong k = \mathcal{O}_X(X_f)$

This would be meaningless if we tried to write $D(2)$ — there's no single $\text{Spec}(A)$ here!

**Example 2: Non-separated schemes (affine line with doubled origin)**

Here $X = \text{Spec}(k[t]) \cup_{\text{Spec}(k[t, t^{-1}])} \text{Spec}(k[t])$. The function $f = t$ is a global section (it's $t$ on both copies). The set $X_f$ is $\mathbb{A}^1 \setminus \{0\}$ — the origin is removed from **both** copies. This natural geometric notion is captured by $X_f$, not by any $D(f)$.

### Practical Applications

**1. Computing with sheaves**

When you need to compute cohomology or other invariants of a scheme, you can work with localized rings instead of directly with open sets. For example, on $\mathbb{P}^n$ covered by affine opens $D_+(x_i)$, the transition functions are localizations.

**2. Gluing local data**

The proposition assures us that localizing at $f$ and then restricting to an affine open $U_i$ gives the same result as restricting first and then localizing. This compatibility is essential for patching together local constructions.

**3. Studying degenerations**

If $f$ vanishes along some subvariety (a "divisor"), then $X_f$ is the complement. The proposition tells us the algebraic structure of this complement is just $\mathcal{O}_X(X)_f$. This is used constantly in:

- **Resolution of singularities**: Study what happens when you remove the singular locus
- **Moduli problems**: Construct parameter spaces by removing bad loci
- **D-module theory**: Study differential equations away from singularities

**4. Computational algebraic geometry**

In computer algebra systems like Macaulay2 or Sage, when you work with quotients and localizations, this proposition guarantees that the geometric interpretation matches the algebraic computation.

### The Takeaway

Proposition 3.12 is the **scheme-theoretic generalization** of the basic fact that:
$$
\text{The ring of regular functions on } D(f) \subseteq \text{Spec}(A) \text{ is } A_f
$$

It tells us this works for *any* scheme (not just affine ones), provided we have a finite affine open covering. This is a foundational tool that makes scheme theory computationally tractable — we can often reduce global problems to local algebra on affine patches, then glue the results back together.
