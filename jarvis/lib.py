import os
from IPython.core.completer import reverse_latex_symbol

def asciify(latex):
    ascii_latex = ""
    for char in latex:
        if char in reverse_latex_symbol:
            ascii_latex += reverse_latex_symbol[char]
        else:
            ascii_latex += char
    return ascii_latex

def render_latex(latex):
    latex = asciify(latex)
    os.system(f'latex2sixel "\\${latex}\\$"')

# Plot lattices
# nth degree polynomials

