function val = FX(W2,W3,W4,b2,b3,b4,x)
    a2 = activate(x,W2,b2);
    a3 = activate(a2,W3,b3);
    val = activate(a3,W4,b4);
    
end