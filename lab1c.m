function[d,t] =lab1b(np,nd)
if(nargin<1),np=1e7;nd=2 end
A =randn(np,nd); B =randn(np,nd);
d=zeros(np,1);
tic;
parfor i =1:np
    for j =1:nd
        c(i)=c(i)+(B(i,j)-A(i,j)).^2'
    end
    d(i)=sqrt(c(i));
end
t =toc;
delete(hp);