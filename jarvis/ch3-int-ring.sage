import lib

K1.<α> = NumberField(x^3 - 175)
ά = α^2/5
assert ά^3 == 245
L.<X> = K1[]
K2.<ω> = K1.extension(X^2 + X + 1)
K.<a, b, c, d> = K2[]
θ1 = (a + b*α     + c*ά    )/3
θ2 = (a + b*α*ω   + c*ά*ω^2)/3
θ3 = (a + b*α*ω^2 + c*ά*ω  )/3

#lib.render_latex("\\omega_1 = " + latex(θ1))
#lib.render_latex("\\omega_2 = " + latex(θ2))
#lib.render_latex("\\omega_3 = " + latex(θ3))
lib.render_latex("\\omega_1 \\omega_2 \\omega_3 = " + latex(θ1*θ2*θ3) + " \\in \\mathbb{Z}")
lib.render_latex("\\omega_1 + \\omega_2 + \\omega_3 = " + latex(θ1 + θ2 + θ3) +
                 "\\in \\mathbb{Z}")
lib.render_latex(
    "\\omega_1 \\omega_2 + \\omega_1 \\omega_3 + \\omega_2 \\omega_3 = "
    + latex(θ1*θ2 + θ1*θ3 + θ2*θ3)
    + "\\in \\mathbb{Z}"
)

K.<a, b, c> = Integers(3)[]
lib.render_latex(latex(a^2 - 35*b*c) + "\\equiv 0 \\mod 3")
L.<a, b, c> = Integers(27)[]
lib.render_latex(
    latex(a^3 + 175*b^3 - 3*35*a*b*c + 245*c^3)
    + "\\equiv 0 \\mod 27"
)
K.<a, b, c> = Integers(3)[]
lib.render_latex(
    "\\implies"
    + latex(a^3 + 175*b^3 - 3*35*a*b*c + 245*c^3)
    + "\\equiv 0 \\mod 3"
)

solutions = []
for a_i in range(3):
    for b_j in range(3):
        for c_k in range(3):
            if K(a_i^2 + b_j*c_k) != 0 or L(a_i^3 + b_j^3 - c_k^3) != 0:
                continue
            lib.render_latex(f"{a_i}^2 + {b_j} \\times {c_k} \\equiv 0 \\mod 3")
            lib.render_latex(f"{a_i}^3 + {b_j}^3 - {c_k}^3 \\equiv 0 \\mod 27")
            solutions.append((a_i, b_j, c_k))
lib.render_latex("\\implies 3 \\mid a, 3 \\mid b, 3 \\mid c")

