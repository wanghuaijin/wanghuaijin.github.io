---
title: 基本结论
date: 2024-09-04
icon: file
article: true
star: true
timeline: true
---

定义在区间$[a,b]$上的连续函数全体构成一个集合$C[a,b]$.

<b>定理(Weierstrass).</b> *设$f(x)\in C[a,b]$, 那么对于任意给定的$\varepsilon>0$都存在多项式$P(x)$使得*
$$
\max_{a\leq x\leq b} |P(x) - f(x) | < \varepsilon.
$$


<b>证明.</b> 首先用到一些基本的结论:
$$
\sum_{k=0}^n(n x-k)^2\binom{n}{k} x^k(1-x)^{n-k}=n x(1-x).
$$
::: details 验证

:::