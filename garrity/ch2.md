# Exercise 2.2.8

$$ f(x, y) = (bx - ay)ᵏg(x, y) $$
Differentiating $f$ we get
$$ f'(x, y) = k(bx - ay)ᵏ⁻¹ g(x, y) + (bx - ay)ᵏ g'(x, y) $$
Note that constants don't matter to us so we can abstract this system
$$ f = u⁴g, \quad u' = 1, \quad A + A = A $$
$$ f' = (uᵏg)' = uᵏ⁻¹g + uᵏg' $$
Applying the rule recursively, we see that eventually $g$ is a term.
But we know that $g(P) ≠ 0$ and $u(P) = 0$.
\begin{align*}
f &= u⁴g \\
f' &= u³g + u⁴g' \\
f'' &= u²g + u³g' + u⁴g'' \\
f''' &= ug + u²g' + u³g'' + u⁴g''' \\
f'''' &= g + ug' + u²g'' + u³g''' + u⁴g'''' \\
\end{align*}

# Exercise 2.2.12

\begin{align*}
f(x, y, z)  &= (t₀s - s₀t)ᵏ g(a₁s + b₁t, a₂s + b₂t, a₃s + b₃t) \\
            &= (t₀s - s₀t)ᵏ g(c₁u + d₁v, c₂u + d₂v, c₃u + d₃v) \\
            &= (u₀v - v₀u)ʲ g(c₁u + d₁v, c₂u + d₂v, c₃u + d₃v) \\
\end{align*}
Because $(s, t)$ and $(u, v)$ define the same line, there is a transform between them
defined by
\begin{align*}
u &= α₁s + β₁t \\
v &= α₂s + β₂t
\end{align*}
Now we saw that $(t₀s - s₀t)ᵏ = (u₀v - v₀u)ʲ$ so
\begin{align*}
(t₀s - s₀t)ᵏ &= (u₀v - v₀u)ʲ \\
            &= (u₀(α₂s + β₂t) - v₀(α₁s + β₁t))ʲ \\
            &= (s(α₂u₀ - v₀α₁) + t(β₂u₀ - β₁v₀))ʲ
\end{align*}
Taking $s(α₂u₀ - v₀α₁) + t(β₂u₀ - β₁v₀)$ which is a linear equation and substituting $(s₀, t₀)$,
see that that it's zero and so conclude
$$ t₀s - s₀t = s(α₂u₀ - v₀α₁) + t(β₂u₀ - β₁v₀) $$
$$ ⇒ k = j $$
Alternatively we can argue by expanding both sides out and observing the degrees of $s$ and $t$
that $k = j$.

