% field V=(x, 2 y^2, 3 z^3) is 0

syms x y z
V=[x 2*y^2  3*z^3];
X=[x y z];
divCurl=divergence(curl(V,X),X)
