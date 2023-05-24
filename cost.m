function costval = cost(W2,W3,W4,b2,b3,b4,x1,x2,y)
costvec = zeros(10,1);
for i = 1:10
    x =[x1(i);x2(i)];
    a2 = activate(x,W2,b2);
    a3 = activate(a2,W3,b3);
    a4 = activate(a3,W4,b4);
    costvec(i) = norm(y(:,i) - a4,2);
end
costval = norm(costvec,2)^2;
end