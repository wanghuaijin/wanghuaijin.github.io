---
title: Weierstrass Theorem
date: 2024-09-08
icon: file
---

## 第一章 Weierstrass 定理与线性算子逼近

如所知, 函数逼近的目的, 是用较简单的函数来逼近较复杂的函数. 本章讲述用多项式序列逼近有界闭区间上连续函数的可行性。

As is well known, the goal of function approximation is to represent a complex function using simpler ones. One of the main topics covered in this context is the approximation of continuous functions, defined on bounded intervals, using sequences of polynomials.

## § 1 Weierstrass 第一定理

在实变数函数的数学分析中, 最重要的函数类是连续函数类 $C[a, b]$ 与连续的周期函数类 $C_{2 \pi}$.
$C[a, b]$ 是由定义在某一闭区间 $[a, b]$ 上的连续函数全体所构成的集合, $C_{2 \pi}$ 是由定义在整个实轴 $(-\infty,+\infty)$ 上的以 $2 \pi$ 为周期的连续实函数全体所构成的集合。

现在我们来䣄述逼近论中第一条基本定理.
定理 1(Weierstrass) 设 $f(x) \in C[a, b]$, 那么对于任意给定的 $\varepsilon>0$, 都存在多项式 $P(x)$ ，使得
$$
\max _{s \leqslant x \leqslant b}|P(x)-f(x)|<\varepsilon
$$

关于这个著名定理,现在已有好多个不同的证法,下面介绍 Bernstein 的构造性证法.

Bernstein 证法: 不妨假定函数的定义区间是 $[a, b] \equiv[0,1]$. 事实上，通过如下的线性代换:

$$
t=(b-a) x+a,
$$

就能将 $x$ 的区间 $0 \leqslant x \leqslant 1$ 变换成 $t$ 的区间 $a \leqslant t \leqslant b$. 同时, 显而易见, $x$ 的多项式将变成 $t$ 的多项式, $x$ 的连续函数将变成 $t$ 的连续函数. 因此只需就连续函数类 $C[0,1]$ 来证明 Weierstrass 第一定理成立.

对于给定的 $f(x) \in C[0,1]$, 作如下的一串多项式 $(n=1,2, \cdots)$ :

$$
\begin{equation*}
B_{n}^{f}(x)=\sum_{k=0}^{n} f\left(\frac{k}{n}\right)\binom{n}{k} x^{k}(1-x)^{n-k}, \tag{1.1}
\end{equation*}
$$

显然 $B_{n}^{f}(x)$ 是一个 $n$ 次多项式。
下面我们要证明极限关系式

$$
\lim _{n \rightarrow \infty} B_{n}^{f}(x)=f(x)
$$

在区间 $[0,1]$ 上是一致成立的. 显然这个命题隐含着 Weierstrass 第一定理. 因为对于任意指定的 $\varepsilon>0$ ，根据所要证明的命题，总可找到一个充分大的 $N$ ，使得当 $n \geqslant N$ 时恒有

$$
\max _{x}\left|B_{n}^{f}(x)-f(x)\right|<\varepsilon
$$

换句话说，Weierstrass 第一定理中所提及的 $P(x)$ ，只要取 $B_{n}^{f}(x)$ （其中 $n \geqslant N$ ）就可以了。

为了证明上述命题, 需要用到一个初等恒等式:

$$
\begin{equation*}
\sum_{k=0}^{n}(n x-k)^{2}\binom{n}{k} x^{k}(1-x)^{n-k}=n x(1-x) \tag{1.2}
\end{equation*}
$$

这个恒等式是容易验证的。事实上，由于

$$
\sum_{k=0}^{n}\binom{n}{k} x^{k}(1-x)^{n-k} \equiv[x+(1-x)]^{n} \equiv 1
$$

可知

$$
\begin{aligned}
\text { 左端 }= & \sum_{k=0}^{n}\left(n^{2} x^{2}+k^{2}-2 n k x\right)\binom{n}{k} x^{k}(1-x)^{n-k} \\
= & n^{2} x^{2}+\sum_{k=0}^{n} k^{2}\binom{n}{k} x^{k}(1-x)^{n-k}-2 n x \sum_{k=0}^{n} k\binom{n}{k} x^{k}(1-x)^{n-k} \\
= & n^{2} x^{2}+\sum_{k=0}^{n} k(k-1)\binom{n}{k} x^{k}(1-x)^{n-k} \\
& +(1-2 n x) \sum_{k=0}^{n} k\binom{n}{k} x^{k}(1-x)^{n-k} \\
= & n^{2} x^{2}+n(n-1) x^{2} \sum_{k=2}^{n}\binom{n-2}{k-2} x^{k-2}(1-x)^{n-k}+(1-2 n x) n x \\
= & n^{2} x^{2}+n(n-1) x^{2}+(1-2 n x) n x=\text { 右端. }
\end{aligned}
$$

对于 $[0,1]$ 中的每一固定 $x$ 及任一固定正整数 $n$ ，令

$$
\varepsilon_{n}(x)=\max \left|f(x)-f\left(\frac{k}{n}\right)\right|
$$

上式的右端代表当 $k$ 取所有合乎条件

$$
\left|\frac{k}{n}-x\right|<\left(\frac{1}{n}\right)^{1 / 4}
$$

的正整数时所得的最大差数. 根据 $f(x)$ 在 $[0,1]$ 上的一致连续性, 存在一串 $\varepsilon_{n}>0$,使得

$$
\varepsilon_{n}(x)<\varepsilon_{n} \downarrow 0 \quad(n \rightarrow \infty) .
$$

记

$$
\begin{aligned}
f(x)-B_{n}^{f}(x)= & \Sigma^{\prime}\left[f(x)-f\left(\frac{k}{n}\right)\right] \lambda_{n, k}(x) \\
& +\Sigma^{\prime \prime}\left[f(x)-f\left(\frac{k}{n}\right)\right] \lambda_{n, k}(x)
\end{aligned}
$$

其中 $\Sigma^{\prime}$ 与 $\Sigma^{\prime \prime}$ 分别表示对满足如下条件的一切 $k$ 所取的和:

$$
|k-n x|<n^{3 / 4},|k-n x| \geqslant n^{3 / 4}
$$

而

$$
\lambda_{n, k}(x)=\binom{n}{k} x^{k}(1-x)^{n-k}
$$

令 $M=\max |f(x)|$ ，则显然有

$$
\begin{aligned}
\left|f(x)-B_{n}^{f}(x)\right| & <\Sigma^{\prime} \varepsilon_{n} \lambda_{n, k}(x)+2 M \Sigma^{\prime \prime} \lambda_{n, k}(x) \\
& <\varepsilon_{n}+2 M \Sigma^{\prime \prime} \lambda_{n, k}(x)
\end{aligned}
$$

而且利用已经验证过的恒等式(1.2)可知

$$
n^{3 / 2} \sum^{\prime \prime} \lambda_{n, k}(x) \leqslant \sum_{k=0}^{n}(k-n x)^{2} \lambda_{n, k}(x)=n x(1-x) \leqslant \frac{n}{4}
$$

因此

$$
\begin{gathered}
\sum^{\prime \prime} \lambda_{n, k}(x) \leqslant \frac{1}{4}\left(\frac{1}{n}\right)^{1 / 2} \\
\left|f(x)-B_{n}^{f}(x)\right|<\varepsilon_{n}+\frac{M}{2}\left(\frac{1}{n}\right)^{1 / 2}
\end{gathered}
$$

注意上列不等式的右端与 $x$ 无关，而且随着 $n$ 的无限增大而趋于 0 。这就证明了多项式序列 $B_{n}^{f}(x)$ 对于 $f(x)$ 的一致收敛性。

Weierstrass 第一定理实际上也解决了如何利用多项式构成的函数项级数来表示连续函数的问题。因为, 任意取定一个单调下降于 0 的数列 $\delta_{n}$, 则对每个 $\delta_{n}$都可找到一个多项式 $P_{n}(x)$ 使得 $\left|P_{n}(x)-f(x)\right|<\delta_{n}$ 。于是令

$$
Q_{1}(x)=P_{1}(x), \quad Q_{n}(x)=P_{n}(x)-P_{n-1}(x), \quad n>1,
$$

可知级数 $\sum_{n=1}^{\infty} Q_{n}(x)$ 的前 $n$ 项之和恰好与 $P_{n}(x)$ 相同，因而该级数也就一致地收玫于 $f(x)$ 。

在 Bernstein 的证法中，不仅证明了近似多项式序列 $P_{n}(x)$ 的存在性，而且还给出了构造 $P_{n}(x)$ 的一个具体方法。事实上， $B_{n}^{f}(x)(n=1,2, \cdots)$ 便是连续函数 $f(x)(0 \leqslant x \leqslant 1)$ 的一个近似多项式序列. 这样的证法通常称为构造性的证明方法，它比只证明存在性的非构造性证明方法更有价值。

## § 2 Weierstrass 第二定理

周期连续函数（不妨假定其周期为 $2 \pi$ ）的最简单逼近工具是如下三角多项式:

$$
T(x)=A+\sum_{k=1}^{n}\left(a_{k} \cos k x+b_{k} \sin k x\right)
$$

如果其中的系数 $a_{n}$ 和 $b_{n}$ 不全为 0 , 则称 $T(x)$ 为 $n$ 阶三角多项式。
相应于 Weierstrass 第一定理, 有如下的
定理2(Weierstrass 第二定理) 设 $f(x) \in C_{2 \pi}$ ，则对任意给定的 $\varepsilon>0$ ，都有三角多项式 $T(x)$ 存在，使得

$$
\begin{equation*}
\max _{-\pi \leq x \leq \pi}|f(x)-T(x)|<\varepsilon \tag{2.1}
\end{equation*}
$$

这个定理可以从 Weierstrass 第一定理，通过诱导函数来证明。此处直接采用 Vallée-Poussin 算子

$$
V_{n}[f ; x]=\frac{1}{2 \pi} \frac{(2 n)!!}{(2 n-1)!!} \int_{-\pi}^{\pi} f(t) \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t
$$

来证明, 其中
$(2 n)!!=(2 n)(2 n-2) \cdots 4 \cdot 2,(2 n-1)!!=(2 n-1)(2 n-3) \cdots 3 \cdot 1$.
作平移，显然有

$$
I_{n}=\int_{-\pi}^{\pi} \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t=2 \int_{0}^{\pi} \cos ^{2 n} \frac{t}{2} \mathrm{~d} t
$$

再作变换 $v=\sin ^{2} t / 2$, 可算得上述积分为

$$
I_{n}=2 \int_{0}^{1}(1-v)^{n} \frac{1}{\sqrt{v(1-v)}} \mathrm{d} v=2 \int_{0}^{1} v^{-1 / 2}(1-v)^{n-1 / 2} \mathrm{~d} v
$$

$$
=\frac{2 \Gamma\left(\frac{1}{2}\right) \Gamma\left(n+\frac{1}{2}\right)}{\Gamma(n+1)}=\frac{2 \pi(2 n-1)!!}{(2 n)!!}
$$

从而

$$
f(x)-V_{n}[f ; x]=\frac{1}{I_{n}} \int_{-\pi}^{\pi}[f(x)-f(t)] \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t
$$

因为 $f(x) \in C_{2 \pi}$, 所以 $f(x)$ 一致连续, 即对任意给定的 $\varepsilon>0$, 有 $\delta>0$ 存在, 使得当 $\left|x^{\prime}-x^{\prime \prime}\right|<\delta$ 时,

$$
\left|f\left(x^{\prime}\right)-f\left(x^{\prime \prime}\right)\right|<\varepsilon / 2
$$

今将 $f(x)-V_{n}[f ; x]$ 分成两部分

$$
\begin{align*}
f(x)-V_{n}[f ; x]= & \frac{1}{I_{n}} \int_{|t-x|<\delta}[f(x)-f(t)] \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t \\
& +\frac{1}{I_{n}} \int_{|t-x| \geqslant \delta}[f(x)-f(t)] \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t  \tag{2.2}\\
& \xlongequal{\text { def }} C_{1}+C_{2} .
\end{align*}
$$

以下估计 $C_{1}$ 和 $C_{2}$.

$$
\begin{align*}
\left|C_{1}\right| & \leqslant \frac{1}{I_{n}} \int_{|t-x|<\delta}|f(x)-f(t)| \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t \\
& <\frac{\varepsilon}{2} \cdot 1=\frac{\varepsilon}{2} \tag{2.3}
\end{align*}
$$

记 $M=\max _{-\pi \leqslant x \leqslant \pi}|f(x)|, q=\cos \frac{\delta}{2}<1$, 则

$$
\begin{aligned}
\left|C_{2}\right| & \leqslant \frac{1}{I_{n}} \int_{|t-x| \geqslant s}|f(x)-f(t)| \cos ^{2 n} \frac{t-x}{2} \mathrm{~d} t \\
& \leqslant 2 M \cdot \frac{1}{I_{n}} \cdot \cos ^{2 n} \frac{\delta}{2} \cdot 2 \pi \\
& =2 M \cdot \frac{(2 n)!!}{(2 n-1)!!} q^{2 n} \\
& <4 M \cdot n \cdot q^{2 n}
\end{aligned}
$$

因此存在自然数 $N$, 使当 $n>N$ 时

$$
\begin{equation*}
\left|C_{2}\right|<\varepsilon / 2 \tag{2.4}
\end{equation*}
$$

综合（2.2）、（2.3）和（2.4），即可知 Weierstrass 第二定理成立。

## §3 线性正算子与 Korovkin 定理

设 $\varphi(x, t)$ 对集 $E$ 中每一个 $x$ ，在区间 $a \leqslant t \leqslant b$ 上关于 $t$ 都连续，则积分

$$
\begin{equation*}
L(f ; x)=L(f(t) ; x)=\int_{a}^{b} \varphi(x, t) f(t) \mathrm{d} t=g(x) \tag{3.1}
\end{equation*}
$$

对于每一在区间 $[a, b]$ 上连续的函数 $f(t)$ 都确定了一个函数 $g(x)=L(f ; x)$.此处 $L(f ; x)$ 与微积分中的函数相似, 所差的只是变元与值的含义不同. 函数的存在域与变化域为数集，而 $L(f ; x)$ 的存在域与变化域均为函数集。

定义1 设已知函数集 $F$ ，如果对于集 $F$ 中的每一函数 $f(t)$ ，均有一个函数 $\varphi(x)=H(f(t) ; x)$ 与之对应, 则说在函数集 $F$ 上定义了算子 $H(f ; x)=$ $H(f(t) ; x)$.

定义2 称算子 $H(f ; x)$ 是线性的, 如果随着 $f(t)$ 与 $\varphi(t)$ 属于它的存在域, $a f(t)+b \varphi(t)$ （其中 $a$ 与 $b$ 为任意的实数）也属于它的存在域且成立如下等式:

$$
H(a f+b \varphi ; x)=a H(f ; x)+b H(\varphi ; x)
$$

例1 由（3.1）式定义的算子 $L(f ; x)$ 是线性的。
事实上，由下列等式即可推出算子 $L(f ; x)$ 的线性性质：

$$
\begin{aligned}
L\left(\alpha f_{1}+\beta f_{2} ; x\right) & =\int_{a}^{b} \varphi(x, t)\left(\alpha f_{1}(t)+\beta f_{2}(t)\right) \mathrm{d} t \\
& =\alpha \int_{a}^{b} \varphi(x, t) f_{1}(t) \mathrm{d} t+\beta \int_{a}^{b} \varphi(x, t) f_{2}(t) \mathrm{d} t \\
& =\alpha L\left(f_{1} ; x\right)+\beta L\left(f_{2} ; x\right)
\end{aligned}
$$

例2 设 $u_{1}(x), u_{2}(x), \cdots, u_{n}(x)$ 为定义于集 $E$ 上的函数。令

$$
H(f ; x)=\sum_{k=1}^{n} f\left(t_{k}\right) u_{k}(x)
$$

其中 $f(t)$ 为在实数集 $t_{1}, t_{2}, \cdots, t_{n}$ 上有定义的函数. 可以证明算子 $H(f ; x)$ 是线性的。

事实上

$$
H(a f+b \varphi ; x)=\sum_{k=1}^{n}\left(a f\left(t_{k}\right)+b \varphi\left(t_{k}\right)\right) u_{k}(x)
$$

$$
\begin{aligned}
& =a \sum_{k=1}^{n} f\left(t_{k}\right) u_{k}(x)+b \sum_{k=1}^{n} \varphi\left(t_{k}\right) u_{k}(x) \\
& =a H(f ; x)+b H(\varphi ; x)
\end{aligned}
$$

定义3 如果对于每一正函数 $f(t)$ 及 $x \in E$ ，线性算子 $L(f ; x)$ 满足条件： $L(f ; x) \geqslant 0$ ，则称 $L(f ; x)$ 为集 $E$ 上的线性正算子。

显然，对于每一固定的值 $x$ ，线性算子 $L(f ; x)$ 成为线性泛函数。因此，如果对于集 $E$ 中每一固定的值 $x$ ，线性泛函数均是正的，则线性算子 $L(f ; x)$ 在集 $E$上是正的。例如，当 $u_{k}(x)(k=1,2, \cdots, n)$ 在 $E$ 上为正函数时，算子

$$
L(f ; x)=\sum_{k=1}^{n} f\left(t_{k}\right) u_{k}(x)
$$

为集 $E$ 上的线性正算子。又如,若 $\varphi(x, t)$ 对集 $E$ 中每一固定的 $x$ 在区间 $[a, b]$上关于 $t$ 为连续的正函数, 则算子

$$
L(f ; x)=\int_{a}^{b} \varphi(x, t) f(t) \mathrm{d} t
$$

在集 $E$ 上是正的.
还需指出的是，在线性算子 $L(f ; x)$ 中，变元 $f$ 的变元与 $x$ 不同， $L(f ; x)=L(f(t) ; x)$ 。在计算算子 $L(f ; x)$ 的值时，我们将 $x$ 当做常数（但为集 $E$ 中任意的），因此等式

$$
L(f(x) ; x)=f(x) L(1 ; x)
$$

成立，这是由于 $f(x)$ 为常数（与 $t$ 无关）。
现在我们来研究线性正算子序列 $L_{n}(f ; x)$ 在区间 $[a, b]$ 上一致收敛于函数 $f(x)$ 的条件. 这里的 $f(x)$ 是 $[a, b]$ 上的连续函数, 并且在整个实轴上有界.如在泛函数情形一样，我们将证明，序列 $L_{n}\left(f_{k} ; x\right)$ 在 $[a, b]$ 上一致收玫于 $f_{k}(x)=x^{k}(k=0,1,2)$ 蕴含序列 $L_{n}(f ; x)$ 一致收敛于 $f(x)$ （如果 $f(x)$ 满足上面指出的条件)。

引理1 若函数 $f(x)$ 在区间 $[a, b]$ 上连续, 在点 $b$ 为右连续,在点 $a$ 为左连续, 则对 $\varepsilon>0$, 有 $\delta>0$, 使得当 $|y-x|<\delta, a \leqslant x \leqslant b$ 时, 恒成立不等式

$$
|f(y)-f(x)|<\varepsilon
$$

证明 令 $\varepsilon^{\prime}=\frac{\varepsilon}{2}>0$. 根据函数 $f(x)$ 在区间 $a \leqslant x \leqslant b$ 上的一致连续性可以求出这样的 $\delta_{1}>0$, 使得当 $|y-x|<\delta_{1}, a \leqslant x, y \leqslant b$ 时, 有不等式

$$
\begin{equation*}
|f(y)-f(x)|<\varepsilon^{\prime} \tag{3.2}
\end{equation*}
$$

由于函数 $f(x)$ 在点 $a$ 连续（左连续是假定的，而右连续则是依函数在闭区间 $[a, b]$ 上的连续性得知），所以对 $\varepsilon^{\prime}>0$ 有 $\delta_{2}>0$ ，使得当 $|y-a|<\delta_{2}$ 时

$$
\begin{equation*}
|f(y)-f(a)|<\varepsilon^{\prime} \tag{3.3}
\end{equation*}
$$

同理有 $\delta_{3}>0$ ，使得当 $|y-b|<\delta_{3}$ 时

$$
\begin{equation*}
|f(y)-f(b)|<\varepsilon^{\prime} \tag{3.4}
\end{equation*}
$$

今取 $\delta=\min \left\{\delta_{1}, \delta_{2}, \delta_{3}\right\}$, 并证明当 $|y-x|<\delta, a \leqslant x \leqslant b$ 时,有

$$
|f(y)-f(x)|<2 \varepsilon^{\prime}=\varepsilon
$$

事实上,若 $x$ 与 $y$ 均属于区间 $[a, b]$ ，则后面的不等式由（3.2）推得。若 $y<a$ （当然 $x$ 必须属于区间 $[a, b]$ ），则 $|y-x|=|y-a|+|x-a|$ ，且由于 $|y-x|<\delta$ ，所以 $|y-a|<\delta,|x-a|<\delta$ 。现在得到

$$
\begin{aligned}
|f(y)-f(x)| & =|f(y)-f(a)+f(a)-f(x)| \\
& \leqslant|f(y)-f(a)|+|f(x)-f(a)|
\end{aligned}
$$

依（3.3）式不等式右边第一项小于 $\varepsilon^{\prime}$ ，而依（3.2）式第二项也小于 $\varepsilon^{\prime}$ ，从而

$$
|f(y)-f(x)|<2 \varepsilon^{\prime}=\varepsilon
$$

如此已证明当 $y<a$ 时引理为真，对于 $y>b$ 的情况可以同样地证明。
现在我们给出线性正算子序列的收敛性定理。
定理 3(Korovkin) 设线性正算子序列 $L_{n}(f ; x)$ 满足条件：
(1) $L_{n}(1 ; x)=1+\alpha_{n}(x)$
(2) $L_{n}(t ; x)=x+\beta_{n}(x)$
(3) $L_{n}\left(t^{2} ; x\right)=x^{2}+\gamma_{n}(x)$

其中 $\alpha_{n}(x), \beta_{n}(x), \gamma_{n}(x)$ 在区间 $[a, b]$ 上一致收敛于零；又设函数 $f(t)$ 有界且在区间 $[a, b]$ 上连续，于点 $b$ 为右连续，于点 $a$ 为左连续。则在区间 $[a, b]$ 上序列 $L_{n}(f ; x)$ 一致收敛于函数 $f(x)$ 。

证明由于函数 $f(t)$ 有界 $(-M<f(t)<M)$ ，所以对一切 $x$ 与 $t$ 均成立不等式

$$
\begin{equation*}
-2 M<f(t)-f(x)<2 M \tag{3.5}
\end{equation*}
$$

其次，依引理 1 ，对于 $\varepsilon>0$ 有 $\delta>0$ 使得，当 $a \leqslant x \leqslant b,|t-x|<\delta$ 时，成立不等式

$$
\begin{equation*}
-\varepsilon<f(t)-f(x)<\varepsilon \tag{3.6}
\end{equation*}
$$

假定 $\psi(t)=(t-x)^{2}(x$ 为区间 $[a, b]$ 上的任意一点, 且一经取好就固定了），由（3.5）、(3.6)式不难得到

$$
\begin{equation*}
-\varepsilon-\frac{2 M}{\delta^{2}} \psi(t)<f(t)-f(x)<\varepsilon+\frac{2 M}{\delta^{2}} \psi(t) \tag{3.7}
\end{equation*}
$$

由此再依算子 $L_{n}(f ; x)$ 的线性性质与单调性得到（其中 $x$ 为固定的，因而 $f(x)$为常数）

$$
\begin{align*}
-\varepsilon L_{n}(1 ; x)-\frac{2 M}{\delta^{2}} L_{n}(\psi ; x) & \leqslant L_{n}(f ; x)-L_{n}(f(x) ; x) \\
& =L_{n}(f ; x)-f(x) L_{n}(1 ; x) \\
& \leqslant \varepsilon L_{n}(1 ; x)+\frac{2 M}{\delta^{2}} L_{n}(\psi ; x) \tag{3.8}
\end{align*}
$$

现在我们可以断定， $L_{n}(\psi ; x)$ 在区间 $[a, b]$ 上一致收玫于零. 事实上，由定理的条件与算子 $L_{n}(f ; x)$ 的线性性质推出

$$
\begin{aligned}
L_{n}(\psi ; x) & =L_{n}\left(t^{2}-2 t x+x^{2} ; x\right) \\
& =L_{n}\left(t^{2} ; x\right)-2 x L_{n}(t ; x)+x^{2} L_{n}(1 ; x) \\
& =x^{2}+\gamma_{n}(x)-2 x\left(x+\beta_{n}(x)\right)+x^{2}\left(1+\alpha_{n}(x)\right) \\
& =\gamma_{n}(x)-2 x \beta_{n}(x)+x^{2} \alpha_{n}(x) \\
& =\delta_{n}(x)
\end{aligned}
$$

其中 $\delta_{n}(x)$ 在区间 $[a, b]$ 上一致收敛于零。
考虑到这一点及定理中第一个条件，便可断言不等式（3.8）右边在区间 $[a, b]$ 上一致收敛于 $\varepsilon$,而左边一致收玫于 $-\varepsilon$.

据此可以求出这样的序标 $N_{\varepsilon}$, 使得当 $n>N_{\varepsilon}, a \leqslant x \leqslant b$ 时, 成立不等式

$$
-2 \varepsilon<L_{n}(f ; x)-f(x) L_{n}(1 ; x)<2 \varepsilon
$$

最后，依 $\varepsilon$ 的任意性，序列

$$
L_{n}(f ; x)-f(x) L_{n}(1 ; x)
$$

在区间 $[a, b]$ 上一致收敛于零，从而由定理中第一个条件便可断言序列 $L_{n}(f ; x)$ 在区间 $[a, b]$ 上一致收玫于 $f(x)$ 。

定理 4(Korovkin) 设线性正算子序列 $L_{n}(f ; x)$ 满足条件:
(1) $L_{n}(1 ; x)=1+a_{n}(x)$,
(2) $L_{n}(\cos t ; x)=\cos x+\beta_{n}(x)$,
(3) $L_{n}(\sin t ; x)=\sin x+\gamma_{n}(x)$,

其中 $\alpha_{n}(x), \beta_{n}(x)$ 与 $\gamma_{n}(x)$ 在区间 $[a, b]$ 上一致收敛于零；又设函数 $f(t)$ 有界且具有周期 $2 \pi$, 在区间 $[a, b]$ 上连续, 于点 $b$ 右连续,于点 $a$ 左连续. 在上述条件下，序列 $L_{n}(f ; x)$ 在 $[a, b]$ 上一致收敛于 $f(x)$ 。

证明 对于函数 $f(x)$ ，定理 3 的条件满足，因此不等式（3.5）与（3.6）成立，其中第一个适于一切 $x$ 与 $t$ 的值，而第二个为以下条件所约束：

$$
a \leqslant x \leqslant b, \quad|t-x|<\delta .
$$

对固定的 $x(a \leqslant x \leqslant b)$ ，依这些不等式，类似定理 3 中（3.7）式的证明，可得

$$
\begin{equation*}
-\varepsilon-\frac{2 M}{\sin ^{2} \frac{\delta}{2}} \psi(t)<f(t)-f(x)<\varepsilon+\frac{2 M}{\sin ^{2} \frac{\delta}{2}} \psi(t) \tag{3.9}
\end{equation*}
$$

其中 $\psi(t)=\sin ^{2} \frac{t-x}{2}, a \leqslant x \leqslant b,-\infty<t<+\infty$.
由不等式（3.9）得到

$$
\begin{align*}
-\epsilon L_{n}(1 ; x)-\frac{2 M}{\sin ^{2} \frac{\delta}{2}} L_{n}(\psi ; x) & \leqslant L_{n}(f ; x)-f(x) L_{n}(1 ; x) \\
& \leqslant \varepsilon L_{n}(1 ; x)+\frac{2 M}{\sin ^{2} \frac{\delta}{2}} L_{n}(\psi ; x) \tag{3.10}
\end{align*}
$$

但是 $\psi(t)=\frac{1}{2}(1-\cos x \cos t-\sin x \sin t)$. 于是

$$
\begin{aligned}
L_{n}(\psi ; x) & =\frac{1}{2}\left[L_{n}(1 ; x)-\cos x L_{n}(\cos t ; x)-\sin x L_{n}(\sin t ; x)\right] \\
& =\frac{1}{2}\left[1+\alpha_{n}(x)-\cos ^{2} x-\cos x \beta_{n}(x)-\sin ^{2} x-\sin x \gamma_{n}^{3}(x)\right] \\
& =\frac{1}{2}\left[\alpha_{n}(x)-\beta_{n}(x) \cos x-\gamma_{n}^{2}(x) \sin x\right]=\delta_{n}(x)
\end{aligned}
$$

其中 $\delta_{n}(x)$ 于区间 $[a, b]$ 上一致收敛于零。依上述等式及定理条件可以推出，不等式（3.10）右边在区间 $[a, b]$ 上一致收玫于 $\varepsilon$ ，而左边一致收玫于 $-\varepsilon$ 。因此有 $N_{\varepsilon}$ ，使得当 $n>N_{\varepsilon}, a \leqslant x \leqslant b$ 时，有不等式

$$
-2 \varepsilon<L_{n}(f ; x)-f(x) L_{n}(1 ; x)<2 \varepsilon
$$

由此可以推出

$$
L_{n}(f ; x)-f(x) L_{n}(1 ; x)=\lambda_{n}(x)
$$

其中 $\lambda_{n}(x)$ 在区间 $[a, b]$ 上一致收敛于零. 从而依据定理条件, 得到

$$
\begin{aligned}
L_{n}(f ; x)-f(x) & =\lambda_{n}(x)+f(x)\left[L_{n}(1 ; x)-1\right] \\
& =\lambda_{n}(x)+f(x) \alpha_{n}(x)=\nu_{n}(x)
\end{aligned}
$$

其中 $\nu_{n}(x)$ 在区间 $[a, b]$ 上一致收敛于零，于是序列 $L_{n}(f ; x)$ 在这个区间上一致收玫于函数 $f(x)$.

注记 请注意，在定理3与定理4的证明过程中我们已经指明，如果序列 $L_{n}(1 ; x)$ 在 区间 $[a, b]$ 上一致收敛 于 1 , 而序列 $L_{n}(\psi ; x)$ (在定理3中， $\psi(t)=(t-x)^{2}$ ；在定理 4 中， $\psi(t)=\sin ^{2} \frac{t-x}{2}$ )在这区间上一致收玫于零，那么这些定理是正确的。

验证在所述诸定理中指出的这两个条件，而非三个条件，在多数情形下是较易实现的。

下面研究特殊的算子序列的一致收敛性.
引理2 设函数 $\varphi(x)$ 满足条件：
（1） $\varphi(x)$ 在区间 $[-c, c], c>0$ 上连续,
(2) $\varphi(0)=1$ ；当 $x \neq 0, x \in[-c, c]$ 时， $0 \leqslant \varphi(x)<1$.

若令 $0<\delta \leqslant c$ 固定,

$$
I_{n}=\int_{-c}^{c} \varphi^{n}(x) \mathrm{d} x \quad \text { 及 } \quad I_{n}(\delta)=\int_{-\delta}^{\delta} \varphi^{n}(x) \mathrm{d} x
$$

则

$$
\lim _{n \rightarrow \infty} \frac{I_{n}(\delta)}{I_{n}}=1
$$

证明 我们有

$$
\begin{align*}
I_{n} & =\int_{-c}^{c} \varphi^{n}(x) \mathrm{d} x=\int_{-c}^{-\delta} \varphi^{n}(x) \mathrm{d} x+\int_{-\delta}^{\delta} \varphi^{n}(x) \mathrm{d} x+\int_{\delta}^{c} \varphi^{n}(x) \mathrm{d} x \\
& =\int_{-c}^{-\delta} \varphi^{n}(x) \mathrm{d} x+\int_{\delta}^{c} \varphi^{n}(x) \mathrm{d} x+I_{n}(\delta) . \tag{3.11}
\end{align*}
$$

由于函数 $\varphi(x)$ 在区间上 $[-c,-\delta]$ 上连续, 可设 $q_{1}=\max _{-\leqslant \leqslant x \leqslant-\delta} \varphi(x)$. 由引理条件(2)推出 $0<q_{1}<1$, 同理 $q_{2}=\max _{\delta \leqslant x \leqslant c} \varphi(x)<1$.

令 $q=q(\delta)=\max \left\{q_{1}, q_{2}\right\}$, 则在集 $[-c,-\delta]$ 和 $[\delta, c]$ 上函数 $\varphi(x)$ 满足不等式

$$
0 \leqslant \varphi(x) \leqslant q=q(\delta)<1
$$

据此有

$$
\begin{equation*}
0 \leqslant \int_{-c}^{-\delta} \varphi^{n}(x) \mathrm{d} x+\int_{\delta}^{c} \varphi^{n}(x) \mathrm{d} x<q^{n}(c-\delta)+q^{n}(c-\delta)<2 c q^{n} \tag{3.12}
\end{equation*}
$$

现在来估计 $I_{n}(\delta)$ 。依 $\varphi(x)$ 在点 $x=0$ 处的连续性及 $\varphi(0)=1$, 对于 $\varepsilon=\frac{1-q}{2}>0$有 $\delta_{1}>0\left(\delta_{1}<\delta\right)$ ，使得当 $|x|<\delta_{1}$ 时，有

$$
\varphi(x)>1-\varepsilon=\frac{1+q}{2}=\tilde{q}>q
$$

由此再依函数 $\varphi(x)$ 的正性，得到

$$
\begin{equation*}
I_{n}(\delta)=\int_{-\delta}^{\delta} \varphi^{n}(x) \mathrm{d} x \geqslant \int_{-\delta_{1}}^{\delta_{1}} \varphi^{n}(x) \mathrm{d} x>2 \delta_{1} \tilde{q}^{n} \tag{3.13}
\end{equation*}
$$

由(3.11)与(3.12)推出

$$
I_{n}(\delta) \leqslant I_{n}<I_{n}(\delta)+2 c q^{n}
$$

把这些不等式各部分除以 $I_{n}(\delta)$ 并注意到不等式（3.13），得到

$$
\begin{equation*}
1 \leqslant \frac{I_{n}}{I_{n}(\delta)}<1+\frac{2 c q^{n}}{I_{n}(\delta)}<1+\frac{2 c q^{n}}{2 \delta_{1} \tilde{q}^{n}}=1+\frac{c}{\delta_{1}}\left(\frac{q}{\tilde{q}}\right)^{n} \tag{3.14}
\end{equation*}
$$

由于 $\tilde{q}>_{q}$ ，所以上面的不等式的右边趋于 1 ，如此便证明了引理。
定理5 设函数 $\varphi(x)$ 满足引理2的条件且

$$
I_{n}=\int_{-c}^{c} \varphi^{n}(x) \mathrm{d} x
$$

又设函数 $f(x)$ 在区间 $[a, b]$ 上连续，则算子序列

$$
L_{n}(f ; x)=\frac{1}{I_{n}} \int_{a}^{b} f(t) \varphi^{n}(t-x) \mathrm{d} t \quad(0<b-a \leqslant c)
$$

在区间 $[a+\delta, b-\delta](\delta>0)$ 上一致收敛于函数 $f(x)$ 。
证明 依定理 4 的注记，要证明定理只需验明：在区间 $[a+\delta, b-\delta]$ 上序列 $L_{n}(1 ; x)$ 一致收敛于 1 ，且序列 $L_{n}(\psi ; x)$ 一致收敛于零，此处 $\psi(t)=(t-x)^{2}$ 。我们有

$$
L_{n}(1 ; x)=\frac{1}{I_{n}} \int_{a}^{b} \varphi^{n}(t-x) \mathrm{d} t
$$

令 $z=t-x$ ，则得

$$
L_{n}(1 ; x)=\frac{1}{I_{n}} \int_{a-x}^{b-x} \varphi^{n}(z) \mathrm{d} z
$$

由于 $a+\delta \leqslant x \leqslant b-\delta$, 故

$$
\begin{aligned}
& a-x \geqslant a-(b-\delta)=\delta-(b-a) \geqslant \delta-c>-c \\
& a-x \leqslant a-(a+\delta)=-\delta \\
& b-x \geqslant b-(b-\delta)=\delta \\
& b-x \leqslant b-(a+\delta)=(b-a)-\delta \leqslant c-\delta<c
\end{aligned}
$$

再依函数 $\varphi(x)$ 的正性有

$$
\begin{aligned}
& I_{n}(\delta)=\int_{-\delta}^{\delta} \varphi^{n}(z) \mathrm{d} z \leqslant \int_{a-x}^{b-x} \varphi^{n}(z) \mathrm{d} z \leqslant \int_{-c}^{c} \varphi^{n}(z) \mathrm{d} z=I_{n} \\
& \frac{I_{n}(\delta)}{I_{n}} \leqslant \frac{1}{I_{n}} \int_{a-x}^{b-x} \varphi^{n}(z) \mathrm{d} z=L_{n}(1 ; x) \leqslant 1
\end{aligned}
$$

又依引理 2 ，上述最后的不等式的左边趋于 1 ，因此若 $n>N_{\varepsilon}, \varepsilon>0, a+\delta \leqslant x \leqslant$ $b-\delta$ ，则有不等式

$$
1-\varepsilon<L_{n}(1 ; x) \leqslant 1, \quad-\varepsilon \leqslant L_{n}(1 ; x)-1 \leqslant 0
$$

这就验明了序列 $L_{n}(1 ; x)$ 在区间 $[a+\delta, b-\delta]$ 上的一致收敛性。剩下的是要验明序列 $L_{n}(\psi ; x)$ 在这一区间上一致收敛于零，其中 $\psi(t)=(t-x)^{2}$ 。我们有

$$
\begin{aligned}
0 & <L_{n}(\psi ; x)=\frac{1}{I_{n}} \int_{a}^{b}(t-x)^{2} \varphi^{n}(t-x) \mathrm{d} t \\
& =\frac{1}{I_{n}} \int_{a-x}^{b-x} z^{2} \varphi^{n}(z) \mathrm{d} z
\end{aligned}
$$

由于 $a-x \geqslant-c$ ，而 $b-x \leqslant c$ 且函数 $\varphi(x)$ 在区间 $[-c, c]$ 上是正的，所以

$$
\begin{aligned}
0<L_{n}(\psi ; x) \leqslant & \frac{1}{I_{n}} \int_{-c}^{c} z^{2} \varphi^{n}(z) \mathrm{d} z \\
= & \frac{1}{I_{n}}\left[\int_{-c}^{-a} z^{2} \varphi^{n}(z) \mathrm{d} z+\int_{a}^{c} z^{2} \varphi^{n}(z) \mathrm{d} z\right] \\
& +\frac{1}{I_{n}} \int_{-a}^{a} z^{2} \varphi^{n}(z) \mathrm{d} z
\end{aligned}
$$

在第一与第二积分号下 $z^{2} \leqslant c^{2}$ ，而在第三积分号下 $z^{2} \leqslant \alpha^{2}$ 。因而

$$
0<I_{n}(\psi ; x)<\frac{c^{2}}{I_{n}}\left\{\int_{-c}^{-\alpha} \varphi^{n}(z) \mathrm{d} z+\int_{a}^{c} \varphi^{n}(z) \mathrm{d} z\right\}+\frac{\alpha^{2}}{I_{n}} \int_{-a}^{a} \varphi^{n}(z) \mathrm{d} z
$$

依不等式(3.12)得到

$$
\begin{equation*}
0<L_{n}(\psi ; x)<\frac{c^{2} \cdot 2 c q^{n}}{I_{n}}+\frac{\alpha^{2}}{I_{n}} I_{n}(\alpha) \tag{3.15}
\end{equation*}
$$

现在设 $\varepsilon>0$ 及 $a^{2}=\frac{\varepsilon}{2}$. 依引理 2 , 不等式(3.15)右边第二项有极限数 $\alpha^{2}=\frac{\varepsilon}{2}$,而依不等式（3.14），第一项趋于零。因而成立不等式

$$
0<L_{n}(\psi ; x)<\varepsilon,
$$

如果 $n>N_{\varepsilon}, a \leqslant x \leqslant b$. 从而推得序列 $L_{n}(\psi ; x)$ 在区间 $a \leqslant x \leqslant b$ 上一致收玫于零,定理得证。

采用 Korovkin 定理和上述定理，可以证明许多算子的收敛性质。例如 Bernstein 算子，Landau 算子，Weierstrass 算子，Jackson 算子以及 Kontrovitch 算子等的相应收敛性均可由它们验证.

## 第一章习题

1. 试证, 若 $f(x)$ 在区间 $[0,1]$ 上有界可积并在点 $x=1$ 连续, 则泛函数序列

$$
I_{n}(f)=n \int_{0}^{1} f(x) x^{n} \mathrm{~d} x
$$

收玫于 $f(1)$.
2. 第 1 题中的泛函数序列将收敛于 $f(1-0)=\lim _{\Gamma \rightarrow 1-0} f(x)$, 如果函数 $f(x)$ 在区间 $[0,1]$上有界可积, 并且函数在点 $x=1$ 的左极限存在.
3. 试证, 泛函数序列

$$
I_{n}^{(1)}(f)=\frac{n}{2} \int_{0}^{2} f(x) \varphi_{1}^{n}(x) \mathrm{d} x
$$

其中

$$
\varphi_{1}(x)=\left\{\begin{array}{cc}
x, & x \leqslant 1 \\
2-x, & x \geqslant 1
\end{array}\right.
$$

收敛于 $f(1)$, 如果函数 $f(x)$ 在点 $x=1$ 连续且是一致有界的话.
4. 试证, 若函数 $f(x)$ 在区间 $[0, a], a>0$, 上连续, 在 $x=a$ 为右连续且在实轴上有界,则 Baskakov 算子序列

$$
\begin{aligned}
& B_{n}(f ; x)=\sum_{k=0}^{\infty} f\left(\frac{k}{n}\right) \mathrm{C}_{-n}^{k}(-x)^{k}(1+x)^{-n-k}, \\
& \mathrm{C}_{-n}^{k}=\frac{(-n)(-n-1) \cdots(-n-k+1)}{k!}
\end{aligned}
$$