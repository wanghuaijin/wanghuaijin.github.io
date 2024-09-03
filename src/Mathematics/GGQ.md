---
title: 广义Gauss积分
date: 2024-08-29
---
## 简介
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设$\omega(x)$为一个在有限区间$[a,b]$上几乎处处大于零的连续函数，$\varphi(x)$为$[a,b]$上的可积函数。如果$\varphi(x) \omega(x)$在$[a,b]$上可积，那么我们将其称为$\varphi(x)$关于权函数$\omega(x)$的积分，记为
$$
\tag{1.1}
I[\varphi] = \int_a^b \varphi(x) \mathrm{d} x.
$$
根据积分的定义，我们可以选择一些节点$x_k$使得可以通过$\varphi(x_k)$的加权和逼近积分$I[\varphi]$, 即如下形式的数值积分(Numerical Quadrature)：
$$
\tag{1.2}
Q_N[\varphi] = \sum_{k=0}^N \varphi(x_k) \omega_k,
$$
其中$x_k\in [a,b]\ \omega_k\in \mathbb{R}$, $k=0,1,\cdots,N$. $x_k$称为$(1.2)$的积分节点，$\omega_k$称为积分权重。$\{ \omega_k \}_{k=0}^N$的选择仅依赖于$\{x_k \}_{k=0}^N$而不依赖于$\varphi(x)$的具体形式。

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在数值计算上我们使用$Q_N[\varphi]$逼近$I[\varphi]$是方便的。当所有的积分节点$x_k$选为关于$\omega(x)$正交的$N+1$阶多项式的零点，$\omega_k$由这些节点的插值多项式决定时，我们得到的数值积分$Q_N[\cdot]$称为Gauss积分，拥有最高的$2N+1$阶代数精度。

## Thoughts
Gauss-Radau or Gauss-Lobatto?


##  
待更新 ...
<p>
<br><br><br>
</p>




<DeadLine />

