# Exercise 2.28

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

