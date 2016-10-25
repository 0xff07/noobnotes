syms K;
syms s;

Ga = K/(s + 7);
Gd = 12.2/(s + 2.2);
Gc = Ga * Gd;
T = Gc/(1 + Gc);
T = expand(simplify(T));

disp('K = 0.7 : ');
roots([5 46 61*0.7 77])
disp('K = 3 : ');
roots([5 46 61*3 77])
disp('K = 6 : ');
roots([5 46 61*6 77])
