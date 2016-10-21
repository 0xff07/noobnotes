syms s;
syms K1;
syms K2;

Gc_a = K1 / (s + 4);
Gc_b = K2 / (s - 1);

T1 = (Gc_a * Gc_b)/(1 + Gc_a * Gc_b * 6);
T2 = ((Gc_a)/(1 + Gc_a * (-2))) * ... 
     ((Gc_b)/(1 + Gc_b * (2)));

T1 = simplify(expand(T1));
T2 = simplify(simplify(T2));
disp('T1');
pretty(T1);
disp('T2');
pretty(T2);


S11 = diff(log(T1), K1, 1) * K1;
S12 = diff(log(T1), K2, 1) * K2;
S21 = diff(log(T2), K1, 1) * K1;
S22 = diff(log(T2), K2, 1) * K2;
S11 = simplify(expand(S11));
S12 = simplify(expand(S12));


ans1 = subs(S11, K1, 1);
ans1 = subs(ans1, K2, 1);
ans2 = subs(S12, K1, 1);
ans2 = subs(ans2, K2, 1);

disp('S11, S12');
pretty(ans1);
pretty(ans2);

S21 = simplify(expand(S21));
S22 = simplify(expand(S22));

ans1 = subs(S21, K1, 1);
ans1 = subs(ans1, K2, 1);
ans2 = subs(S22, K1, 1);
ans2 = subs(ans2, K2, 1);

disp('S21, S22');
pretty(ans1);
pretty(ans2);


