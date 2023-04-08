# Dimension

Example: 
$$V: y^2 = x^3 - x, \bar{\mathbb{Q}}(V) = \bar{\mathbb{Q}}(x, \sqrt{x^3 - x})$$
$$\bar{\mathbb{Q}} \subseteq \bar{\mathbb{Q}}(x) \subseteq \bar{\mathbb{Q}}(x, \sqrt{x^3 - x})$$
$x$ is transcendetal of deg = 1 over $\bar{\mathbb{Q}}$, but $\sqrt{x^3 - x}$ is an algebraic extension
of $\bar{\mathbb{Q}}(x)$.

So the dimension of $V = 1$.

Another example:
Let $V$ be the y axis, then $I = \langle x \rangle \subseteq \mathbb{Q}[x, y]$
$$\bar{\mathbb{Q}}(V) \cong \bar{\mathbb{Q}}(y) / \bar{\mathbb{Q}}$$
Which has a transcendence degree of 1.

# Questions

## 1.3

First an example:

$$V: y^2 = x^3 + x$$

We will align the curve $f$ at the origin $P = (0, 0)$.

\begin{align*}
D_p(f) &= f_y(P) + f_x(P) \\
    &= x
\end{align*}

The point will be singular when $D_p(f) = 0$ by I.1.5

We see here the curve above is smooth at $P$.

$$f \in M_p, f \notin M_p^2 \implies D_p(f) \neq 0$$

Which is equivalent to saying $f_{x_i}(P) \neq 0$ for some $i \iff$ rank$(f_{x_i}(P))_i = 1$.

By definition $T$ is an affine hyperplane, and if $P$ is smooth then dim $T =$ dim $V$.
Otherwise $T = \mathbb{A}^n$.

$$D_p : M_p \rightarrow (K^n)^*$$
$$D_p(f) = \sum f_{x_i}(P) x_i$$

ker $D_p = M_p^2$, and $D_p(x_i) = x_i$ is a basis of $(K^n)^*$, so $D_p$ is surjective.

$$M_p / M_p^2 \cong (K^n)^*$$

$$\textrm{dim}(V) = n - 1$$

$$M_p / M_p^2 \rightarrow (K^n)^* \rightarrow \bar K$$

Likewise for all $t \in T$, $D_p(g) \neq 0, D_p(g)(t) = 0 \implies g \in \langle f \rangle$.

A smooth point has a well defined hyperplane with reduced dimension $n - 1$, which is the dimension
of $V$. When $f$ contains linear terms, this allows us to reduce the dimension by 1, so creating a
smooth point.

$$x \equiv y^2 - x^3 \equiv 0 \quad (\textrm{mod} \; M_p^2)$$

## 1.6

The morphism is regular at all P. The only zero value is at $\infty = [0 : 1 : 0]$.

$$x^2 = \frac{z}{x}(y^2 - z^2)$$

\begin{align*}
[x^2 : xy : z^2] &= [\frac{z}{x}(y^2 - z^2) : xy : z^2] \\
    &= [z(y^2 - z^2) : x^2 y : x z^2] \\
    &= [z(y^2 - z^2) : \frac{z}{x}(y^2 - z^2) y : xz^2 ] \\
    &= [xz(y^2 - z^2) : z(y^3 - y z^2) : x^2 z^2 ] \\
    &= [x(y^2 - z^2) : y^3 - y z^2 : x^2 z ] \\
\end{align*}

$$\phi(\infty) = \infty$$

As expected.
