# Pari3D
A Gnuplot wrapper for GP/PARI

## Usage
### Loading the wrapper from Pari
```
read("~/Downloads/pari3D.gp")
```
### Creating X and Y vectors
```
dxy(x0, x1, x2, y0, y1, y2)
```
Where x0/y0 is the start integer, x1/y0 the final one, and x2/y2 a decimal number to produce subdivisions

### Deploying matrix of coordinates to /tmp
```
sxyz(x, y, f)
```
Where x and y vectors are generated from dyx function above, and f a generic "f(x,y)" pari math function of yor choice*

### Ploting with gnuplot
```
splot()
```
