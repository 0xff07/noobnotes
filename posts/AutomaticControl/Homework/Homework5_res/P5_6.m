%§ä¥XTransfer Function
[b a] = zp2tf([-1], [0 -5 -25], 75);
G = tf(b, a);
T = G / (1 + G);

%ºâ¥L
stepinfo(T)
