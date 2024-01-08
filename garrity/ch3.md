---
header-includes: |
    - \DeclareDifferential{\odif}{\mathrm{d}}
    - \DeclareMathOperator\div{div}
    - \DeclareMathOperator\ord{ord}
    - \let\dd\odif
---

# Canonical Divisor

Let $C = V(x² - yz)$ over $ℂ$.

We have the affine patches:
$$ r = \frac{x}{z}, s = \frac{y}{z} $$
$$ t = \frac{x}{y}, u = \frac{z}{y} $$
$$ v = \frac{y}{x}, w = \frac{z}{x} $$

Compute the divisor of the differential form $dr$.

First from sage we have:

```python
sage: K.<r> = FunctionField(QQ)
sage: _.<S> = K[]
sage: L.<s> = K.extension(r^2 - S)
sage: dr = r.differential()
sage: dr.divisor()
-2*Place (1/r)
```

which shows us $\div(\dd r) = -2(0 : 1 : 0)$.

The book is wrong. We must find a local parameter/uniformizer, and write the
differential as $α(t) \dd t$, then evaluate $\ord_P(α(t))$.

## Set $z = 1$

The curve is given by $r² - s = 0$ but there are no poles or zeros in this
patch.

## Set $y = 1$

$$ t² - u = 0 ⟹  \dd u = 2t \dd t $$
We note that $\pdv{f}{t}(P) = 2t$ so $u$ is not a local parameter for
$P = (0,0)$. However $t$ is a local parameter for all points.

$P = (0,0)$. However $r$ is a local parameter for all points.
Observe that $r = \frac{t}{u}$ and $s = \frac{1}{u}$.
Using $\dd r$ we get
\begin{align*}
\dd (\frac{t}{u}) &= \frac{1}{u}\dd t + t \dd (\frac{1}{u}) \\
    &= \frac{1}{u}\dd t - \frac{t}{u²} \dd u \\
    &= \frac{1}{u} \dd t - \frac{t}{u²} (2t \dd t) \\
    &= \frac{u - 2t²}{u²} \dd t \\
    &= \frac{-1}{t²} \dd t
\end{align*}
by substituting $\dd t$ for $\dd u$. Doing the opposite, we get
\begin{align*}
\dd (\frac{t}{u}) &= \frac{1}{u}\dd t - \frac{t}{u²} \dd u \\
    &= \frac{1}{u}\left(\frac{1}{2t} \dd u\right) - \frac{t}{u²} \dd u \\
    &= \left(\frac{1}{2tu} - \frac{t}{u²}\right) \dd u \\
    &= \frac{u - 2t²}{2tu²} \dd u \\
    &= \frac{-1}{2t³} \dd u \\
    &= \frac{-1}{2t³} \dd (t²) \\
    &= \frac{-1}{t²} \dd t \\
\end{align*}

While if we use $\frac{1}{2r}\dd s$, we get
\begin{align*}
\dd r &= \frac{1}{2r} \dd s \\
    &= \frac{u}{2t} \dd (\frac{1}{u}) \\
    &= -\frac{u}{2tu²} \dd u \\
    &= -\frac{1}{2t³} \dd u \\
    &= -\frac{1}{t²} \dd (t²) \\
\end{align*}
so all calculations agree.

$$ \div\left(\frac{-1}{t²}\right) = -2\div(-t) = -2\div(t) $$
and so $\div(\frac{-1}{t²}) = -2(0 : 1 : 0)$.

## Set $z = 1$

$$ 1 - vw = 0 ⟹  w\dd v = -v \dd w $$
We note that $\pdv{f}{v}(P) = -w$ so $w$ is not a local parameter for
$w = 0$, however no such point exists. Likewise for $v$, so we can
consider both of these coordinates as local.

Observe that $r = \frac{1}{w}$ and $s = \frac{v}{w}$.
Using $\dd r$ we get $\dd r = -\frac{1}{w²} dw$.

While if we use $\frac{1}{2r}\dd s$, we get
\begin{align*}
\dd r &= \frac{1}{2r} \dd s \\
    &= \frac{w}{2} \dd (\frac{v}{w}) \\
    &= \frac{w}{2} \left(\frac{1}{w} \dd v - \frac{v}{w²} \dd w\right) \\
    &= \frac{w}{2} \left(\frac{1}{w} \dd v - \frac{v}{w²} \left(\frac{-w}{v} \dd v \right)\right) \\
    &= \dd v \\
    &= \frac{w}{2} \left(\frac{1}{w} \left( \frac{-v}{w} \dd w \right) - \frac{v}{w²} \dd w\right) \\
    &= \frac{w}{2} \left(\frac{1}{w} \frac{-v}{w} - \frac{v}{w²} \right) \dd w \\
    &= \frac{w}{2} \frac{-2v}{w²} \dd w \\
    &= \frac{-1}{w²} \dd w \\
\end{align*}
There is no $w = 0$ on this patch however.

