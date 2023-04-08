import lib

var("a b c d")
r = ((a + b*(1 + sqrt(3))/2)*(c + d*(1 + sqrt(3))/2)).expand()
lib.render_latex(latex(r))

r = (((1 + sqrt(3))/2)^2).expand()
# This is not in the set
lib.render_latex(latex(r))

