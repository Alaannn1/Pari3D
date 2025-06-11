dxy(x0, x1, x2, y0, y1, y2) = {
/*
dxy function means Deploy Matrix Coordinates x, y
*/
x = [n*x2 | n<-[floor(x0/x2)..floor(x1/x2)]];
y = [n*y2 | n<-[floor(y0/y2)..floor(y1/y2)]];
}

sxyz(x, y, f) = {
for(i=1,length(x), for(j=1, length(y), write("/tmp/data.dat", Str(x[i]," ",y[j]," ", iferr(f(x[i], y[j]), E, "NaN")) )); write("/tmp/data.dat", Str()))
}

splot() = {
system(Str("gnuplot -e \"set pm3d depth base noborder; set pm3d interp 2,2; set pm3d lighting specular 0.1; unset colorbox; set xyplane at 0; splot '/tmp/data.dat' with pm3d; pause -1\""));
system(Str("rm /tmp/data.dat"));
}
