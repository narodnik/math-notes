# Ex 3.1.2

$$ A = (a_{ij}), \qquad A^T = (a_{ij})^T = a_{ji} $$
$$ (A + B)^T = ((a_{ij}) + (b_{ij}))^T = a_{ji} + b_{ji} = A^T + B^T $$

# Ex 3.1.5

We use these simple rules:
$$ (XY)^T = Y^T X^T $$
$$ (X_{k,})^T = (X^T)_{,k} $$
and the column notation
$$ (XY){,k} = Y_{1,k} X_{,1} + ⋯ + Y_{n,k} X_{,n} $$

Putting this all together
\begin{align*}
(AB)^T_{,k} &= (B^T A^T)_{,k} = (A^T)_{1,k} (B^T)_{,1} + ⋯ + (A^T)_{n,k} (B^T)_{,n} \\
            &= A_{k,1} B_{1,} + ⋯ + A_{k,n} B_{n,}
\end{align*}
but $(AB)^T_{,k} = (AB)_{k,}$

