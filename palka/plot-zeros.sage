pts = [e^(I*(theta)) for theta in srange(0, 2*pi, .1)] 
list_plot(pts, axes_labels=['Re(z)','Im(z)'], size=30)
