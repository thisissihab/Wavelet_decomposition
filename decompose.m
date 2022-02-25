clc;
clear all;

load sumsin;

[c, l] = wavedec(sumsin, 3, 'db2');
approximation = appcoef(c, l, 'db2');
[d1, d2, d3] = detcoef(c, l, [1 2 3]);

subplot(4, 1, 1)
plot(approximation);
title('Approximation at Level 3')
subplot(4, 1, 2)
plot(d3)
title('Detail Coefficients at Level 3');
subplot(4, 1, 3)
plot(d2)
title('Detail Coefficients at Level 2');
subplot(4, 1, 4)
plot(d1)
title('Detail Coefficients at Level 1');