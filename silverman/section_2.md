---
header-includes: |
    - \newcommand{\ord}{\operatorname{ord}}
---

# Ramification Index 2.6b

Definitions
$$\phi : C_1 \rightarrow C_2$$
$$\psi : C_2 \rightarrow C_3$$
$$f : C_2 \rightarrow K$$
$$f \phi : C_1 \rightarrow K$$

$$\ord_{\phi P}(t_{\phi P}) = 1$$
$$\ord_{\phi P}\left(t_{\phi P}^{e_\psi(\phi P)}\right) = e_\psi(\phi P) = \ord_{\phi P}(t_{\psi \phi P} \circ \psi)$$
Applying the pullback to $t_{\phi P}^{e_\psi(\phi P)}$ we get
$$\ord_P(t_{\phi P}^{e_\psi(\phi P)} \phi) = e_\psi(\phi P) \ord_P(t_{\phi P} \phi) = e_\psi(\phi P) e_\phi(P)$$
But we also apply it to $t_{\psi \phi P} \psi$ to get $t_{\psi \phi P} \psi \phi$ which has the same order.
And note that $e_{\psi \phi}(P) = \ord_P(t_{\psi \phi P} \psi \phi)$.

