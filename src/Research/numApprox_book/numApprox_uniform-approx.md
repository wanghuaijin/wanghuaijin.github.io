---
title: Uniform Approximation
date: 2024-09-08
icon: file
---

[数值逼近 (王仁宏)](/assets/ref/books/numApprox.pdf)


## 第二章 一致逼近

第一章所讲述的 Weierstrass 逼近定理，指出了有界闭区间 $[a, b]$ 上的连续函数均可用多项式序列一致逼近. 换句话说实系数多项式所构成的集合, 在连续函数空间 $C[a, b]$ 中是处处楠密的. 即设 $f(x)$ 是 $C[a, b]$ 中任意给定的连续函数, 则对任意指定的 $\varepsilon>0$, 恒存在实系数多项式 $p(x)$, 使得

$$
|f(x)-p(x)|<\varepsilon, \quad a \leqslant x \leqslant b .
$$

大量的理论问题和实际问题要求人们研究如下的问题: 对于指定的非负整数 $n$, 在次数不超过 $n$ 的实系数多项式集合

$$
\mathbb{P}_{n} \xlongequal{\text { def }}\left\{\sum_{i=0}^{n} a_{i} x^{i} ; a_{i} \text { 为实数, } i=0,1, \cdots, n\right\}
$$

中寻求多项式 $p \in P_{n}$, 使得它与给定函数 $f(x) \in C[a, b]$ 的偏差

$$
\begin{equation*}
\Delta(p) \xlongequal{\text { def }} \max _{a \leqslant x \leqslant b}|f(x)-p(x)| \tag{0.1}
\end{equation*}
$$

尽可能地小.
称 $\Delta(p)$ 为 $p(x)$ 与 $f(x)$ 的偏差. 显然 $\Delta(p)$ 非负, 因而当 $p$ 取遍 $P_{n}$ 中所有多项式时, 相应 $\Delta(p)$ 的集合必有下确界:

$$
\begin{align*}
& E_{n}=E_{n}(f) \xlongequal{\text { def }} \inf _{p \in P_{n}} \Delta(p) \\
& =\inf _{p \in P_{n}} \max _{a \leq x \leq b}|f(x)-p(x)| . \tag{0.2}
\end{align*}
$$

称 $E_{n}(f)$ 为 $P_{n}$ 对给定函数 $f(x)$ 的最小偏差或最佳逼近. 按 $E_{n}$ 的定义，显然有

$$
E_{n} \geqslant E_{n+1} \geqslant \cdots
$$

再由 Weierstrass 逼近定理， $E_{n} \downarrow 0(n \rightarrow \infty)$ 。
现在的问题是: 是否存在 $p^{*} \in P_{n}$, 使得

$$
\begin{equation*}
\Delta\left(p^{*}\right)=E_{n}(f) ? \tag{0.3}
\end{equation*}
$$

如果这样的 $p^{*}$ 存在, 它是否唯一?
满足 $(0.3)$ 式的多项式 $p^{*}(x)$, 称为 $f(x)$ 于 $P_{n}$ 中的最佳逼近多项式.

## § 1 Borel 存在定理

Borel 存在定理 对任何给定的 $f(x) \in C[a, b]$ ，总存在 $p(x) \in P_{n}$ ，使得

$$
\Delta(p)=E_{n}(f)
$$

证明 因为 $E_{n}$ 是 $\Delta(p)$ 的下确界, 所以对任何给定的 $\varepsilon>0$, 必有 $p_{\varepsilon}(x) \in \mathbb{P}_{n}$,使

$$
E_{n} \leqslant \Delta\left(p_{\varepsilon}\right)<E_{n}+\varepsilon
$$

特别取 $\varepsilon=\frac{1}{m}$, 存在 $p_{m}(x) \in \mathbb{P}_{n}$ ，使

$$
\begin{equation*}
E_{n} \leqslant \Delta\left(p_{m}\right)<E_{n}+\frac{1}{m} \tag{1.1}
\end{equation*}
$$

因此，如果能证明 $\left\{p_{m}\right\}$ 或它的某一子序列一致收敛于某 $p^{*} \in P_{n}$ ，则于上式中令 $m \rightarrow \infty$ ，即可证明

$$
\Delta\left(p^{*}\right)=E_{n}
$$

以下首先从 $\left\{p_{m}(x)\right\}$ 中选取收敛的子序列。
按 $p_{m}(x)$ 的选取方法可知 $p_{m}(x)$ 有界:

$$
\left|p_{m}(x)\right| \leqslant\left|p_{m}(x)-f(x)\right|+|f(x)| \leqslant\left(E_{n}+1\right)+\max _{a \leqslant x \leqslant b}|f(x)|
$$

进而可证

$$
p_{m}(x)=a_{0, m}+a_{1, m} x+a_{2, m} x^{2}+\cdots+a_{n, m} x^{n}
$$

中的各系数

$$
a_{0, m}, a_{1, m}, \cdots, a_{n, m}
$$

皆有界. 为此,在 $[a, b]$ 中任意取定 $n+1$ 个互异点

$$
x_{0}<x_{1}<\cdots<x_{n}
$$

由

$$
\left\{\begin{array}{c}
a_{0, m}+a_{1, m} x_{0}+\cdots+a_{n, m} x_{0}^{n}=p_{m}\left(x_{0}\right) \\
\cdots \cdots \cdots \cdots \\
a_{0, m}+a_{1, m} x_{n}+\cdots+a_{n, m} x_{n}^{n}=p_{m}\left(x_{n}\right)
\end{array}\right.
$$

可推出

$$
a_{i, m}=\frac{\left|\begin{array}{ccccc}
1 & \cdots & p_{m}\left(x_{0}\right) & \cdots & x_{0}^{n} \\
\vdots & & \vdots & & \vdots \\
1 & \cdots & p_{m}\left(x_{n}\right) & \cdots & x_{n}^{n}
\end{array}\right|}{\left|\begin{array}{ccccc}
1 & \cdots & x_{0}^{i} & \cdots & x_{0}^{n} \\
\vdots & & \vdots & & \vdots \\
1 & \cdots & x_{n}^{i} & \cdots & x_{n}^{n}
\end{array}\right|}=\frac{1}{\prod_{i>s}\left(x_{t}-x_{s}\right)} \sum_{j=0}^{n} p_{m}\left(x_{j}\right) Q_{j}
$$

其中 $Q_{j}$ 为多项式在确定点上的值，从而得 $a_{i, m}$ 有界：

$$
\left|a_{i, m}\right| \leqslant A \quad(i=0, \cdots, n)
$$

由 Bolzano-Weierstrass 定理，可逐次选出 $n+1$ 个同时收敛的子序列 $\left\{a_{i, m}\right\}, i=$ $0, \cdots, n$, 使得

$$
\lim _{j \rightarrow \infty} a_{i, m_{j}}=a_{i}, i=0, \cdots, n
$$

作多项式

$$
\begin{equation*}
\dot{p}(x)=a_{0}+a_{1} x+\cdots+a_{n} x^{n} \tag{1.2}
\end{equation*}
$$

显然当 $j \rightarrow \infty$ 时，多项式 $p_{m_{j}}(x)$ 在 $[a, b]$ 上一致收敛到 $p(x)$ 。
下面证明

$$
\begin{equation*}
\Delta(p)=E_{n}=\inf _{p_{n} \in P_{n}} \Delta\left(p_{n}\right) \tag{1.3}
\end{equation*}
$$

由于 $p(x) \in \mathbb{P}_{n} ，$ 按定义

$$
\Delta(p) \geqslant E_{n}
$$

以下只需证

$$
\Delta(p) \leqslant E_{n}
$$

由 $p_{m_{j}}(x)$ 的取法可知

$$
\Delta\left(p_{m_{j}}\right)=\max _{a \leqslant x \leqslant b}\left|f(x)-p_{m_{j}}(x)\right|<E_{n}+\frac{1}{m_{j}}
$$

但

$$
\begin{aligned}
\Delta(p)= & \max _{a \leqslant x \leqslant b}|f(x)-p(x)| \leqslant \max _{a \leqslant x \leqslant b}\left|f(x)-p_{m_{j}}(x)\right| \\
& +\max _{a \leqslant x \leqslant b}\left|p_{m_{j}}(x)-p(x)\right|<E_{n}+\frac{1}{m_{j}}+\varepsilon_{j}
\end{aligned}
$$

令 $j \rightarrow \infty$, 得到

$$
\Delta(p) \leqslant E_{n}
$$

从而

$$
\Delta(p)=E_{n}
$$

证毕.

## §2 最佳逼近定理

由 Borel 存在性定理，对任给 $f(x) \in C[a, b]$ ，均存在多项式 $p(x) \in \mathbb{P}_{n}$ ，使得

$$
\begin{align*}
\Delta(p) & =\max _{a \leqslant x \leqslant b}|p(x)-f(x)| \\
& =E_{n}=\inf _{q \in I_{n}} \max _{a \leqslant x \leqslant b}|q(x)-f(x)| \tag{2.1}
\end{align*}
$$

这样的多项式 $p(x)$ 称为 $f(x)$ 在 $P_{n}$ 中的最佳逼近多项式。
显然, $E_{n}=0$ 等价于 $f(x) \in \mathbb{P}_{n}$, 即除 $f(x) \in \mathbb{P}_{n}$ 外, $E_{n}$ 均取正值。
以下探讨最佳逼近多项式的本质特征。记

$$
\varepsilon(x)=p(x)-f(x)
$$

由于 $\varepsilon(x) \in C[a, b]$,于是存在 $x_{0} \in[a, b]$, 使得

$$
\left|\varepsilon\left(x_{0}\right)\right|=\max _{a \leqslant x \leqslant b}|\varepsilon(x)|=\Delta(p)
$$

称这样的 $x_{0}$ 为 $p(x)$ 关于 $f(x)$ 的偏离点. 特别地, 如果 $\varepsilon\left(x_{0}\right)=\Delta(p)$ （或 $-\Delta(p)$ ），则称 $x_{0}$ 为 $p(x)$ 关于 $f(x)$ 的正（或负）偏离点。

如果 $p(x)$ 不是 $f(x)$ 的最佳逼近多项式，则 $p(x)$ 关于 $f(x)$ 的正、负偏离点末必同时存在。 (试举例说明!) 但如果 $p(x)$ 是 $f(x)$ 的最佳逼近多项式, 则它关于 $f(x)$ 的正、负偏离点必然都存在。事实上，不妨假定最佳逼近多项式 $p(x)$无负偏离点存在, 则可证明 $p(x)$ 不是 $f(x)$ 的最佳逼近多项式。按以上反证法假定，必存在一个足够小的正数 $h$ ，使得

$$
-E_{n}+h \leqslant p(x)-f(x) \leqslant E_{n}, \quad a \leqslant x \leqslant b
$$

于是在 $[a, b]$ 区间上, 有

$$
-E_{n}+h / 2 \leqslant(p(x)-h / 2)-f(x) \leqslant E_{n}-h / 2
$$

即 $\Delta(p-h / 2)<\Delta(p)$ 。矛盾.
Vallée-Poussin 定理（最佳逼近误差下界的估计）设 $p \in P_{n}$, 且 $\varepsilon(x)=$ $p(x)-f(x)$ 于 $[a, b]$ 中的点列

$$
x_{1}<x_{2}<\cdots<x_{N}
$$

上取异于零的正负相间值

$$
\lambda_{1},-\lambda_{2}, \cdots,(-1)^{N-1} \lambda_{N}\left(\text { 不妨设诸 } \lambda_{j}>0\right) \text {, }
$$

且 $N \geqslant n+2$, 则对任一 $q(x) \in \mathbb{P}_{n}$, 均有

$$
\begin{equation*}
\Delta(q) \geqslant \min \left(\lambda_{1}, \cdots, \lambda_{N}\right) \tag{2.2}
\end{equation*}
$$

证明 假若不然，设有某 $q(x) \in \mathbb{P}_{n}$ ，使

$$
\begin{equation*}
\Delta(q)<\min \left(\lambda_{1}, \cdots, \lambda_{N}\right) \tag{2.3}
\end{equation*}
$$

考虑

$$
\eta(x)=p(x)-q(x)=[p(x)-f(x)]-[q(x)-f(x)] .
$$

因为

$$
\Delta(q)=\max _{a \leqslant x \leqslant b}|q(x)-f(x)|<\min \left(\lambda_{1}, \cdots, \lambda_{N}\right)
$$

从而

$$
\operatorname{sign} \eta\left(x_{j}\right)=\operatorname{sign}\left(p\left(x_{j}\right)-f\left(x_{j}\right)\right)
$$

即 $\eta(x)$ 于点列 $x_{1}, x_{2}, \cdots, x_{N}$ 上交错变号, 由连续函数的介值定理， $\eta(x)$ 于 $[a, b]$ 内至少有 $N-1 \geqslant n+1$ 个零点, 但 $\eta(x) \in \mathbb{P}_{n}$, 所以 $\eta(x) \equiv 0$ 即 $p(x) \equiv q(x)$ 。此与(2.3)的反证法假设矛盾。定理得证。

Tchebyshev 定理 $f(x)$ 于 $\mathbb{P}_{n}$ 中的最佳逼近多项式是唯一存在的,且 $p(x)$是 $f(x)$ 于 $\mathbb{P}_{n}$ 中的最佳逼近多项式，必须且只需 $p(x)-f(x)$ 在 $[a, b]$ 上一个点数不少于 $n+2$ 的点列

$$
x_{1}<x_{2}<\cdots<x_{N} \quad(N \geqslant n+2)
$$

上以正负交错的符号取到 $\Delta(p)$ 的值。
证明 充分性。假定 $p(x)-f(x)$ 于 $[a, b]$ 中点列 $x_{1}<\cdots<x_{N}(N \geqslant n+2)$上以正负交错的符号取到 $\Delta(p)$.

由 Vallée-Poussin 定理，对任一 $q(x) \in \mathbb{P}_{n}$ ，均有

$$
\Delta(q) \geqslant \Delta(p)
$$

所以 $p(x)$ 是 $f(x)$ 于 $P_{n}$ 中的最佳逼近多项式。
必要性. 假定 $p(x)$ 的正负交错的偏离点数 $N^{\prime} \leqslant n+1$, 下面来证 $p(x)$ 不是 $f(x)$ 的最佳逼近多项式。显然

$$
q(x)-f(x)=p(x)-f(x)+[q(x)-p(x)]
$$

今将 $[a, b]$ 分成 $N^{\prime}$ 个子区间

$$
\left[a, \xi_{1}\right],\left[\xi_{1}, \xi_{2}\right], \cdots,\left[\xi_{N^{\prime}-1}, b\right]
$$

使在上述区间上轮流满足下面两个不等式中的一个

$$
\begin{aligned}
& -\Delta(p) \leqslant p(x)-f(x)<\Delta(p)-\alpha \\
& -\Delta(p)+\alpha<p(x)-f(x) \leqslant \Delta(p)
\end{aligned}
$$

其中 $\alpha$ 是某一充分小的正数.引入 $P_{n}$ 中的多项式

$$
\phi(x)=\left(x-\xi_{1}\right)\left(x-\xi_{2}\right) \cdots\left(x-\xi_{N^{\prime}-1}\right)
$$

并作

$$
q(x)=p(x)+\omega \phi(x)
$$

则

$$
q(x)-f(x)=p(x)-f(x)+\omega \phi(x)
$$

取足够小的 $\omega$, 并选择 $\omega$ 的正负号，即可使下式成立

$$
\Delta(q)<\Delta(p)
$$

此与 $p(x)$ 是 $f(x)$ 的最佳逼近多项式的假设相矛盾.
下面证唯一性。
设除 $p(x)$ 外，尚有 $q(x) \in P_{n}$ ，亦使

$$
\Delta(p)=\Delta(q)=E_{n}
$$

它们相应的正负交错偏离点组中点数

$$
N_{p} \geqslant n+2, \quad N_{q} \geqslant n+2
$$

不妨假定 $N_{q} \geqslant N_{p}$, 并设 $q(x)$ 的正负交错偏离点组为

$$
\begin{equation*}
\beta_{1}<\beta_{2}<\cdots<\beta_{N_{q}} \tag{2.4}
\end{equation*}
$$

考虑

$$
\eta(x)=q(x)-p(x)=(q(x)-f(x))-(p(x)-f(x))
$$

并考察 $\eta(x)$ 于点列 $(2.4)$ 上的符号. 注意 $\eta\left(\beta_{j}\right)$ 可能为 0 , 也可能不为 0 . 但若 $\eta\left(\beta_{j}\right) \neq 0$ ，则必有

$$
\begin{equation*}
\operatorname{sign} \eta\left(\beta_{j}\right)=\operatorname{sign}\left[q\left(\beta_{j}\right)-f\left(\beta_{j}\right)\right] \tag{2.5}
\end{equation*}
$$

倘若

$$
\begin{equation*}
\eta\left(\beta_{i-1}\right) \neq 0, \quad \eta\left(\beta_{i}\right)=\cdots=\eta\left(\beta_{i+k}\right)=0, \quad \eta\left(\beta_{i+k+1}\right) \neq 0 \tag{2.6}
\end{equation*}
$$

因

$$
\operatorname{sign} \eta\left(\beta_{i-1}\right)=\operatorname{sign}\left[q\left(\beta_{i-1}\right)-f\left(\beta_{i-1}\right)\right]
$$

且

$$
\operatorname{sign} \eta\left(\beta_{i+k+1}\right)=\operatorname{sign}\left[q\left(\beta_{i+k+1}\right)-f\left(\beta_{i+k+1}\right)\right]
$$

而 $q(x)-f(x)$ 于 $\beta_{1}<\beta_{2}<\cdots<\beta_{N_{q}}$ 上正负交错变号，即

$$
(-1)^{i-1} \operatorname{sign}\left[q\left(\beta_{i-1}\right)-f\left(\beta_{i-1}\right)\right] \text { 与 }(-1)^{i+k+1} \operatorname{sign}\left[q\left(\beta_{i+k+1}\right)-f\left(\beta_{i+k+1}\right)\right]
$$

同号,亦即

$$
(-1)^{i-1} \eta\left(\beta_{i-1}\right) \text { 与 }(-1)^{i+k+1} \eta\left(\beta_{i+k+1}\right) \text { 同号， }
$$

从而

$$
\eta\left(\beta_{i-1}\right) \text { 与 }(-1)^{k} \eta\left(\beta_{i+k+1}\right)
$$

同号。
若 $k$ 为偶数，则 $\eta\left(\beta_{i-1}\right)$ 与 $\eta\left(\beta_{i+k+1}\right)$ 同号，所以其间 $\eta(x)$ 必有偶数个根，但（2.6）中已有 $k+1$ （奇数）个根，所以必定还有一个根，即至少有 $k+2$ 个根。

若 $k$ 为奇数, 则 $\eta\left(\beta_{i-1}\right)$ 与 $\eta\left(\beta_{i+k+1}\right)$ 异号, 所以其间必有奇数个根, 但 (2.6) 中已有 $k+1$ （偶数）个根，所以必定还有一个根，即至少有 $k+2$ 个根。

总之， $\eta(x)$ 于 $\left[\beta_{1}, \beta_{N}\right]$ 中根的个数 $\geqslant N_{q}-1 \geqslant n+1$ ，从而 $\eta(x) \equiv 0$ ，此与假设矛盾.证毕。

作为例子，讨论 $n=0$ 和 $n=1$ 两种情况。
例1 设 $f(x) \in C[a, b]$ ，则 $f(x)$ 于 $P_{0}$ 中的最佳逼近多项式为

$$
p(x)=\frac{1}{2}\left\{\min _{a \leqslant x \leqslant b} f(x)+\max _{a \leqslant x \leqslant b} f(x)\right\}=\frac{m+M}{2}
$$

例2 设 $f(x) \in C^{2}[a, b]$ ，且 $f^{\prime \prime}(x)>0(a \leqslant x \leqslant b)$ ，求 $f(x)$ 于 $P_{1}$ 中的最佳逼近多项式。

由 Tchebyshev 定理，交错点组点数 $\geqslant 3$ ，设最佳逼近多项式为 $p^{*}(x)=A x+$ $B$ 。因有 3 个交错点，所以于开区间 $(a, b)$ 内至少有一个 $p^{*}-f$ 的交错点 $c$ ，且其必为稳定点

$$
p^{\prime *}(c)-f^{\prime}(c)=A-f^{\prime}(c)=0
$$

所以 $A=f^{\prime}(c)$. 由于 $f^{\prime \prime}(x)>0$ ，所以 $f^{\prime}(x)$ 严格单调递增，从而

$$
\left(f(x)-p^{*}(x)\right)^{\prime}=f^{\prime}(x)-A
$$

在 $(a, b)$ 内不能再有其他零点，即其他两个交错点必为 $[a, b]$ 的两个端点。所以 $p^{*}(x)$ 的 3 个交错点为:

$$
a<c<b
$$

从而

$$
\begin{equation*}
p^{*}(a)-f(a)=-\left[p^{*}(c)-f(c)\right]=p^{*}(b)-f(b) \tag{2.7}
\end{equation*}
$$

求解由(2.7)所确定的方程组，可得

$$
A=\frac{f(b)-f(a)}{b-a}, B=\frac{f(a)+f(c)}{2}-\frac{a+c}{2} \cdot \frac{f(b)-f(a)}{b-a}
$$

即所求的最佳逼近多项式为

$$
p^{*}(x)=\frac{f(b)-f(a)}{b-a} x+\frac{f(a)+f(c)}{2}-\frac{a+c}{2} \cdot \frac{f(b)-f(a)}{b-a}
$$

其中 $c$ 由下式所决定：

$$
f^{\prime}(c)=\frac{f(b)-f(a)}{b-a}
$$

它有明显的几何意义，即 $y=f(x)$ 在 $x=c$ 点处的切线，平行于由 $(a, f(a))$ 和 $(b, f(b))$ 两点所决定的直线。

## Kolmogorov 最佳逼近定理

1948 年，Kolmogorov 给出了另一种形式的最佳逼近定理。以下仅就实多项式情况来叙述这条定理。

Kolmogorov 定理 $\quad p(x) \in \mathbb{P}_{n}$ 是 $f(x) \in C[a, b]$ 在 $\mathbb{P}_{n}$ 中的最佳逼近多项式，必须且只需对所有的 $q(x) \in P_{n}$ ，均有

$$
\begin{equation*}
\max _{x \in A_{0}}\{[f(x)-p(x)] q(x)\} \geqslant 0 \tag{2.8}
\end{equation*}
$$

其中

$$
A_{0} \xlongequal{\text { def }}\{x \in[a, b] ;|f(x)-p(x)|=\Delta(p)\}
$$

条件(2.8)表明，关系式

$$
[f(x)-p(x)] q(x)<0
$$

不能对一切 $x \in A_{0}$ 都成立, 即 $f(x)-p(x)$ 与 $q(x)$ 不能对一切 $x \in A_{0}$ 都取相反的符号。

证明 假定 $p(x)$ 是 $f(x)$ 在 $P_{n}$ 中的最佳逼近多项式。如果（2.8）不成立，则有多项式 $q(x) \in \mathbb{P}_{n}$ 存在，使得对某个 $\varepsilon>0$ ，有

$$
\max _{x \in A_{0}}\{[f(x)-p(x)] q(x)\}=-2 \varepsilon
$$

根据 $f(x)$ 的连续性，存在 $[a, b]$ 的一个开子集 $G, A_{0} \in G$ ，使得对一切 $x \in G$均有

$$
[f(x)-p(x)] q(x)<-\varepsilon
$$

对于充分小的 $\lambda>0$, 构造一个新的多项式 $p_{1}(x)=p(x)-\lambda q(x)$. 若 $x \in G$ ，则

$$
\begin{aligned}
\left|f(x)-p_{1}(x)\right|^{2}= & |[f(x)-p(x)]+\lambda q(x)|^{2} \\
= & |f(x)-p(x)|^{2}+2 \lambda[f(x)-p(x)] \cdot q(x) \\
& +\lambda^{2}[q(x)]^{2} \\
< & {[\Delta(p)]^{2}-2 \lambda \varepsilon+\lambda^{2} M^{2} }
\end{aligned}
$$

其中 $M=\max _{a \leqslant x \leqslant b}|q(x)|$. 若取 $\lambda<M^{-2} \varepsilon$, 则

$$
\begin{equation*}
\left|f(x)-p_{1}(x)\right|^{2}<[\Delta(p)]^{2}-\lambda \varepsilon, \quad x \in G \tag{2.9}
\end{equation*}
$$

注意到 $G$ 的余集是闭集 $H \subset[a, b]$ ，且

$$
|f(x)-p(x)|<\Delta(p), \quad x \in H
$$

因而存在 $\delta>0$, 使得

$$
|f(x)-p(x)|<\Delta(p)-\delta, \quad x \in H
$$

若 $\lambda$ 取得也使 $\lambda<(2 M)^{-1} \delta$ 成立, 则

$$
\left|f(x)-p_{1}(x)\right| \leqslant|f(x)-p(x)|+\lambda|q(x)|
$$

$$
\begin{align*}
& \leqslant \Delta(p)-\delta+\frac{1}{2} \delta \\
& =\Delta(p)-\frac{\delta}{2}, \quad x \in H \tag{2.10}
\end{align*}
$$

由（2.9）和（2.10）可知，对充分小的正数 $\lambda, p_{1}(x)$ 比 $p(x)$ 更好地逼近 $f(x)$ 。从而（2.8）是必要的。

以下证明（2.8）也是充分的。假定（2.8）对任何 $q(x) \in P_{n}$ 皆成立。于是对任意指定的 $p_{1}(x) \in \mathbb{P}_{n}$ ，构造 $q(x)=p(x)-p_{1}(x) \in P_{n}$ ，必存在点 $x_{0} \in A_{0}$ ，使得

$$
\left[f\left(x_{0}\right)-p\left(x_{0}\right)\right] q\left(x_{0}\right) \geqslant 0
$$

注意到点集 $A_{0}$ 的定义, 可知

$$
\begin{aligned}
\left|f\left(x_{0}\right)-p_{1}\left(x_{0}\right)\right|^{2}= & \left|f\left(x_{0}\right)-p\left(x_{0}\right)\right|^{2} \\
& +2\left[f\left(x_{0}\right)-p\left(x_{0}\right)\right] q\left(x_{0}\right)+\left[q\left(x_{0}\right)\right]^{2} \\
& \geqslant\left|f\left(x_{0}\right)-p\left(x_{0}\right)\right|^{2}=[\Delta(p)]^{2}
\end{aligned}
$$

从而 $\Delta\left(p_{1}\right) \geqslant \Delta(p)$. 证毕。
注 Kolmogorov 定理的原始形式是就更广的复函数和复系数多项式来叙述的。这时条件（2.8）应相应地改变为

$$
\max _{x \in \widetilde{A}_{0}} \operatorname{Re}\{[f(x)-p(x)] \bar{q}(x)\} \geqslant 0
$$

此处 $A$ 是紧致 Hausdorff 空间， $f \in C(A)$ 是在 $A$ 上连续的复函数空间， $\varphi_{1}, \cdots$ ， $\varphi_{n}$ 是给定的 $A$ 上复连续函数组， $\mathbb{P}_{n}$ 是所有形如 $a_{1} \varphi_{1}+\cdots+a_{n} \varphi_{n}\left(a_{1}, \cdots, a_{n}\right.$ 为复数)的"多项式"类，而 $A_{0}$ 表示使

$$
|f(x)-p(x)|=\max _{x \in A}|f(x)-p(x)|
$$

成立的一切点 $x \in A$ 的集合。
虽然迄今已有一些最佳一致逼近多项式的近似计算方法，其中最著名的是 Remez 方法，Stiefel 方法等，但由于这些方法比较复杂，所以实际上人们并不怎么采用它们。从当今的潮流来看，人们更趋向于利用各种方法来获得在某种意义下的最佳逼近多项式，甚至只是具有一定精确度的多项式。在本章 $\S 3$ 中，我们将会论及它们。在第六章中，我们还将在更广意义上介绍 Remez 方法的梗概。

## § 3 Tchebyshev 最小零偏差多项式及其应用

在 $n$ 次多项式类 $\mathbb{P}_{n}$ 中, 寻求如此的多项式 $p_{n}$ ，使其在给定的有界闭区间上
与零的偏差尽可能地小. 这是一个具有重要理论和实际意义的问题, 它被称为最小零偏差多项式问题。

不失一般性，假定 $p_{n}(x)$ 的 $x^{n}$ 系数为 1 ，即 $p_{n}(x)$ 可表示为

$$
p_{n}(x)=x^{n}+C_{n-1} x^{n-1}+\cdots+C_{1} x+C_{0}
$$

且所讨论的有界闭区间为 $[-1,1]$.
不难看出, 寻求最小零偏差多项式 $p_{n}(x)$ 的问题, 等价于寻求函数 $f(x)=$ $x^{n}$ 的 $n-1$ 次最佳一致逼近多项式 $-\left(C_{n-1} x^{n-1}+\cdots+C_{1} x+C_{0}\right)$ 的问题。

当 $n=1$ 时, $f(x)=x$ 在 $[-1,1]$ 上最佳零次逼近多项式 (即常数) 显然为 0 , 即 1 次最小零偏差多项式为

$$
T_{1}(x)=x
$$

当 $n=2$ 时,按 Tchebyshev 定理, 2 次最小零偏差多项式为（留作习题）

$$
\widetilde{T_{2}}(x)=x^{2}-\frac{1}{2}
$$

Tchebyshev 发现，此类问题同以下多项式有关:

$$
\begin{equation*}
T_{n}(x)=\cos (n \cdot \arccos x) \tag{3.1}
\end{equation*}
$$

如此定义的 $T_{n}(x)$ 果真是 $x$ 的多项式吗? 试看 $n=0$ 和 $n=1$ 的情形:

$$
\begin{aligned}
& T_{0}(x)=1 \\
& T_{1}(x)=\cos (\arccos x)=x
\end{aligned}
$$

注意到如下的三角恒等式

$$
\cos (n+1) \theta+\cos (n-1) \theta=2 \cos n \theta \cos \theta
$$

从而有

$$
\begin{equation*}
T_{n+1}(x)=2 x T_{n}(x)-T_{n-1}(x), \quad n=1,2, \cdots \tag{3.2}
\end{equation*}
$$

所以 $T_{n}(x)$ 确实是 $x$ 的 $n$ 次多项式。
不难看出 $T_{n}(x)$ 与 $n$ 的奇偶性相同, 即 $T_{n}(x)$ 随 $n$ 为奇数或偶数而成为 $[-1,1]$ 上的奇函数或偶函数.

显然, $T_{n}(x)$ 的最高次项 $x^{n}$ 的系数为 $2^{n-1}$, 即

$$
\begin{equation*}
T_{n}(x)=2^{n-1} x^{n}+(x \text { 的低于 } n \text { 次的多项式 }) . \tag{3.3}
\end{equation*}
$$

$T_{n}(x)$ 称为 $n$ 次 Tchebyshev 多项式。
今将前六个 Tchebyshev 多项式在 $[-1,1]$ 上的图形罗列于图 3.1.
![](https://cdn.mathpix.com/cropped/2024_09_08_0e2d081e0b1bb8468cdbg-038.jpg?height=445&width=774&top_left_y=258&top_left_x=423)

图3.1
显然

$$
\begin{equation*}
\max _{-1 \leqslant x \leqslant 1}\left|T_{n}(x)\right|=1 \tag{3.4}
\end{equation*}
$$

并且在点列

$$
\begin{equation*}
\widetilde{x}_{k}=\cos \frac{k \pi}{n}, \quad k=0,1, \cdots, n \tag{3.5}
\end{equation*}
$$

上, $T_{n}(x)$ 以正负交错的符号取到它的绝对值的最大值 1:

$$
\begin{equation*}
T_{n}\left(\tilde{x}_{k}\right)=(-1)^{k} \tag{3.6}
\end{equation*}
$$

根据 Tchebyshev 最佳逼近定理，首项 $\left(x^{n}\right)$ 系数为 1 的多项式

$$
\widetilde{T}_{n}(x)=2^{1-n} \cdot T_{n}(x)
$$

为所有 $x^{n}$ 系数为 1 的 $n$ 次多项式类中唯一的、在 $[-1,1]$ 上与零偏差最小的多项式。详细证明留给读者去完成。
$T_{n}(x)$ 有一条十分重要的性质, 即它的零点全部是落在 $(-1,1)$ 内部的实单根:

$$
\begin{equation*}
x_{k}=\cos \frac{2 k-1}{2 n} \pi, \quad k=1, \cdots, n \tag{3.7}
\end{equation*}
$$

从几何上看，如果将以原点为圆心，以 1 为半径的上半圆周分成 $2 n$ 等份，再把圆周上所有奇分点往 $x$ 轴上投影，则恰好得到点列（3.7）。细心的读者不难从此发现，Tchebyshev 多项式的零点，特别是当 $n$ 较大时，它们总是在开区间（ -1 ， 1)的两端比较密集，而在该区间中部比较稀疏。
试问: $T_{n}(x)$ 与 $T_{n-1}(x)$ 能否有公共的实根? 此问题的答案留给读者自行给出 (留作习题).

## Tchebyshev 多项式具有所谓的"离散"直交性质

$1^{\circ}$ 设 $x_{k}, k=1,2, \cdots, n$ 是 Tchebyshev 多项式的零点，且非负整数 $p$ 和 $q$ 满足 $p+q<2 n$ ，则

$$
\sum_{k=1}^{n} T_{p}\left(x_{k}\right) T_{q}\left(x_{k}\right)= \begin{cases}n, & \text { 若 } p=q=0,  \tag{3.8}\\ \frac{1}{2} n, & \text { 若 } p=q \neq 0, \\ 0, & \text { 若 } p \neq q\end{cases}
$$

$2^{\circ}$ 设 $\xi_{k}, k=0,1, \cdots, n$ 是 Tchebyshev 多项式 $T_{n}(x)$ 的极值点, 且整数 $p$ 和 $q$ 满足 $0 \leqslant p \leqslant n, 0 \leqslant q \leqslant n$, 则

$$
\begin{align*}
& \frac{1}{2} T_{p}\left(\xi_{0}\right) T_{q}\left(\xi_{0}\right)+\sum_{k=1}^{n-1} T_{p}\left(\xi_{k}\right) T_{q}\left(\xi_{k}\right)+\frac{1}{2} T_{p}\left(\xi_{n}\right) T_{q}\left(\xi_{n}\right) \\
& = \begin{cases}n, & \text { 若 } p=q=0 \text { 或 } n, \\
\frac{1}{2} n, & \text { 若 } p=q \neq 0 \text { 或 } n, \\
0, & \text { 若 } p \neq q .\end{cases} \tag{3.9}
\end{align*}
$$

以上离散直交性质的证明留作习题. [提示：注意 Tchebyshev 多项式的零点及极值点的公式，并利用三角恒等式.]

下面介绍移位 Tchebyshev 多项式 $T_{n}^{*}(x)$ 。该多项式实质上是通过线性变换，将通常的 Tchebyshev 多项式变换到 $[0,1]$ 区间上. $n$ 次移位 Tchebyshev 多项式 $T_{n}^{*}(x)$ 定义为

$$
\begin{equation*}
T_{n}^{*}(x) \xlongequal{\text { def }} T_{n}(2 n-1), n=0,1,2, \cdots \tag{3.10}
\end{equation*}
$$

该多项式在 $[0,1]$ 区间上具有通常 Tchebyshev 多项式 $T_{n}(x)$ 在 $[-1,1]$ 区间上的类似性质。正因为如此, $T_{n}^{*}(x)$ 经常被应用于 $[0,1]$ 区间上的逼近问题。

移位 Tchebyshev 多项式 $T_{n}^{*}(x)$ 与通常 Tchebyshev 多项式 $T_{n}(x)$ 有如下的关系：

$$
\begin{equation*}
T_{n}^{*}\left(x^{2}\right)=T_{2 n}(x), n=0,1,2, \cdots \tag{3.11}
\end{equation*}
$$

事实上， $T_{2}(x)=\cos (2 \cdot \arccos x)=2 x^{2}-1$ ，所以 $2 \arccos x=\arccos \left(2 x^{2}-1\right)$ ，且 $\cos (2 n \cdot \arccos x)=\cos \left[n \cdot \arccos \left(2 x^{2}-1\right)\right]$, 从而

$$
T_{2 n}(x)=T_{n}\left(2 x^{2}-1\right)=T_{n}^{*}\left(x^{2}\right)
$$

移位 Tchebyshev 多项式与幕函数相互表示关系如下：

$$
\begin{aligned}
& T_{0}^{*}=1 \\
& T_{1}^{*}=2 x-1 \\
& T_{2}^{*}=8 x^{2}-8 x+1 \\
& T_{3}^{*}=32 x^{3}-48 x^{2}+18 x-1 \\
& T_{4}^{*}=128 x^{4}-256 x^{3}+160 x^{2}-32 x+1 \\
& T_{5}^{*}= 512 x^{5}-1280 x^{4}+1120 x^{3}-400 x^{2}+50 x-1 \\
& T_{6}^{*}= 2048 x^{6}-6144 x^{5}+6912 x^{4}-3584 x^{3}+840 x^{2}-72 x+1 \\
& T_{7}^{*}= 8192 x^{7}-28672 x^{6}+39424 x^{5}-26880 x^{4}+9408 x^{3}-1568 x^{2}+98 x-1 \\
& T_{8}^{*}= 32768 x^{8}-131072 x^{7}+212992 x^{6}-180224 x^{5}+84480 x^{4}-21504 x^{3} \\
&+2688 x^{2}-128 x+1
\end{aligned}
$$

$$
\begin{aligned}
1= & T_{0}^{*} \\
x= & \frac{1}{2}\left(T_{0}^{*}+T_{1}^{*}\right) \\
x^{2}= & \frac{1}{8}\left(3 T_{0}^{*}+4 T_{1}^{*}+T_{2}^{*}\right) \\
x^{3}= & \frac{1}{32}\left(10 T_{0}^{*}+15 T_{1}^{*}+6 T_{2}^{*}+T_{3}^{*}\right) \\
x^{4}= & \frac{1}{128}\left(35 T_{0}^{*}+56 T_{1}^{*}+28 T_{2}^{*}+8 T_{3}^{*}+T_{4}^{*}\right) \\
x^{5}= & \frac{1}{512}\left(126 T_{0}^{*}+210 T_{1}^{*}+120 T_{2}^{*}+45 T_{3}^{*}+10 T_{4}^{*}+T_{5}^{*}\right) \\
x^{6}= & \frac{1}{2048}\left(462 T_{0}^{*}+792 T_{1}^{*}+495 T_{2}^{*}+220 T_{3}^{*}+66 T_{4}^{*}+12 T_{5}^{*}+T_{6}^{*}\right) \\
x^{7}= & \frac{1}{8192}\left(1716 T_{0}^{*}+3003 T_{1}^{*}+2002 T_{2}^{*}+1001 T_{3}^{*}+364 T_{4}^{*}+91 T_{5}^{*}\right. \\
& \left.+14 T_{6}^{*}+T_{7}^{*}\right) \\
x^{8}= & \frac{1}{32768}\left(6435 T_{0}^{*}+11440 T_{1}^{*}+8008 T_{2}^{*}+4368 T_{3}^{*}+1820 T_{4}^{*}+560 T_{5}^{*}\right. \\
& \left.+120 T_{6}^{*}+16 T_{7}^{*}+T_{8}^{*}\right)
\end{aligned}
$$

Tchebyshev 多项式除在多项式插值结点选取方面的应用外，还有许多重要的应用.例如:

## 一、Tchebyshev 级数展开

设函数 $F(x)$ 在区间 $[-1,1]$ 内有连续的 1 阶导数, 则它有一个在 $[-1,1]$内绝对一致收敛的 Tchebyshev 级数展开式

$$
\begin{equation*}
F(x)=\sum_{k=0}^{\infty} a_{k} T_{k}(x)=\frac{1}{2} a_{0} T_{0}(x)+a_{1} T_{1}(x)+a_{2} T_{2}(x)+\cdots \tag{3.12}
\end{equation*}
$$

其中

$$
\begin{equation*}
a_{k}=\frac{2}{\pi} \int_{-1}^{1} F(x) T_{k}(x)\left(1-x^{2}\right)^{-1 / 2} \mathrm{~d} x \tag{3.13}
\end{equation*}
$$

展开式(3.12)的截断多项式很接近 $F(x)$ 的最佳逼近多项式。
例1 求 $f(x)=\arctan x$ 于 $[-1,1]$ 的逼近多项式。
$f(x)$ 的 5 次最佳逼近多项式为

$$
p_{5}^{*}(x)=0.9953580 x-0.2886902 x^{3}+0.0793390 x^{5} \text {, }
$$

相应偏差为

$$
\max _{-1 \leqslant x \leqslant 1}\left|\arctan x-p_{5}^{*}(x)\right|=0.0006086
$$

另一方面， $f(x)=\arctan x$ 的 Tchebyshev 展开的前 3 项部分和 $\sigma_{2}(x)$ 为 $(\tau=\sqrt{2}-1)$

$$
\begin{aligned}
\sigma_{2}(x) & =2 \sum_{m=0}^{2}(-1)^{m} \cdot \tau^{2 m+1} \cdot T_{2 m+1}(x) /(2 m+1) \\
& =0.994949 x-0.2870605 x^{3}+0.0780372 x^{5}
\end{aligned}
$$

相应偏差为

$$
\max _{-1 \leqslant x \leqslant 1}\left|\arctan x-\sigma_{2}(x)\right| \leqslant 0.0007
$$

这表明 $p_{5}^{*}(x)$ 与 $\sigma_{2}(x)$ 是相差无几的。
应该指出的是, Tchebyshev 级数的收玫性理论是与通常 Fourier 级数的收玫性理论相关联的. 事实上, 若记 $F(x)$ 的 Tchebyshev 级数为

$$
F(x)=\sum^{\prime} a_{k} T_{k}(x)
$$

只要作变量替换 $x=\cos t$, 即可得到

$$
\begin{equation*}
F(\cos t)=\sum^{\prime} a_{k} \cos k t \tag{3.14}
\end{equation*}
$$

其中

$$
a_{k}=\frac{2}{\pi} \int_{0}^{\pi} F(\cos t) \cos k t \mathrm{~d} t
$$

所以本质上 $F(x)$ 的 Tchebyshev 级数正是 $F(\cos t)$ 函数的 Fourier 余弦级数. 正因为如此，人们可以通过计算函数 $F(\cos t)$ 的余弦级数系数的各种可行方法来获得 Tchebyshev 级数展开的系数, 从而获得 $F(x)$ 的很好的逼近多项式。

## 二、逼近多项式的经济化

不妨设所讨论区间为 $[-1,1]$ ，假定我们已通过某种途径，例如 Taylor 展开式，获得了 $f(x) \in C[-1,1]$ 的一个近似多项式 $p_{n}(x) \in P_{n}$ ，它使得

$$
\left|f(x)-p_{n}(x)\right|<\varepsilon_{1}, \quad-1 \leqslant x \leqslant 1
$$

我们希望寻求一个次数低于 $n$ 的多项式 $p(x)$, 使得 $p(x)$ 与 $f(x)$ 在 $[-1,1]$ 上的误差仍不超过事先指定的允许误差 $\varepsilon$ :

$$
|f(x)-p(x)|<\varepsilon, \quad-1 \leqslant x \leqslant 1 .
$$

如何来选取这样的 $p(x) \in \mathbb{P}_{n-1}$ ?
设

$$
\begin{equation*}
p_{n}(x)=a_{n} x^{n}+p_{n-1}(x), \quad a_{n} \neq 0 \tag{3.15}
\end{equation*}
$$

于是

$$
\begin{aligned}
p_{n}(x)-p(x) & =a_{n} x^{n}+p_{n-1}(x)-p(x) \\
& =a_{n}\left[x^{n}+\frac{p_{n-1}(x)-p(x)}{a_{n}}\right] .
\end{aligned}
$$

根据 Tchebyshev 多项式的最小零偏差性质，人们应该选取 $p(x) \in P_{n-1}$ ，使得

$$
x^{n}+\frac{p_{n-1}(x)-p(x)}{a_{n}}=\frac{1}{2^{n-1}} \cdot T_{n}(x)
$$

其中 $T_{n}(x)$ 为 $n$ 次 Tchebyshev 多项式，即取

$$
\begin{equation*}
p(x)=p_{n}(x)-\frac{a_{n}}{2^{n-1}} T_{n}(x) \tag{3.16}
\end{equation*}
$$

则 $p(x)$ 恰为 $p_{n}(x)$ 在 $P_{n-1}$ 中的最佳逼近多项式。（为什么？请补证之。）由 （3.15），如用 $p_{n-1}(x)$ 来近似 $p_{n}(x)$ ，则在 $[-1,1]$ 上的误差为 $\left|a_{n}\right|$ 。但若用 (3.16) 中的 $p(x)$ 来近似 $p_{n}(x)$ ，则相应误差项为 $2^{1-n} a_{n} T_{n}(x)$ ，即其误差不超过 $2^{1-n}\left|a_{n}\right|$ 。再用较低次多项式替代余项中的最高次项 $a_{r}^{*} x^{r}, \cdots$ ，直到误差 $2^{1-r}\left|a_{r}^{*}\right|$ 不可忽略时为止。
一般可采用以下公式来替换由 Taylor 展开所得幂级数的 $x^{k}$ :

$$
x^{k}=\frac{1^{1}}{2^{k-1}}\left[T_{k}(x)+\binom{k}{1} T_{k-2}(x)+\binom{k}{2} T_{k-4}(x)+\cdots\right]
$$

其中方括号中的最后一项依赖于 $k$ 的奇偶性，它为

$$
\begin{array}{ll}
\cdots+\binom{k}{(k-1) / 2} T_{1}(x), & \text { 当 } k \text { 为奇数, } \\
\cdots+\frac{1}{2}\binom{k}{k / 2} T_{0}(x), & \text { 当 } k \text { 为偶数. }
\end{array}
$$

常用的低次幂表达式为

$$
\begin{aligned}
& 1=T_{0}(x) \\
& x=T_{1}(x) \\
& x^{2}=\frac{1}{2}\left(T_{0}(x)+T_{2}(x)\right) \\
& x^{3}=\frac{1}{4}\left(3 T_{1}(x)+T_{3}(x)\right) \\
& x^{4}=\frac{1}{8}\left(3 T_{0}(x)+4 T_{2}(x)+T_{4}(x)\right) \\
& x^{5}=\frac{1}{16}\left(10 T_{1}(x)+5 T_{3}(x)+T_{5}(x)\right) \\
& x^{6}=\frac{1}{32}\left(10 T_{0}(x)+15 T_{2}(x)+6 T_{4}(x)+T_{6}(x)\right) \\
& x^{7}=\frac{1}{64}\left(35 T_{1}(x)+21 T_{3}(x)+7 T_{5}(x)+T_{7}(x)\right) \\
& x^{8}=\frac{1}{128}\left(35 T_{0}(x)+56 T_{2}(x)+28 T_{4}(x)+8 T_{6}(x)+T_{8}(x)\right)
\end{aligned}
$$

例2 用6 次多项式在区间 $[-1,1]$ 上逼近 $f(x)=\cos x$.
$f(x)=\cos x$ 的 Taylor 级数部分和

$$
q_{6}(x)=1-\frac{x^{2}}{2!}+\frac{x^{4}}{4!}-\frac{x^{6}}{6!}
$$

的逼近误差界为

$$
\begin{aligned}
0.000025 & >\frac{1}{8!}>\max _{-1 \leq x \leq 1}\left|f(x)-q_{6}(x)\right| \geqslant\left|f(1)-q_{6}(1)\right| \\
& >\frac{1}{8!}-\frac{1}{10!}>0.000024
\end{aligned}
$$

但若用 $f(x)=\cos x$ 的 Taylor 展开部分和 $q_{8}(x)$ 作逼近, 并同时用 Tchebyshev 多项式组来替代 $q_{8}(x)$ 中的 $x^{8}$ ，则得到一个新的 6 次多项式 $p_{6}(x)$ ，它仍是一
个偶多项式，其误差为

$$
\max _{-1 \leqslant x \leqslant 1}\left|f(x)-p_{6}(x)\right|<\frac{1}{10!}+\frac{1}{2^{7} \cdot 8!}<0.00000047
$$

由此看来，一个如此简单的替换，竟使逼近的精确度提高了 50 倍之多！

## §4 最佳一致逼近的收敛速度估计

Weierstrass 定理指出了，对任意给定的 $f(x) \in C[a, b]$ ，存在多项式 $p_{n}(x) \in \mathbb{P}_{n}$ ，使得

$$
\lim _{n \rightarrow \infty} \max _{n \leqslant x \leqslant b}\left|f(x)-p_{n}(x)\right|=0 .
$$

显然

$$
\max _{a \leqslant x \leqslant b}\left|f(x)-p_{n}(x)\right| \geqslant E_{n} \geqslant 0
$$

并且 $E_{n} \geqslant E_{n+1}$, 所以 $E_{n}$ 单调下降地趋于零。
本节讨论 $E_{n}$ 收玫于 0 的速度（即 Jackson 定理），其逆问题（即 Bernstein 函数构造论) 及相关问题.

先看例子。
例1 设 $f(x)=\mathrm{e}^{x}$ ，研究在 $[-1,1]$ 上， $E_{n}$ 收敛于 0 的速度。
按第三章所述多项式插值理论, 在 $[-1,1]$ 上如以 $n+1$ 次 Tchebyshev 多项式 $T_{n+1}(x)$ 的零点作为 $n$ 次插值多项式的结点, 则该插值多项式 $p_{n}(x)$ 与 $f(x)$的误差为

$$
f(x)-p_{n}(x)=\frac{\mathrm{e}^{\xi}}{(n+1)!} \frac{T_{n+1}(x)}{2^{n}}, \quad-1<\xi<1
$$

所以

$$
E_{n} \leqslant \max _{-1 \leqslant x \leqslant 1}\left|f(x)-p_{n}(x)\right| \leqslant \frac{\mathrm{e}}{(n+1)!2^{n}}
$$

即 $E_{n} \downarrow 0$ 的速度很快.
例 2 说明 $E_{n} \downarrow 0$ 的速度可以很慢. 特别地, 可以证明不论 $a_{n} \downarrow 0$ 的收敛速度如何缓慢，总可以找到如此的 $f(x) \in C[-1,1]$ ，使 $E_{n} \geqslant a_{n}(n=1,2, \cdots)$.

证明 取 $c_{n}=a_{n-1}-a_{n}, n=2,3, \cdots$,

$$
c_{1}=a_{1}
$$

作函数级数

$$
\begin{equation*}
f(x)=\sum_{k=1}^{\infty} c_{k} T_{3^{k}}(x) \tag{4.1}
\end{equation*}
$$

因为 $\left|T_{n}(x)\right| \leqslant 1(-1 \leqslant x \leqslant 1), c_{k} \geqslant 0(k=1,2, \cdots)$, 所以

$$
\left|c_{k} T_{3^{k}}(x)\right| \leqslant c_{k}, \quad-1 \leqslant x \leqslant 1
$$

即 $\sum_{1}^{\infty} c_{k}$ 是 $f(x)=\sum_{1}^{\infty} c_{k} T_{3^{k}}(x)$ 的控制级数。因为

$$
\begin{aligned}
\sum_{1}^{n} c_{k} & =a_{1}+\left(a_{1}-a_{2}\right)+\left(a_{2}-a_{3}\right)+\cdots+\left(a_{n-1}-a_{n}\right) \\
& =2 a_{1}-a_{n}
\end{aligned}
$$

利用 $M$ 判别法, 可知 $f(x)=\sum_{k=1}^{\infty} c_{k} T_{3^{k}}(x)$ 于 $[-1,1]$ 上一致收玫。又 $T_{3^{k}}{ }^{k}(x)$ 显然在 $[-1,1]$ 连续,所以按 $(4.1)$ 定义的函数 $f(x) \in C[-1,1]$.

下面指出如此找到的 $f(x)$ 即满足

$$
E_{n} \geqslant a_{n} \downarrow 0
$$

考虑 $f(x)$ 的部分和

$$
p(x)=\sum_{k=1}^{n} c_{k} T_{3^{k}}(x) \in \mathbb{P}_{3^{n}}
$$

它与 $f(x)$ 的误差为

$$
\begin{gather*}
f(x)-p(x)=\sum_{k=n+1}^{\infty} c_{k} T_{3^{k}}(x)  \tag{4.2}\\
\max _{-1 \leqslant x \leqslant 1}|f(x)-p(x)| \leqslant \sum_{k=n+1}^{\infty} c_{k}=\left(a_{n}-a_{n+1}\right)+\left(a_{n+1}-a_{n+2}\right)+\cdots=a_{n}
\end{gather*}
$$

(4.2) 右端第 1 项中 $T_{3^{n+1}}(x)$ 的极值点为

$$
\begin{equation*}
x_{i}=\cos \frac{i \pi}{3^{n+1}}, \quad i=0,1, \cdots, 3^{n+1} \tag{4.3}
\end{equation*}
$$

在这些点处, 当 $k \geqslant n+1$ 时,

$$
\begin{aligned}
T_{3^{k}}\left(x_{i}\right) & =\cos \left(3^{k} \arccos \left(\cos \frac{i \pi}{3^{n+1}}\right)\right) \\
& =\cos \left(3^{k} \cdot \frac{i \pi}{3^{n+1}}\right) \\
& =\cos \left(3^{k-n-1} i \pi\right)=\cos i \pi=(-1)^{i}
\end{aligned}
$$

因此

$$
\begin{aligned}
f\left(x_{i}\right)-p\left(x_{i}\right) & =\sum_{k=n+1}^{\infty} c_{k} T_{3^{k}}\left(x_{i}\right) \\
& =(-1)^{i} \sum_{k=n+1}^{\infty} c_{k}=(-1)^{i} a_{n}, \quad i=0,1, \cdots, 3^{n+1}
\end{aligned}
$$

注意到交错点组 (4.3) 的点数 $3^{n+1}+1 \geqslant 3^{n}+2$, 由 Tchebyshev 定理, $p(x)$ 是 $f(x)$ 的 $3^{n}$ 次最佳逼近多项式，所以

$$
E_{3^{n}}=a_{n},
$$

从而

$$
E_{n} \geqslant E_{3^{n}}=a_{n} .
$$

从上述例子不难看出, $E_{n}$ 单调下降趋于零的速度可以相差很大. 实际上, $E_{n}$ 趋于零的速度与函数 $f(x)$ 的性质密切相关. 本节中我们将集中讨论此类问题.

## (一) 连续模数及其性质

"连续模数"是一种用来表示函数连续性状态的基本数量. 在分析函数的结构性质与多项式逼近速度之问的关系时，它起着很重要的作用。

今后我们用 $\langle a, b\rangle$ 来表示以 $a, b$ 为端点的一般区间（可以是开的、闭的、半开半闭的区间，也可以是 $(-\infty,+\infty)$ )。假设 $f(x)$ 是定义在 $\langle a, b\rangle$ 上的一个实函数，数量

$$
\omega(\delta)=\sup _{|x-y| \leqslant \delta}\{|f(x)-f(y)|\}
$$

称作函数 $f(x)$ 的连续模数, 其中 $\delta$ 是一个任意正数.
连续模数 $\omega(\delta)$ 实际是刻画了当自变数的两个值之差不大于 $\delta$ 时, 函数值之间相差的最大可能值. 对于固定的 $\delta, \omega(\delta)$ 是函数振荡特性的度量. 下面我们列出有关连续模数的一系列简单性质，它们的验证都是十分容易的（其中一部分留给读者作为习题).
$1^{\circ}$ 函数 $\omega(\delta)$ 是单调递增的, 亦即当 $\delta_{1}<\delta_{2}$ 时, 有

$$
\omega\left(\delta_{1}\right) \leqslant \omega\left(\delta_{2}\right)
$$

$2^{\circ}$ 函数 $f(x)$ 在 $\langle a, b\rangle$ 上一致连续的充分必要条件，是

$$
\lim _{\delta \rightarrow 0} \omega(\delta)=0
$$

这只需根据一致连续的定义即可看出。
$3^{\circ}$ 若 $n$ 是一个正整数, 则

$$
\omega(n \delta) \leqslant n \omega(\delta)
$$

事实上，这相当于下列不等式成立

$$
\sup _{|x-y| \leqslant n \delta}|f(x)-f(y)| \leqslant \sum_{i=1}^{n} \sup _{\left|x_{i}-y_{i}\right| \leqslant \delta}\left|f\left(x_{i}\right)-f\left(y_{i}\right)\right|
$$

$4^{\circ}$ 对于任意正数 $\lambda$ 都有不等式

$$
\omega(\lambda \delta) \leqslant(\lambda+1) \omega(\delta)
$$

事实上，令 $[\lambda]$ 表示 $\lambda$ 的整数部分，则易见

$$
\omega(\lambda \delta) \leqslant \omega(([\lambda]+1) \delta) \leqslant([\lambda]+1) \omega(\delta) \leqslant(\lambda+1) \omega(\delta)
$$

性质 $4^{\circ}$ 在我们今后的讨论中经常会用到。
$5^{\circ}$ 设 $f(x) \in \operatorname{Lip}_{M^{\alpha}}$ 表示函数 $f(x)$ 在区间 $\langle a, b\rangle$ 上恒适合如下的 Lipschitz 条件:

$$
|f(x)-f(y)| \leqslant M|x-y|^{a},
$$

其中正常数 $\alpha(0<\alpha<1)$ 和 $M$ 分别称为指数和系数。亦可把满足此种条件的所有函数的集合称为 Lipschitz 函数类 $\mathrm{Lip}_{M} \alpha$ 。这样，下列两个关系式

$$
f(x) \in \operatorname{Lip}_{M} \alpha, \quad \omega(\delta) \leqslant M \delta^{\alpha}
$$

便是完全等价的.
事实上, 如果 $f(x) \in \operatorname{Lip}_{M^{\alpha}}$, 则

$$
\omega(\delta)=\sup _{|x-y| \leqslant \delta}|f(x)-f(y)| \leqslant M \sup _{|x-y| \leqslant \delta}|x-y|^{\alpha}=M \delta^{\alpha}
$$

反之, 若 $\omega(\delta) \leqslant M \delta^{\alpha}$, 则

$$
|f(x)-f(y)| \leqslant \omega(|x-y|) \leqslant M|x-y|^{\alpha}
$$

## (二) Jackson 定理

函数的结构性质（如连续性，可微性，满足 Lipschitz 条件等属性）究竟对最小偏差 $E_{n}$ 趋于 0 的速度会发生怎样的影响呢? 下面我们就来论述 D. Jackson 所得到的一些主要结果。

Jackson 定理1 设 $f(x) \in \operatorname{Lip}_{M} 1$, 并且具有周期 $2 \pi$, 则一定存在一绝对常数 $K$, 使得

$$
\begin{equation*}
E_{n}^{*} \leqslant \frac{K M}{n} \quad(n=1,2,3, \cdots) \tag{4.4}
\end{equation*}
$$

其中 $E_{n}^{*} \stackrel{\text { def }}{=} E_{n}^{*}(f)$ 为 $n$ 阶三角多项式对 $f(x)$ 的最佳逼近（或最小偏差）。
这是一个很重要的结果，以后我们就会看到，利用此结果可以完全解决关于函数类 $C[a, b]$ 与 $C_{2 \pi}$ 的 $E_{n}$ 与 $E_{n}^{*}$ 究竟以何种速度下降到零的问题。

为证 Jackson 定理1, 先证下面的引理。
引理 若 $m$ 为正整数,则分式

$$
\begin{equation*}
\left[\frac{\sin \frac{m x}{2}}{\sin \frac{x}{2}}\right]^{4} \tag{4.5}
\end{equation*}
$$

必是 $x$ 的一个 $2 m-2$ 阶的偶性三角多项式。
证明 事实上，只需验证分式

$$
\left[\frac{\sin \frac{m x}{2}}{\sin \frac{x}{2}}\right]^{2}=\frac{1-\cos m x}{1-\cos x}
$$

是一个 $m-1$ 阶三角多项式即可. 比较等式

$$
\cos m x+\mathrm{i} \sin m x=(\cos x+\mathrm{i} \sin x)^{m}
$$

的两边可得知

$$
1-\cos m x=1-\sum_{k \geqslant 0}(-1)^{k}\binom{m}{2 k} \cos ^{m-2 k} x \sin ^{2 k} x
$$

于是

$$
\frac{1-\cos m x}{1-\cos x}=\frac{1-\cos ^{m} x}{1-\cos x}-\sum_{k \geqslant 1}(-1)^{k}\binom{m}{2 k} \cos ^{m-2 k} x \frac{\left(1-\cos ^{2} x\right)^{k}}{1-\cos x}
$$

注意上式右端各项中的分式都可化为 $\cos x$ 的 $m-1$ 次多项式. 因此最后可以肯定（4.5）中的分式能够表示为

$$
\left[\frac{\sin \frac{m x}{2}}{\sin \frac{x}{2}}\right]^{4}=A+\sum_{k=1}^{2 m-2} a_{k} \cos k x
$$

引理证毕.
Jackson 定理1 的证明 记

$$
\begin{aligned}
& \lambda_{m}=\left(\int_{-\frac{\pi}{2}}^{\frac{\pi}{2}}\left[\frac{\sin m u}{m \sin u}\right]^{4} \mathrm{~d} u\right)^{-1} \\
& I_{m}(x)=\lambda_{m} \int_{-\frac{\pi}{2}}^{\frac{\pi}{2}} f(x+2 u)\left[\frac{\sin m u}{m \sin u}\right]^{4} \mathrm{~d} u
\end{aligned}
$$

如果令 $x+2 u=y$ ，并注意到 $f(y)$ 与整个被积函数的周期性（即可将积分区间任意平移), 即可将 $I_{m}(x)$ 改写为

$$
I_{m}(x)=\frac{1}{2} \lambda_{m} \int_{-\pi}^{\pi} f(y)\left[\frac{\sin \frac{m(y-x)}{2}}{m \sin \frac{y-x}{2}}\right]^{4} \mathrm{~d} y
$$

依引理，上式右端为 $x$ 的 $2 m-2$ 阶三角多项式。下面证明三角多项式 $I_{m}(x)$ 能以极快的速度收玫于给定的函数 $f(x)$ 。

我们来估计差数 $\left|I_{m}(x)-f(x)\right|$. 注意 $f(x) \in \operatorname{Lip}_{M} 1$, 亦即有

$$
|f(x+2 u)-f(x)| \leqslant 2 M|u|
$$

因此易导出

$$
\begin{aligned}
\left|I_{m}(x)-f(x)\right| & =\left|\lambda_{m} \int_{-\frac{\pi}{2}}^{\frac{\pi}{2}}(f(x+2 u)-f(x))\left[\frac{\sin m u}{m \sin u}\right]^{4} \mathrm{~d} u\right| \\
& \leqslant 2 M \lambda_{m} \int_{-\frac{\pi}{2}}^{\frac{\pi}{2}}|u|\left[\frac{\sin m u}{m \sin u}\right]^{4} \mathrm{~d} u \\
& =4 M \lambda_{m} \int_{0}^{\frac{\pi}{2}} u\left[\frac{\sin m u}{m \sin u}\right]^{4} \mathrm{~d} u \\
& =2 M \frac{\int_{0}^{\frac{\pi}{2}} u[\cdots]^{4} \mathrm{~d} u}{\int_{0}^{\frac{\pi}{2}}[\cdots]^{4} \mathrm{~d} u}
\end{aligned}
$$

进一步再来分别估计最后一式中的分子与分母. 令 $c_{1}$ 与 $c_{2}$ 为由下列两积分所定义的常数：

$$
c_{1}=\int_{0}^{\frac{\pi}{2}} \frac{\sin ^{4} t}{t^{4}} \mathrm{~d} t, \quad c_{2}=\int_{0}^{\infty} \frac{\sin ^{4} t}{t^{3}} \mathrm{~d} t
$$

注意 $0<\sin u<u\left(0<u \leqslant \frac{\pi}{2}\right)$ ，且 $\frac{\sin u}{u}$ 在 $\left(0, \frac{\pi}{2}\right)$ 内为单调下降函数，从而

$$
\frac{\sin u}{u}>\frac{\sin \left(\frac{\pi}{2}\right)}{\pi / 2}=\frac{2}{\pi}, \quad \frac{1}{\sin u}<\frac{\pi}{2} \cdot \frac{1}{u}
$$

因此分母、分子各有如下估计式:

$$
\begin{aligned}
\int_{0}^{\frac{\pi}{2}}[\cdots]^{4} \mathrm{~d} u & >\int_{0}^{\frac{\pi}{2}}\left[\frac{\sin m u}{m u}\right]^{4} \mathrm{~d} u=\frac{1}{m} \int_{0}^{\frac{m \pi}{2}} \frac{\sin ^{4} t}{t^{4}} \mathrm{~d} t \\
& \geqslant \frac{1}{m} \int_{0}^{\frac{\pi}{2}} \frac{\sin ^{4} t}{t^{4}} \mathrm{~d} t=\frac{c_{1}}{m} \\
\int_{0}^{\frac{\pi}{2}} u[\cdots]^{4} \mathrm{~d} u & \leqslant\left(\frac{\pi}{2}\right)^{4} \int_{0}^{\frac{\pi}{2}} u\left[\frac{\sin m u}{m u}\right]^{4} \mathrm{~d} u
\end{aligned}
$$

$$
<\frac{1}{m^{2}}\left(\frac{\pi}{2}\right)^{4} \int_{0}^{\infty} \frac{\sin ^{4} t}{t^{3}} \mathrm{~d} t=\left(\frac{\pi}{2}\right)^{4} \frac{c_{2}}{m^{2}}
$$

分别以所得出的下界与上界代入原来分式中，便得到

$$
\begin{equation*}
\left|I_{m}(x)-f(x)\right| \leqslant \frac{\pi^{4} c_{2} M}{8 c_{1} m} \quad(m=1,2,3, \cdots) \tag{4.6}
\end{equation*}
$$

最后，令 $n$ 为任意正整数；又令 $m$ 取为整数部分： $m=\left[\frac{n+2}{2}\right]$ （如是，自然有 $2 m-2<n \leqslant 2 m)$. 又令 $I_{m}(x)$ 改记作 $T_{n}(x)$ ，则 $T_{n}(x)$ 便是一个阶数不大于 $n$ 的三角多项式. 注意 $\frac{1}{m}<\frac{2}{n}$, 因此当 $K=\frac{\pi^{4} c_{2}}{4 c_{1}}$ 时, 由（4.6）式便导出不等式 (4.4). 这就证明了 Jackson 定理1.

Jackson 基本定理 设 $f(x) \in C_{2 \pi}$. 则对于一切正整数 $n$ 都成立着如下的估计式:

$$
\begin{equation*}
E_{n}^{*} \leqslant K \omega\left(\frac{1}{n}\right) \tag{4.7}
\end{equation*}
$$

其中 $K$ 为绝对常数， $\omega\left(\frac{1}{n}\right)$ 表 $f(x)$ 的连续模数。
证明 只需证明有 $n$ 阶三角多项式 $T_{n}(x)$ 存在, 使得不等式 $\left|T_{n}(x)-f(x)\right| \leqslant K \omega\left(\frac{1}{n}\right)$ 成立即可。

显然总能够作出如此的折线函数 $g(x)$, 使其在下列点组

$$
-\pi,-\pi+\frac{2 \pi}{n},-\pi+\frac{4 \pi}{n}, \cdots, \pi-\frac{2 \pi}{n}, \pi
$$

上和函数 $f(x)$ 的值一致. 自然, 它本身也一定是一个具有 $2 \pi$ 周期的连续函数.又由于它的图形是由各段直线连成的，各段端点的纵坐标之差显然不会大于 $\omega\left(\frac{2 \pi}{n}\right)$ 。因此各段直线的斜率的绝对值均不超过

$$
\begin{equation*}
M=\frac{\omega(2 \pi / n)}{2 \pi / n} \tag{4.8}
\end{equation*}
$$

如此，可见对于上述 $M$ 而言，定理1的条件恰好能被函数 $g(x)$ 所满足。依定理 1 和（4.8）式，自然存在有三角多项式 $T_{n}(x)$ ，使得

$$
\left|T_{n}(x)-g(x)\right| \leqslant \frac{K^{\prime} M}{n}=\frac{K^{\prime}}{2 \pi} \omega\left(\frac{2 \pi}{n}\right)
$$

其中 $K^{\prime}$ 为绝对常数. 另一方面, 由于具有同一横坐标 $x$ 的曲线上的点 $(x$, $f(x))$ 与折线上的点 $(x, g(x))$ 同它们附近的公共交点的纵坐标值比较起来, 其
差都不会大过 $\omega\left(\frac{2 \pi}{n}\right)$ ，因此

$$
|g(x)-f(x)| \leqslant 2 \omega\left(\frac{2 \pi}{n}\right)
$$

于是合并起来, 并注意 $\omega(\lambda \delta) \leqslant(\lambda+1) \omega(\delta)$ ，便得到了不等式

$$
\left|T_{n}(x)-f(x)\right| \leqslant\left(\frac{K^{\prime}}{2 \pi}+2\right) \omega\left(\frac{2 \pi}{n}\right) \leqslant K \omega\left(\frac{1}{n}\right)
$$

其中取 $K=(2 \pi+1)\left(\frac{K^{\prime}}{2 \pi}+2\right)$ ，因而定理得证。
由本定理显然易得如下的几条推论:
推论1 Weierstrass 第二定理恒成立。
推论 2 若 $f(x) \in \operatorname{Lip}_{M}{ }^{\alpha}(0<\alpha \leqslant 1)$ ，则

$$
\begin{equation*}
E_{n}^{*} \leqslant K M \frac{1}{n^{\alpha}} \tag{4.9}
\end{equation*}
$$

推论3 若 $f(x) \in C_{2 \pi}$ 且存在着有界的导数 $f^{\prime}(x)$, 而 $\left|f^{\prime}(x)\right| \leqslant M$ ，则

$$
E_{n}^{*} \leqslant K M \frac{1}{n}
$$

事实上，由于 $\omega\left(\frac{1}{n}\right) \rightarrow 0(n \rightarrow \infty)$ ，故推论 1 显然成立. 又由所述连续模数的性质 $5^{\circ}$ ，可知推论 2 也显然成立。其次若设 $\left|f^{\prime}(x)\right| \leqslant M$ ，则由 Lagrange 中值定理，

$$
\left|f\left(x_{1}\right)-f\left(x_{2}\right)\right|=\left|f^{\prime}(\xi)\left(x_{1}-x_{2}\right)\right| \leqslant M\left|x_{1}-x_{2}\right|
$$

可知 $f(x) \in \operatorname{Lip}_{M} 1$. 因此推论 3 又是推论 2 的推论。
注记 Jackson 定理1中出现的积分 $I_{m}(x)$ 叫做 Jackson 奇异积分，它可写作

$$
I_{m}(x)=\int_{-\pi}^{\pi} f(y) \Psi_{m}(y-x) \mathrm{d} y
$$

其中 $\Psi_{m}(u)$ 叫做 Jackson核，它可以表成

$$
\Psi_{m}(u)=\frac{3}{2 m \pi\left(2 m^{2}+1\right)}\left(\frac{\sin \frac{m u}{2}}{\sin \frac{u}{2}}\right)^{4}
$$

事实上，把三角恒等式

$$
\left(\frac{\sin \frac{m u}{2}}{\sin \frac{u}{2}}\right)^{2}=m+2 \sum_{k=1}^{m-1}(m-k) \cos k u
$$

代入原 $I_{m}(x)$ 的因子 $\lambda_{m}$ 中，可以将 $\lambda_{m}$ 的数值精确地算出来：

$$
\lambda_{m}=\frac{3 m^{3}}{\pi\left(2 m^{2}+1\right)}
$$

具体算法并不困难，此处从略。
在函数结构性质的研究中，起着极重要作用的工具是以下两个 Bernstein 不等式.

## (三) Bernstein 不等式

设

$$
T(x)=A+\sum_{k=1}^{n}\left(a_{k} \cos k x+b_{k} \sin k x\right)
$$

是一个 $n$ 阶的三角多项式，则它的导数 $T^{\prime}(x)$ 有估计式：

$$
\begin{equation*}
\left|T^{\prime}(x)\right| \leqslant n \cdot \max |T(x)| \tag{4.10}
\end{equation*}
$$

这个命题可以改述为如下的等价形式：若 $\max \left|T^{\prime}(x)\right|=1$ ，则

$$
\begin{equation*}
\max |T(x)| \geqslant \frac{1}{n} \tag{4.11}
\end{equation*}
$$

事实上，只要在原来的估计式的两边，除以常数 $K=\max \left|T^{\prime}(x)\right|$ ，并将多项式 $\frac{1}{K} T(x)$ 仍记为 $T(x)$ ，便可看出它们之间的等价性。至于 $K>0$ 这一事实，那是由 $T(x) \not \equiv 0$ 所保证的.

我们来证不等式(4.11). 这里所给出的证法是由 M. Riesz 和 Vallée-Poussin 彼此独立地提出的.

利用反证法，假定 $\max |T(x)|<\frac{1}{n}$ 。于是对于任意常数 $c$ ，可知函数

$$
F(x)=\frac{1}{n} \cos (n x-c)-T(x)
$$

在各点 $\frac{c}{n}, \frac{\pi+c}{n}, \frac{2 \pi+c}{n}, \cdots, \frac{2 n \pi+c}{n}$ 上都和函数 $\cos (n x-c)$ 有相同的符号；而 $\cos (n x-c)$ 在这组点上将依次取值 1 和 -1 . 因此 $F(x)$ 也就在该点组所划分出来的 $2 n$ 个区间的每一个区间内都至少有一个零点 $x_{k}$ 。总之，我们至少有这样一批零点: $x_{1}<x_{2}<\cdots<x_{2 n}$, 而 $\left(x_{2 n}-x_{1}\right)<2 \pi$. 应用 Rolle 定理, 可知 $F^{\prime}(x)$ 在 $2 n$ 个区间 $\left(x_{1}, x_{2}\right),\left(x_{2}, x_{3}\right), \cdots,\left(x_{2 n-1}, x_{2 n}\right),\left(x_{2 n},\left(x_{1}+2 \pi\right)\right)$ 内都有零点存
在，亦即在 $\left(x_{1}, x_{1}+2 \pi\right)$ 内有 $F^{\prime}(x)=0$ 的 $2 n$ 个相异根．注意

$$
F^{\prime}(x)=-\sin (n x-c)-T^{\prime}(x)
$$

据假设 $\max \left|T^{\prime}(x)\right|=1$ ，由连续性知必有一点 $x_{0}$ 使得 $T^{\prime}\left(x_{0}\right)= \pm 1$ 。另一方面，总可以选择常数 $c$ ，使得 $\sin \left(n x_{0}-c\right)$ 取数值干1（其符号恰与 $T^{\prime}\left(x_{0}\right)$ 的符号相反），从而保证 $F^{\prime}\left(x_{0}\right)=0$ 。再注意到 $x_{0}$ 是 $T^{\prime}(x)$ 与 $\sin (n x-c)$ 的极值位置，因此自然还有 $T^{\prime \prime}\left(x_{0}\right)=\left(\sin n x_{0}-c\right)^{\prime}=0$, 亦即还有 $F^{\prime \prime}\left(x_{0}\right)=0$ 。由此可见, $x_{0}$还是 $F^{\prime}(x)$ 的重根。于是连根的重数一并计算在内时， $F^{\prime}(x)$ 便至少将有 $2 n+1$个零点。然而 $F^{\prime}(x)$ 是 $n$ 阶三角多项式，当零点个数在一个周期内超过 $2 n$ 时便只能是 $F^{\prime}(x) \equiv 0$ 。但这是一个矛盾, 因为 $F(x)$ 是一个时取正值时取负值的函数.

总之，由反证法可知 $\max |T(x)| \geqslant \frac{1}{n}$ 。命题得证.
必须指出，估计式中的系数 $n$ 实际是最佳的。例如，对 $T(x)=\sin n x$ 而言，就有

$$
\max \left|T^{\prime}(x)\right|=n \cdot \max |T(x)|
$$

Bernstein 第二不等式 设 $p(x)$ 是 $x$ 的 $n$ 次代数多项式，则下列不等式成立:

$$
\begin{equation*}
\left|p^{\prime}(x)\right| \leqslant \frac{n}{\sqrt{1-x^{2}}} \max _{1 \leqslant x \leqslant 1}|p(x)|,-1<x<1 \tag{4.12}
\end{equation*}
$$

事实上，令 $x=\cos \theta$ ，则应用第一不等式于 $n$ 阶三角多项式 $T(\theta) \equiv$ $p(\cos \theta)$ 上，可得

$$
\left|\frac{\mathrm{d}}{\mathrm{d} \theta} p(\cos \theta)\right|=\left|\sin \theta \cdot p^{\prime}(\cos \theta)\right|=\left|\sqrt{1-x^{2}} p^{\prime}(x)\right| \leqslant n \cdot \max _{-1 \leqslant x \leqslant 1}|p(x)|
$$

因此第二不等式可作为第一不等式的推论导出。
推论 设 $p(x)$ 是 $x$ 的 $n$ 次代数多项式，那么如下的估计式成立：

$$
\begin{equation*}
\left|p^{\prime}(x)\right| \leqslant \frac{n}{\sqrt{(b-x)(x-a)}} \max _{a \leqslant x \leqslant b}|p(x)|, a<x<b . \tag{4.13}
\end{equation*}
$$

为得到这个结论，只需作线性代换：

$$
x=\frac{1}{2}[(b-a) y+a+b] \quad(-1 \leqslant y \leqslant 1)
$$

并将第二不等式应用于 $y$ 的 $n$ 次多项式 $Q(y) \equiv p(x)$ 即可。事实上，

$$
\left|\frac{\mathrm{d}}{\mathrm{d} y} Q(y)\right|=\left|p^{\prime}(x) \frac{\mathrm{d} x}{\mathrm{~d} y}\right|=\frac{b-a}{2}\left|p^{\prime}(x)\right|
$$

$$
\leqslant \frac{n \max _{-1 \leqslant y \leqslant 1}|Q(y)|}{\sqrt{1-y^{2}}}
$$

而此处不等式的右端恒可以化为 $x$ 的函数形式, 从而即可得出推论中的不等式.

## §5 函数的构造性理论

前节已经讨论了函数的结构性质，诸如连续性、可微性等是怎样影响着最佳逼近（或最小偏差） $E_{n}^{*}$ 的递减速度. 这一节将讨论该问题的反问题，即怎样根据 $E_{n}^{*}$ 的递减速度去判定函数的结构特性. 关于这方面所得到的最重要结果是属于Bernstein的。

我们已经知道什么叫 Lipschitz 函数类 $\operatorname{Lip}_{M}{ }^{\alpha}$ ，特别是在系数 $M$ 无关紧要的情形，可以用记号 Lip $\alpha$ 来表示这种函数类. 此外，我们再引进这样一个函数类 $W$ ，它是由满足条件

$$
\omega(\delta) \leqslant A \delta(1+|\ln \delta|)
$$

的一切函数所组成的函数类, 其中 $\ln$ 表示自然对数, 而 $A$ 与可变正数 $\delta$ 无关. 可以证明，若函数的定义范围限于有限区间，则有下面的包含关系（留给读者验证):

$$
\operatorname{Lip} 1 \subset W \subset \mathrm{Lip} \alpha \quad(0<\alpha<1)
$$

Bernstein 定理 设 $f(x) \in C_{2 \pi}$ ，并设 $E_{n}^{*}$ 表示用 $n$ 阶三角多项式类逼近 $f(x)$ 所得的最小偏差. 又设当 $n=1,2,3, \cdots$ 时恒有

$$
\begin{equation*}
E_{n}^{*} \leqslant \frac{K}{n^{\alpha}}, \quad(0<\alpha \leqslant 1) \tag{5.1}
\end{equation*}
$$

那么当 $\alpha<1$ 时可以断定 $f(x) \in \operatorname{Lip} \alpha$ ；而当 $\alpha=1$ 时则可断言 $f(x) \in W$ 。
证明 在证明中，为了叙述和记号的简化，我们约定用记号 $A$ 表示那种与函数变量无关的常数，而它在各次出现时未必代表同一数值（在此种约定下，例如可以写 $2 A=A$ ，等等）。

证明的主要内容无非就是设法寻求关于 $\omega(\delta)$ 的估计式。从而再根据 $\omega(\delta)$与 Lipschitz 条件的联系以及与 $W$ 的条件的联系作出关于 $f(x)$ 所属函数类的结论. 在估计 $|f(x)-f(y)|(|x-y| \leqslant \delta)$ 的过程中需要用到微分中值定理和 Bernstein 不等式.
对于每个 $n$ ，由假设可知都有不高于 $n$ 阶的三角多项式 $T_{n}(x)$ 使得 $\left|T_{n}(x)-f(x)\right| \leqslant \frac{K}{n^{\alpha}}$. 这表明当 $n \rightarrow \infty$ 时 $T_{n}(x)$ 是一致地趋于 $f(x)$ 的。若令

$$
u_{0}(x)=T_{1}(x), \quad u_{n}(x)=T_{2^{n}}(x)-T_{2^{n-1}}(x) \quad(n=1,2, \cdots)
$$

则 $\sum u_{n}(x)$ 便一致收玫于 $f(x)$ ，亦即

$$
f(x)=\sum_{n=0}^{\infty} u_{n}(x)
$$

下面来估计 $|f(x)-f(y)|(|x-y| \leqslant \delta)$, 其中 $0<\delta \leqslant \frac{1}{2}$ 为任意正数. 令 $m$ 选得如此大, 使得 $2^{m-1} \leqslant \frac{1}{\delta}<2^{m}$, 于是

$$
\begin{aligned}
|f(x)-f(y)| \leqslant & \sum_{n=0}^{\infty}\left|u_{n}(x)-u_{n}(y)\right| \\
\leqslant & \sum_{n=0}^{m-1}\left|u_{n}(x)-u_{n}(y)\right| \\
& +\sum_{n=m}^{\infty}\left|u_{n}(x)\right|+\sum_{n=m}^{\infty}\left|u_{n}(y)\right|
\end{aligned}
$$

显然关于 $\left|u_{n}(x)\right|$ 有如下的估计：

$$
\begin{aligned}
\left|u_{n}(x)\right| & \leqslant\left|T_{2^{n}}(x)-f(x)\right|+\left|f(x)-T_{2^{n-1}}(x)\right| \\
& \leqslant \frac{K}{2^{n \alpha}}+\frac{K}{2^{(n-1) \alpha}} \\
& =K \frac{\left(1+2^{\alpha}\right)}{2^{n \alpha}}
\end{aligned}
$$

从而(注意公式(4.10))

$$
\begin{aligned}
\sum_{n=m}^{\infty}\left|u_{n}(x)\right| & \leqslant A \sum_{n=m}^{\infty}\left(\frac{1}{2}\right)^{n a}=A\left(\frac{1}{2}\right)^{m \alpha} \\
|f(x)-f(y)| & \leqslant \sum_{n=0}^{m-1}\left|u_{n}(x)-u_{n}(y)\right|+A\left(\frac{1}{2}\right)^{m a} \\
& =\sum_{n=0}^{m-1} u_{n}^{\prime}(\xi)|x-y|+A\left(\frac{1}{2}\right)^{m a} \\
& \leqslant \sum_{n=0}^{m-1} 2^{n} \max \left|u_{n}(x)\right| \delta+A\left(\frac{1}{2}\right)^{m a} \\
& \leqslant A \delta \sum_{n=0}^{m-1} 2^{n} \frac{1}{2^{n a}}+A\left(\frac{1}{2}\right)^{m a}
\end{aligned}
$$

注意 $\delta>2^{-m}$ ，因此由上述估计可知

$$
\begin{equation*}
\omega(\delta) \leqslant A \delta \sum_{n=0}^{m-1} 2^{n(1-\alpha)}+A \delta^{\alpha} \tag{5.2}
\end{equation*}
$$

以下分别讨论 $\alpha<1$ 与 $\alpha=1$ 的情形. 先设 $\alpha<1$. 此时由于 $2^{m}<\frac{2}{\delta}$, 故得

$$
\sum_{n=0}^{m-1} 2^{n(1-\alpha)}<\frac{2^{m(1-\alpha)}}{2^{1-\alpha}-1}<A\left(\frac{1}{\delta}\right)^{1-\alpha}
$$

从而

$$
\omega(\delta) \leqslant A\left(\frac{1}{\delta}\right)^{1-a} \delta+A \delta^{a}=A \delta^{a}
$$

这表明 $f(x) \in \operatorname{Lip} \alpha$.
又若 $\alpha=1$,则 $(5.2)$ 变为

$$
\omega(\delta) \leqslant A \delta m+A \delta
$$

既然 $2^{m-1} \leqslant \frac{1}{\delta}$, 因此 $m-1 \leqslant|\ln \delta| \Lambda \ln 2, m \leqslant 2(m-1) \leqslant A|\ln \delta|$, 从而

$$
\omega(\delta) \leqslant A \delta|\ln \delta|+A \delta \leqslant A \delta(|\ln \delta|+1)
$$

这表明 $f(x) \in W$ 。证毕。
将此处所论证的定理和 Jackson 基本定理的推论 2 作一比较, 即可看出，为使函数 $f(x) \in \operatorname{Lip} \alpha(0<\alpha<1)$ ，充分且必要条件是 $E_{n}^{*} \leqslant \frac{K}{n^{\alpha}}$ 。但当 $\alpha=1$时，该条件却只是必要而未必充分. 事实上，存在这样的函数 $f(x)$ (例如可取 $f(x)=\sum_{k=1}^{\infty} \frac{\sin k x}{k^{2}} \in C_{2 \pi}$ )，它虽然满足条件 $E_{n}^{*} \leqslant \frac{K}{n}$ ，却未必有 $f(x) \in$ Lip 1.

Bernstein 还建立了如下的定理:
定理2 设 $f(x) \in C_{2 \pi}$, 又设

$$
E_{n}^{*} \leqslant \frac{K}{n^{p+\alpha}} \quad(n=1,2,3, \cdots)
$$

其中 $p$ 为正整数，而 $0<\alpha \leqslant 1$ ，那么 $f(x)$ 必有连续的 $p$ 阶导数 $f^{(p)}(x)$ ，并且当 $\alpha<1$ 时， $f^{(p)}(x) \in \operatorname{Lip} \alpha$ ；而当 $\alpha=1$ 时， $f^{(p)}(x) \in W$ 。

定理 3 为使 $C_{2 \pi}$ 中的函数 $f(x)$ 有任意阶导数的充分必要条件是对于任意 $p$ 都有

$$
\lim _{n \rightarrow \infty}\left(n^{p} E_{n}^{*}\right)=0
$$

定理 2 的证明和前面定理的证法十分相似. 令 $u_{n}(x)$ 的定义同前, 则由
$\left|T_{n}(x)-f(x)\right| \leqslant \frac{K}{n^{p+\alpha}}$ 出发, 同样可得 (常数记号 $A$ 的用法仍按以前的约定):

$$
\left|u_{n}(x)\right| \leqslant \frac{K}{2^{n(p+\alpha)}}+\frac{K}{2^{(n-1)(p+\alpha)}}=\frac{A}{2^{n p+n \alpha}} .
$$

对 $2^{n}$ 阶多项式 $u_{n}(x)$ 连续利用 $p$ 次 Bernstein 不等式，可得

$$
\left|u_{n}^{(p)}(x)\right| \leqslant\left(2^{n}\right)^{p} \frac{A}{2^{n p+n \alpha}}=\frac{A}{2^{n \alpha}} .
$$

于是依 Weierstrass 的 $M$ 检验法, 可知导数级数 $\sum u_{n}^{(p)}(x)$ 一致收玫到和函数 $f(x)$ 的 $p$ 级导数:

$$
\sum_{n=0}^{\infty} u_{n}^{(p)}(x)=\left(\frac{\mathrm{d}}{\mathrm{d} x}\right)^{p} \sum_{n=0}^{\infty} u_{n}(x)=f^{(p)}(x)
$$

最后只需判定 $f^{(p)}(x)$ 所属的函数类. 显然

$$
\left|f^{(p)}(x)-\sum_{n=0}^{m} u_{n}^{(p)}(x)\right| \leqslant \sum_{n=m+1}^{\infty} \frac{A}{2^{n a}}=\frac{A}{2^{m a}}
$$

既然其中 $\sum_{n=0}^{m} u_{n}^{(p)}(x)$ 是一个阶数不大于 $2^{m}$ 的三角多项式，故用 $E_{n}^{(p)}$ 表示 $f^{(p)}(x)$ 的最佳逼近时，将有

$$
E_{2^{m}}^{(p)} \leqslant \frac{A}{2^{m a}} \quad(m=1,2, \cdots)
$$

对于每一个正整数 $n>2$, 总可选 $m$, 使得 $2^{m} \leqslant n<2^{m+1}$, 因而总有

$$
E_{n}^{(p)} \leqslant E_{2^{m}}^{(p)} \leqslant \frac{A}{2^{m \alpha}}<\frac{A}{2^{(m+1) \alpha}}<\frac{A}{n^{\alpha}}
$$

于是根据 Bernstein 定理便可作出关于 $f^{(p)}(x)$ 所属函数类的结论.
对于定理 3，我们在这里不准备给出它的全部证明，只就定理中所述条件的充分性予以验证。在定理条件之下, 可知对一切足够大的 $n$ (例如 $n>N_{p}$ ), 总有

$$
n^{p+1} E_{n}^{*}<1
$$

因 $N_{p}$ 为有限数,故在诸数

$$
E_{1}^{*}, 2^{p+1} E_{2}^{*}, \cdots, N_{p}^{p+1} E_{N_{p}}^{*}, 1
$$

中必可选一最大者，例如记最大数为 $K_{p}$ ，于是

$$
E_{n}^{*} \leqslant K_{p} \cdot \frac{1}{n^{p+1}}
$$

便对一切 $n$ 都成立。如此，根据定理 2 便得知 $f(x)$ 具有连续的 $p$ 阶导数. 又由于 $p$ 的任意性便得知定理为真。

我们知道，满足条件 $E_{n}^{*}<\frac{K}{n}$ 的以 $2 \pi$ 为周期的函数未必属于 Lip1类。因此，自然产生这样的问题：由条件 $E_{n}^{*}<\frac{K}{n}$ 所界定的类究竟是怎样的函数类？这个问题是被 A. Zygmund 解决的。他发现要寻找的函数类正是下面要讲的 $Z$ 类。
$Z$ 类 类中的元素 $f(x)$ 是以 $2 \pi$ 为周期的连续函数, 并且有这样的常数 $K$使得对一切 $x$ 及一切 $h>0$, 都满足如下的条件:

$$
\begin{equation*}
|f(x+h)-2 f(x)+f(x-h)| \leqslant K h . \tag{5.3}
\end{equation*}
$$

Zygmund 定理 函数 $f(x)$ 属于 $Z$ 类的充分必要条件是 $E_{n}^{*}<\frac{A_{0}}{n}(n=1$, $2, \cdots), A_{0}$ 为某一常数.

证明 所用的工具主要是 Bernstein 不等式和如下的 Jackson 奇异积分

$$
I_{n}(x)=\frac{3}{2 n \pi\left(2 n^{2}+1\right)} \int_{-\pi}^{\pi} f(t)\left[\frac{\sin \frac{n(t-x)}{2}}{\sin \frac{t-x}{2}}\right]^{4} \mathrm{~d} t
$$

仿 Jackson 定理1的证法，利用核函数的偶性，可得

$$
\begin{aligned}
I_{n}(x)-f(x)= & \frac{3}{n \pi\left(2 n^{2}+1\right)} \int_{0}^{\frac{\pi}{2}}[f(x+2 t)-2 f(x) \\
& +f(x-2 t)]\left[\frac{\sin n t}{\sin t}\right]^{4} \mathrm{~d} t
\end{aligned}
$$

先证条件的必要性. 假设 $f(x) \in Z$, 则

$$
\left|I_{n}(x)-f(x)\right| \leqslant \frac{6 K}{n \pi\left(2 n^{2}+1\right)} \int_{0}^{\frac{\pi}{2}} t\left[\frac{\sin n t}{\sin t}\right]^{4} \mathrm{~d} t
$$

因而仿 Jackson 定理 1 的证法，可得估计式（ $A$ 表示如前约定的常数）：

$$
\left|I_{n}(x)-f(x)\right| \leqslant A \cdot \frac{1}{n}
$$

既然 $I_{n}(x)$ 是一个阶数不高于 $2 n-2$ 的三角多项式, 因此上式表明

$$
E_{2 n-2}^{*} \leqslant A \frac{1}{n}
$$

注意到

$$
E_{2 n-1}^{*} \leqslant E_{2 n-2}^{*} \leqslant A \frac{1}{n} \leqslant 3 A \frac{1}{2 n}
$$

因此可知不论 $n$ 为奇数还是偶数，都存在常数 $A$ ，使 $E_{n}^{*}<A \frac{1}{n}$ ，故必要性得证。

再证条件的充分性。假设 $f(x)$ 满足定理中的条件，仿 Bernstein 定理的证法，引进 $2^{n}$ 阶的三角多项式 $u_{n}(x)$ ，于是

$$
\left|u_{n}(x)\right| \leqslant A \frac{1}{2^{n a}}=A \cdot \frac{1}{2^{n}}, \quad f(x)=\sum_{n=0}^{\infty} u_{n}(x)
$$

对于任意正整数 $m$ ，显然有

$$
\sum_{n=m}^{\infty}\left|u_{n}(x)\right| \leqslant A \sum_{n=m}^{\infty} \frac{1}{2^{n}}=A \frac{1}{2^{m}}
$$

这表明, 对于任意 $h>0$, 都有

$$
\begin{aligned}
& |f(x+h)-2 f(x)+f(x-h)| \\
& \quad<\sum_{n=0}^{m-1}\left[u_{n}(x+h)-2 u_{n}(x)+u_{n}(x-h)\right]+\frac{A}{2^{m}}
\end{aligned}
$$

利用两次微分中值公式可得

$$
\begin{aligned}
u_{n}(x+h)-2 u_{n}(x)+u_{n}(x-h) & =h u_{n}^{\prime}(\xi)-h u_{n}^{\prime}(\eta) \\
& =h(\xi-\eta) u_{n}^{\prime \prime}(\zeta)
\end{aligned}
$$

其中 $x-h<\eta<\zeta<\xi<x+h$. 再连用两次 Bernstein 不等式便得出如下的估计式:

$$
\begin{aligned}
& \left|u_{n}(x+h)-2 u_{n}(x)+u_{n}(x-h)\right| \\
& \quad \leqslant 2 h^{2} \max \left|u_{n}^{\prime \prime}(x)\right| \leqslant 2 h^{2}\left(2^{n}\right)^{2} \max \left|u_{n}(x)\right| \\
& \quad \leqslant A h^{2} 2^{n}
\end{aligned}
$$

通过逐项相加得

$$
|f(x+h)-2 f(x)+f(x-h)| \leqslant A h^{2} 2^{m}+\frac{A}{2^{m}}
$$

到此为止 $m$ 都是任意的, 而且上式左端与 $m$ 无关. 因此我们总可适当选择 $m$使得 $2^{-m} \leqslant h \leqslant 2^{1-m}$ ，从而

$$
|f(x+h)-2 f(x)+f(x-h)| \leqslant 2 A h+A h \leqslant 3 A h
$$

这表明 $f(x) \in Z$. 充分性得证.
注记 Zygmund 定理实质上可以看做是对 Bernstein 定理的补充，或者看做是关于 $\alpha=1$ 的那个情况的精确化。事实上，函数类 $Z$ 是介于 Lip1 和交集 $W C_{2 \pi}$之间的,即

$$
\operatorname{Lip} 1 \subset Z \subset W C_{2 \pi}
$$

还可以举例说明 $Z$ 是交集 $W C_{2 \pi}$ 的一个真子集。进一步讨论留给读者。

## §6 代数多项式逼近理论中的有关结果

本节转而讨论代数多项式情形的 Jackson 和 Bernstein 型理论。

## （一）函数的最佳逼近与诱导函数的最佳逼近之间的关系

要研究非周期函数的结构性质与函数的代数多项式逼近阶之间的联系，最简单的方法就是先通过变数代换法把被逼近的函数转变成三角函数，然后用三角多项式来进行逼近（这时即可应用 $\S 4, \S 5$ 中的理论），最后再把三角多项式变回到代数多项式。

现在我们就根据上述想法来进行具体分析。假设 $f(x)$ 是定义在闭区间 $[a, b]$ 上的一个连续函数. 通过变数代换

$$
x=\frac{1}{2}[(b-a) t+(b+a)],
$$

显然就将 $x$ 的区间 $a \leqslant x \leqslant b$ 变换成 $t$ 的区间 $-1 \leqslant t \leqslant 1$ ，同时得到 $t$ 的函数

$$
\varphi(t) \stackrel{\text { def }}{=} f\left(\frac{(b-a) t+(b+a)}{2}\right)
$$

既然 $-1 \leqslant t \leqslant 1$, 故又可作变数代换 $t=\cos \theta$ 而 $\theta$ 满足 $0 \leqslant \theta \leqslant \pi$, 这样便得到一个三角函数

$$
\psi(\theta) \xlongequal{\text { def }} \varphi(\cos \theta)
$$

由于 $\cos \theta$ 是 $\theta$ 的偶性周期函数，故可将 $\psi(\theta)$ 按照 $\psi(\theta)=\psi(-\theta)$ 与 $\psi(\theta)=$ $\psi(\theta+2 \pi)$ 而延拓成为 $(-\infty, \infty)$ 上的偶性周期函数。

如上得出的 $\psi(\theta)$ 称为原始函数 $f(x)$ 的诱导函数. 利用此种诱导函数即可讨论代数多项式的最佳逼近和三角多项式的最佳逼近之间的关系。
命题1 设 $E_{n}$ 是函数 $f(x) \in C[a, b]$ 的用不高于 $n$ 次的代数多项式的最佳逼近，而 $E_{n}^{*}$ 是它的诱导函数 $\psi(\theta)$ 用阶数不高于 $n$ 的三角多项式的最佳逼近, 那么 $E_{n}=E_{n}^{*}$ 。

证明 对 $f(x)$ 而言恒有最小偏差多项式 $p(x)=\sum_{0}^{n} a_{k} x^{k}$ ，使得

$$
\begin{equation*}
|f(x)-p(x)| \leqslant E_{n} \tag{6.1}
\end{equation*}
$$

易见 $p(x)$ 的诱导函数 $T(\theta)$ 必定是阶数不高于 $n$ 的三角多项式. 因此不等式 (6.1)转变为

$$
|\psi(\theta)-T(\theta)| \leqslant E_{n}
$$

由此推出 $E_{n}^{*} \leqslant E_{n}$ 。
反之，对偶函数 $\psi(\theta)$ 而言将有最小偏差多项式（偶性三角多项式） $T(\theta)=\sum_{k=0}^{n} a_{k} \cos k \theta=\sum_{k=0}^{n} c_{k} \cos ^{k} \theta$, 使得

$$
\begin{equation*}
|\psi(\theta)-T(\theta)| \leqslant E_{n}^{*} \tag{6.2}
\end{equation*}
$$

显然由 $\psi(\theta) \equiv \varphi(\cos \theta)=\varphi(t)$ 可知（6.2）式相当于

$$
\left|\varphi(t)-\sum_{0}^{n} c_{k} k^{k}\right| \leqslant E_{n}^{*}
$$

最后再根据变数代换 $x=\frac{1}{2}[(b-a) t+(b+a)]$ ，上式变成

$$
|f(x)-p(x)| \leqslant E_{n}^{*}
$$

其中 $p(x)$ 的次数自然不高于 $n$ ，由此又推出 $E_{n} \leqslant E_{n}^{*}$ 。
命题2 设 $\omega_{f}(\delta), \omega_{\psi}(\delta)$ 分别表示函数 $f(x)$ 与诱导函数 $\psi(\theta)$ 的连续模数, 则

$$
\omega_{\psi}(\delta) \leqslant \omega_{f}\left(\frac{1}{2}(b-a) \delta\right)
$$

证明 由微分中值公式易知 $\left|\cos \theta_{1}-\cos \theta_{2}\right| \leqslant\left|\theta_{1}-\theta_{2}\right|$. 因此当 $\left|\theta_{1}-\theta_{2}\right|$ $\leqslant \delta$ 时, 可得估值式

$$
\begin{aligned}
\left|\psi\left(\theta_{1}\right)-\psi\left(\theta_{2}\right)\right| & =\left|\varphi\left(\cos \theta_{1}\right)-\varphi\left(\cos \theta_{2}\right)\right| \leqslant \omega_{\varphi}\left(\left|\cos \theta_{1}-\cos \theta_{2}\right|\right) \\
& \leqslant \omega_{\varphi}\left(\left|\theta_{1}-\theta_{2}\right|\right) \leqslant \omega_{\varphi}(\delta) \\
& =\max _{\left|t_{1}-t_{2}\right| \leqslant \delta}\left|f\left(\frac{(b-a) t_{1}+(b+a)}{2}\right)-f\left(\frac{(b-a) t_{2}+(b+a)}{2}\right)\right|
\end{aligned}
$$

$$
\leqslant \omega_{f}\left(\frac{1}{2}(b-a) \delta\right)
$$

命题3 设 $[\alpha, \beta]$ 是整个包含在 $(a, b)$ 内的闭区间，而 $\widetilde{\omega_{f}}(\delta)$ 表示 $f(x)$ 在 $[\alpha, \beta]$ 上的连续模数，则存在一个只依赖于区间 $(a, b)$ 以及 $[\alpha, \beta]$ 的正常数 $k$ ，使得

$$
\widetilde{\omega_{f}}(\delta) \leqslant \omega_{\psi}(k \delta)
$$

证明 注意变数代换 $x=\frac{1}{2}[(b-a) t+(b+a)]$ 等价于

$$
t=\frac{2 x-(b+a)}{b-a}
$$

在此变换下 $\alpha \leqslant x \leqslant \beta$ 被变换成 $\tau_{1} \leqslant t \leqslant \tau_{2}$ ，而

$$
\tau_{1}=\frac{2 \alpha-(b+a)}{b-a}, \quad \tau_{2}=\frac{2 \beta-(b+a)}{b-a}
$$

显然 $\left[\tau_{1}, \tau_{2}\right]$ 整个含于 $(-1,1)$ 内,亦即

$$
\lambda=\min \left\{\tau_{1}+1,1-\tau_{2}\right\}>0
$$

记

$$
x_{i}=\frac{1}{2}\left[(b-a) t_{i}+(b+a)\right]=\frac{1}{2}\left[(b-a) \cos \theta_{i}+(b+a)\right], i=1,2
$$

于是不等式 $\left|x_{1}-x_{2}\right| \leqslant \delta$ 相当于

$$
\left|t_{1}-t_{2}\right| \leqslant \frac{2}{b-a} \delta
$$

因 $\theta=\arccos t$ ，故由微分中值定理可得

$$
\left|\theta_{1}-\theta_{2}\right|=\left|\arccos t_{1}-\arccos t_{2}\right|=\frac{1}{\sqrt{1-\xi^{2}}}\left|t_{1}-t_{2}\right|
$$

其中 $t_{1}, t_{2}$ 坞在 $\left[\tau_{1}, \tau_{2}\right]$ 内，而 $\xi$ 介于 $t_{1}$ 与 $t_{2}$ 之间，从而 $\left(1-\xi^{2}\right)=(1-\xi)(1+\xi)$ $\geqslant \lambda^{2}$. 因而

$$
\left|\theta_{1}-\theta_{2}\right| \leqslant \frac{1}{\lambda}\left|t_{1}-t_{2}\right| \leqslant \frac{2}{\lambda(b-a)} \delta
$$

我们有

$$
\left|f\left(x_{1}\right)-f\left(x_{2}\right)\right|=\left|\psi\left(\theta_{1}\right)-\psi\left(\theta_{2}\right)\right| \leqslant \omega_{\psi}\left(\left|\theta_{1}-\theta_{2}\right|\right) \leqslant \omega_{\psi}\left(\frac{2}{\lambda(b-a)} \delta\right)
$$

这就证明了 $\omega_{f}(\delta) \leqslant \omega_{\psi}(k \delta)$ ，其中 $k=\frac{2}{\lambda(b-a)}$.

## (ニ) Jackson 定理与 Bernstein 定理 。

有了以上内容作准备，我们便不难根据三角多项式逼近论中的 Jackson 定理与 Bernstein 定理去导出代数多项式逼近论中的相应命题. 例如我们有

Jackson 定理1 设 $E_{n}$ 是函数 $f(x) \in C[a, b]$ 用 $P_{n}$ 中的多项式所得的最佳逼近，那么

$$
E_{n} \leqslant K \omega_{f}\left(\frac{1}{n}\right)
$$

其中 $K$ 为一正常数，仅与 $a, b$ 有关。
证明 令 $\psi(\theta)$ 表示 $f(x)$ 的诱导函数，根据本节命题 1 及 2 并利用周期情形的 Jackson 定理易知

$$
E_{n}=E_{n}^{*} \leqslant A \omega_{\psi}\left(\frac{1}{n}\right) \leqslant A \omega_{f}\left(\frac{b-a}{2 n}\right) \leqslant K \omega_{f}\left(\frac{1}{n}\right)
$$

定理得证。
推论 1 设 $f(x) \in \operatorname{Lip}_{M^{\alpha}}(0<\alpha \leqslant 1)$ ，则

$$
E_{n} \leqslant K \cdot M\left(\frac{1}{n}\right)^{\alpha}
$$

推论 2 设 $f(x)$ 有导函数 $f^{\prime}(x)$, 且 $\left|f^{\prime}(x)\right| \leqslant M$ ，则

$$
E_{n} \leqslant K M \frac{1}{n}
$$

如果用 $\omega^{(p)}(\delta)$ 表示 $p$ 阶导函数 $f^{(p)}(x)$ 的连续模数, 那么还有如下一个更一般的结果：

Jackson 定理2 设 $f(x)$ 在 $[a, b]$ 上具有 $p$ 阶连续导函数, 那么当 $n>p$时，恒有估计式

$$
E_{n} \leqslant A_{p}\left(\frac{1}{n}\right)^{p} \omega^{(p)}\left(\frac{b-a}{2(n-p)}\right)
$$

其中 $A_{p}$ 是一个只依赖于 $a, b$ 与 $p$ 的正常数。
为证上述定理，先证下面的引理。
引理2 若 $f(x)$ 具有连续导数 $f^{\prime}(x)$, 则 $f(x)$ 的最佳逼近 $E_{n} \equiv E_{n}(f)$ 与其导数的最佳逼近 $E_{n-1}^{\prime} \equiv E_{n-1}^{\prime}(f)$ 之间必存在如下的关系式

$$
E_{n} \leqslant A\left(\frac{1}{n}\right) E_{n-1}^{\prime}
$$

证明 令 $p(x)$ 是 $f^{\prime}(x)$ 的 $n-1$ 次最佳逼近多项式，那么 $\left|f^{\prime}(x)-p(x)\right| \leqslant$ $E_{n-1}^{\prime}$ 。令 $\varphi(x)=f(x)-\int_{0}^{x} p(x) \mathrm{d} x$, 则 $\varphi^{\prime}(x)=f^{\prime}(x)-p(x)$ ，从而有不等式

$$
\left|\varphi^{\prime}(x)\right| \leqslant E_{n-1}^{\prime}
$$

如是，利用 Jackson 定理 1 的推论 2 便推出

$$
E_{n}(\varphi) \leqslant A\left(\frac{1}{n}\right) E_{n-1}^{\prime}
$$

因此，若 $Q(x) \in \mathbb{P}_{n}$ 是 $\varphi(x)$ 的最佳逼近多项式，则

$$
|\varphi(x)-\boldsymbol{Q}(x)|=\left|f(x)-\int_{0}^{x} p(t) \mathrm{d} t-Q(x)\right| \leqslant \frac{A}{n} E_{n-1}^{\prime}
$$

注意 $\int_{0}^{x} p(t) \mathrm{d} t+Q(x)$ 为 $P_{n}$ 中的多项式，故由上式可知引理成立。
定理 2 的证明 相继引用引理中的不等式，得出（常数 $A$ 在各次出现时，不必代表同一值)

$$
\begin{align*}
E_{n} & \leqslant A\left(\frac{1}{n}\right) E_{n-1}^{\prime} \leqslant A\left(\frac{1}{n}\right)\left(\frac{1}{n-1}\right) E_{n-2}^{\prime \prime} \leqslant \cdots \\
& \leqslant A\left(\frac{1}{n}\right)\left(\frac{1}{n-1}\right) \cdots\left(\frac{1}{n-p+1}\right) E_{n-p}^{(p)} \\
& \leqslant A\left(\frac{1}{n}\right)^{p} E_{n-p}^{(p)} \tag{6.3}
\end{align*}
$$

再根据上述 Jackson 第一定理的证明可知有

$$
E_{n-p}^{(p)} \leqslant A \omega^{(p)}\left(\frac{b-a}{2(n-p)}\right)
$$

以此代入不等式(6.3)的最后一项,便证明了定理 2 中的估计式.
进一步，来建立
Bernstein 定理1 设函数 $f(x) \in C[a, b]$ 的最佳逼近 $E_{n}$ 满足不等式

$$
E_{n} \leqslant \frac{A}{n^{\alpha}} \quad(0<\alpha \leqslant 1)
$$

令 $\left[a_{1}, b_{1}\right]$ 为整个含于 $(a, b)$ 内的一个闭区间, 那么当 $\alpha<1$ 时, $f(x)$ 在该闭区间上恒属于 $\operatorname{Lip} \alpha$ 类；当 $\alpha=1$ 时 $f(x)$ 在该闭区间上属于 $W$ 类。

证明 令 $\psi(\theta)$ 表 $f(x)$ 的诱导函数, 则

$$
E_{n}(f)=E_{n}^{*}(\psi) \leqslant \frac{A}{n^{\alpha}} .
$$

因而由 $\S 5$ 中的定理 2 知道，当 $\alpha<1$ 时 $\psi(\theta) \in \operatorname{Lip}_{M} \alpha$ ；而当 $\alpha=1$ 时 $\psi(\theta) \in W$ 。
由本节命题 3 知道，在区间 $\left[a_{1}, b_{1}\right]$ 上恒有 $\widetilde{\omega_{f}}(\delta) \leqslant \omega_{\psi}(k \delta)$ 。根据连续模数的性质以及 $W$ 类的定义, 可知当 $\alpha<1$ 时,有

$$
\widetilde{\omega_{f}}(\delta) \leqslant \omega_{\psi}(k \delta) \leqslant M k^{\alpha} \delta^{\alpha}
$$

这表明 $f(x)$ 属于具有系数 $M k^{\alpha}$ 的 Lip $\alpha$ 类；当 $\alpha=1$ 时，

$$
\begin{aligned}
& \widetilde{\omega_{f}}(\delta) \leqslant \omega_{\psi}(k \delta) \leqslant M k \delta(1+|\ln k \delta|) \\
& \leqslant M k(1+|\ln k|) \delta(1+|\ln \delta|) .
\end{aligned}
$$

故 $f(x)$ 属于函数类 $W$.
Bernstein 定理2 设 $p$ 为正整数而 $f(x) \in C[a, b]$, 并且

$$
E_{n} \leqslant \frac{A}{n^{p+\alpha}} \quad(0<\alpha \leqslant 1)
$$

那么 $p$ 阶导数 $f^{(p)}(x)$ 在开区间 $(a, b)$ 内处处存在. 并且当 $\alpha<1$ 时， $f^{(p)}(x)$ 在包含于 $(a, b)$ 内的任何闭区间 $\left[a_{1}, b_{1}\right]$ 上恒属于 $\operatorname{Lip} \alpha$ 类；而当 $\alpha=1$ 时属于 $W$ 类。

这个定理可用 Bernstein 第二不等式的那条推论来证明。
最后要着重指出，将 Bernstein 的一系列定理和 Jackson 的定理联系起来（包括 Zygmund 定理），可以看出 $C_{2 \pi}$ 与 $C[a, b]$ 中的函数正好能够按照它们的最佳逼近的递减速度来进行分类。例如分成 $\operatorname{Lip} \alpha(0<\alpha<1)$ 类， $Z$ 类，高阶可微函数类等。这部分的内容也常被称为函数构造论.

## 第二章习题

1. 设 $N$ 是大于 $n+1$ 的任意自然数。试证 $C[0,1]$ 中恒存在一函数 $f(x)$ ，使得 $\mathbb{P}_{n}$ 中关于 $f(x)$ 的最佳逼近多项式恰具有 $N$ 个正负交错的偏离点。
[提示] 考虑 $f(x)=x^{n}+\sin (N \pi x), 0 \leqslant x \leqslant 1$.
2. 试证明对于任何连续函数来说，它的最佳逼近多项式所具有，的交错点组中偏离点的个数不可能无穷多。
