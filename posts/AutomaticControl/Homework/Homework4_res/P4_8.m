%(a), find the sensitivity:
syms s;
syms K;

G = 180/(s^2 + 20*s + 180);
Gc = K / (0.1*s + 1);

T = (Gc*G) / (1 + Gc*G);
T = simplify(T);
S = log(T);
S = diff(S, K, 1);
S = simplify(S);
S = S * K;
pretty(S);

%(b), find the contribution of Td on Y
syms Td;
syms R;
Td = Td / (K/(0.1 * s + 1));
Y = (R + Td) * T;
Y = simplify(Y);

Y = expand(Y);
Y = simplify(Y);
pretty(Y);