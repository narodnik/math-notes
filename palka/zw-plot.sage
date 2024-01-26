M = Manifold(2, 'M')                  
X.<x,y> = M.chart()                
N = Manifold(2,'N')
U.<u,v> = N.chart()
z = (x + I*y)

def f(z):
    return z^2

F = M.diff_map(N,[f(z).real(),f(z).imag()], name='F')
p1=X.plot(U,mapping=F,number_values={x:20,y:20},
      ranges={x:(-3,3),y:(-3,3)},
      color='grey',thickness=1,label_axes=False) 
p1.show(aspect_ratio=0.6)

