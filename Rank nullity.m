clear all;
clc;
fprintf('matrix of linear transformatransformation is given by');
A=[1 4 7;2 5 8;3 6 9]
rref(A);
fprintf('echelon form of A is given by');
rref(A)
R=rank(rref(A));
fprintf('rank of linear transformation is given by');
R
null(A);
fprintf('null space is given by');
null(A)
N=size(null(A),2);
fprintf('dimension of null space is given by');
N
if R+N==3
    fprintf('rank nullity theorem holds');
else
    fprintf('rank nullity theorem holds');
end
