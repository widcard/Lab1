%function [d,t] = lab1a(np,nd)
 np = 1e6; nd =2; 
hp= gcp('nocreate');
if isempty(hp),hp = parpool(8); end 

dA = distributed.rand(np,nd);
dB = distributed.rand(np,nd);
d = distributed.zeros(np,1);
tic;
%dc= sqrt(sum((dA-dB)).^2);
% or 
for i  = 1:np
    c= 0;
    for j = 1:nd
        c = c+(dA(i,j)-dB(i,j)).^2;
    end
    d(i)= sqrt(c);
end
c = gather(dc);
t= toc;