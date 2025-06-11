# Pari3D
Gnuplot 3D plots from GP/PARI, 
> A wrapper to plot surface (x,y,z) functions with the power of the GP calculator.

## Usage
### Loading the wrapper from Pari
```
read("~/Downloads/Pari3D/pari3D.gp")
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
Where x and y vectors are generated from dyx function above, and f a generic "f(x,y)" pari math function of your choice

### Ploting with gnuplot
```
splot()
```
## Example 1
### Simple Riple function
```
dxy(-10,10,.125,-10,10,.125)
f(x,y) = sin((x^2 + y^2)/12)
sxyz(x, y, f)
splot()
```
## Example 1
### Real part of Riemann Zeta function
```
dxy(1,80,.25,-1,1,.125)
f(x,y) = real(zeta(y+I*x))
sxyz(x, y, f)
splot()
```
