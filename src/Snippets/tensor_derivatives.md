---
title: 张量求导
date: 2024-08-29
---

<!-- more -->

## 向量对向量求导
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设向量函数$\mathbf{F}(\mathbf{x})$为
$$
\mathbf{F}(\mathbf{x}) = 
\left[
\begin{array}{c}
f_1(\mathbf{x}) \\
f_2(\mathbf{x}) \\
\vdots \\
f_m(\mathbf{x})
\end{array}
\right ], \quad \text{其中} \
\mathbf{x} = [x_1,x_2,\cdots, x_n]^\mathrm{T}.
$$
那么$\frac{\partial \mathbf{F} (\mathbf{x})}{\partial \mathbf{x}}$的值为
$$
\frac{\partial \mathbf{F} (\mathbf{x})}{\partial \mathbf{x}} =
\left[
\begin{array}{c}
\frac{\partial f_1(\mathbf{x})}{\partial \mathbf{x}}\\
\frac{\partial f_2(\mathbf{x})}{\partial \mathbf{x}}\\
\vdots \\
\frac{\partial f_m(\mathbf{x})}{\partial \mathbf{x}}\\
\end{array}
\right ],
\quad \text{其中} \
\frac{\partial f_k(\mathbf{x})}{\partial \mathbf{x}}
= \left [\frac{\partial f_k}{\partial x_1},\frac{\partial f_k}{\partial x_2},\cdots, \frac{\partial f_k}{\partial x_n} \right ],
\ k=1,\cdots,m.
$$
这里多元函数$f_k(\mathbf{x})$对$\mathbf{x}$的导数等于**梯度的转置**：
$$
\frac{\partial f_k(\mathbf{x})}{\partial \mathbf{x}} = \nabla^\mathrm{T} f_k(\mathbf{x}).
$$

```matlab :line-numbers
function g=f(x) // [!code focus]
g = x.^2;
g=g+g;
g=g*g;
```

<BiliBili bvid="BV1iS421X7mv" />

<div style="text-align:center;">
<VPCard 
  title="Mr.Hope"
  desc="Where there is light, there is hope"
  logo="https://mister-hope.com/logo.svg"
  link="https://mister-hope.com"
  background="rgba(253, 230, 138, 0.15)"
/>
</div>