syms K;
syms s;
syms t;

L = K / (s * (s + sqrt(2 * K)));
T = L / (1 + L);
T = simplify(expand(T));

res = ilaplace(T / s, t);
res = expand(res);

diff_res = diff(res, t);

peak = subs(res, t, sqrt(2)/sqrt(K)*pi);
peak = expand(simplify(peak));
pretty(peak);
