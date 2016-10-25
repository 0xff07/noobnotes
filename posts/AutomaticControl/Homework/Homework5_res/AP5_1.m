T = tf([108 108 * 3], [1 17 108 324]);
step(T);
stepinfo(T)
hold;

T = tf([108/9 108 * 3 / 9], [1 8 36]);
step(T)
stepinfo(T)