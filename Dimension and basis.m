clear all;
clc;
v1=[1;2;1;-1];v2=[3;1;0;5];v3=[0;5;3;-8];
v=[v1 v2 v3];
[r,basiccol]=rref(v);
r_1=rank(rref(v));
fprintf('dimension of subspace spanned by the given vectors is given by');
r_1
fprintf('basis of subspace is given by');
b=v(:,basiccol)
