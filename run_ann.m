%% run neural net
netbp
%%
load costvec
figure
semilogy([1:1e4:Niter],savecost(1:1e4:Niter))
costval = cost(W2,W3,W4,b2,b3,b4,x1,x2,y)

X = [x1; x2]
X = [X [0.2;0.7]]

for i=1:11;
    [~,ind]=max(FX(W2,W3,W4,b2,b3,b4,[X(1,i);X(2,i)]));
    group(i)=ind;
end
figure
scatter(X(1,:)', X(2,:)', 150, group','filled')
colormap(jet(5));