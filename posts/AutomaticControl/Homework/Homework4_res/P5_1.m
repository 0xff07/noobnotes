syms Kg;
syms tg;
syms Ka;
syms Km;
syms tm;
syms Kt;
syms s;
syms R;
syms k;

Gr = Kg;
Gm = Km /(s * (tm) + 1);
T = Gr * (Ka * Gm)/(1 + Ka * Gm * Kt);
T = expand(T);
T = subs(T, Kg, 1);
T = subs(T, Kt, 1);
T = simplify(T);

Es = simplify((1 - T) * R);
limit(Es, s, 0);

subs(T, tm, 0.4);
Y = ilaplace(T * 25 / s);
Y = simplify(Y);
subs(Y, tm, 0.4);
subs(Y, Ka*Km, k);
pretty(Y)

eqn = (25*k/(k + 1))*(1 - 25 * exp(-2.5*(k + 1)*0.03)) == 0.02;









