--- 
title: Divergence Theorem
date: 2024-09-05
icon: file
article: false
star: false
timeline: false
---

Just a remark.
<!-- more -->

Divergence Theorem, or "Integral by parts".

## 1. Integral by parts from 1 to higher dimension

**Recall** the 1-dimension integral by parts formula:
$$
\int_a^b u(x) v^{\prime}(x) \mathrm{d} x=\left.u(x) v(x)\right|_a ^b-\int_a^b u^{\prime}(x) v(x) \mathrm{d} x.
$$
Note that $u(x) v(x) |_a^b = u(b)v(b) - u(a)v(a)$, we rewrite it as 
$$
\left.u(x) v(x)\right|_a ^b=u(b) v(b) \cdot 1+u(a) v(a) \cdot(-1).
$$
The right-hand side above could be regarded as the integral of $uv$ times the outer normal vector at both points $a$ and $b$, in which the normal vector is a number in 1-dimension case.

<p></p>

**Therefore**, It is easy to generalize the integral by parts to higher dimensions. Let $\Omega$ be a bounded domain belongs to $n$-dimensional Euclid space. At its each axis, we have 
$$
\int_{\Omega} \frac{\partial u}{\partial x_i} v_i \mathrm{d} \Omega=\int_{\partial \Omega} u v_i \eta_i \mathrm{d} S-\int_{\Omega} u \frac{\partial v_i}{\partial x_i} \mathrm{d} \Omega,
$$
where $u$ and $v_i$ are the functions defined on $\Omega$ and $\eta = [\eta_1,\cdots,\eta_n]^\text{T}$ is the normal vector outside of the boundary $\partial \Omega$. Let $\mathbf{v} = [v_1,\cdots,v_n]^\text{T}$ be the vector-valued functions, thus
$$
\tag{1.1}
\int_{\Omega} \nabla u \cdot \mathbf{v} d \Omega=\int_{\partial \Omega} u(\mathbf{v} \cdot \eta) d S-\int_{\Omega} u \nabla \cdot \mathbf{v} d \Omega. \hspace{3em}
$$

## 2. Green's Identities

- **Divergence Theorem** In formula (1.1), let $u\equiv 1$, then 
$$
\int_{\partial \Omega} \mathbf{v} \cdot d S=\int_{\Omega} \nabla \cdot \mathbf{v} d \Omega.
$$

- **Green's First Identity** In formula (1.1), let 

## test

# Best uniform rational approximation of $x^{\alpha}$ on $[0,1]$ 

by

HERBERT R. STAHL

TFH-Berlin
Berlin, Germany

## 1. Introduction and main result

Many problems in approximation theory can be connected with the problem of approximating the function $|x|^{\alpha}$ on a set having the origin as an inner point. One of the main reasons for that is the fact that $|x|^{\alpha}$ can be seen as a prototype of functions that are $\alpha$-Lipschitz continuous. In the present paper we are concerned with the rational approximation of the function $x^{\alpha}$ on $[0,1]$. It is not difficult to see that this approximation problem is equivalent to the approximation of $|x|^{2 \alpha}$ on $[-1,1]$, and the asymptotic error estimates for both cases can easily be transferred from one to the other situation (see Theorem 2).

We start with the statement of the main result and shall then continue with a very short review of related investigations in polynomial and rational approximation. Let $\mathcal{P}_{n}$ denote the set of all polynomials of degree at most $n \in \mathbf{N}$ with real coefficients, $\mathcal{R}_{m n}$ the set of rational functions $\left\{p / q \mid p \in \mathcal{P}_{m}, q \in \mathcal{P}_{n}, q \not \equiv 0\right\}, m, n \in \mathbf{N}$, and $r_{m n}^{*}=$ $r_{m n}^{*}\left(f_{\alpha},[0,1] ; \cdot\right) \in \mathcal{R}_{m n}, m, n \in \mathbf{N}$, the rational best approximant to $f_{\alpha}:=x^{\alpha}$ in the uniform norm on $[0,1]$. The minimal approximation error for numerator and denominator degrees at most $m$ and $n$, respectively, is denoted by

$$
\begin{equation*}
E_{m n}:=E_{m n}\left(f_{\alpha},[0,1]\right)=\left\|f_{\alpha}-r_{m n}^{*}\right\|_{[0,1]}=\inf _{r \in \mathcal{R}_{m n}}\left\|f_{\alpha}-r\right\|_{[0,1]} \hspace{3em} \tag{1.1}
\end{equation*}
$$

with $\|\cdot\|_{K}$ denoting the sup-norm on $K \subseteq \mathbf{R}$. It is well known that the best approximant $r_{m n}^{*}$ exists and is unique within $\mathcal{R}_{m n}$ for each $m, n \in \mathbf{N}$ (cf. [ $15, \S \S 9.1$ and 9.2$]$, [14, Chapter 7.2$]$ or $[17, \S 5.1]$ ). The central task in this paper is to prove

Research supported by the Deutsche Forschungsgemeinschaft (AZ: Sta 299/8-2).

ThEOREM 1. The limit

$$
\begin{equation*}
\lim _{n \rightarrow \infty} e^{2 \pi \sqrt{\alpha n}} E_{n n}\left(x^{\alpha},[0,1]\right)=4^{1+\alpha}|\sin \pi \alpha| \hspace{3em} \tag{1.2}
\end{equation*}
$$

holds for each $\alpha>0$.
Since $|x|^{\alpha}$ is an even function, $x \in \mathbf{R}$, it is not difficult to verify that the uniquely existing best approximant $r_{m n}^{*}=r_{m n}^{*}\left(|x|^{\alpha},[-1,1] ; \cdot\right)$ is also an even function. Consequently, a substitution of $x^{2}$ by $x$ shows that

$$
\begin{equation*}
E_{2 m, 2 n}\left(|x|^{2 \alpha},[-1,1]\right)=E_{m n}\left(x^{\alpha},[0,1]\right) \quad \text { for all } m, n \in \mathbf{N} \hspace{3em}\tag{1.3}
\end{equation*}
$$

and as a corollary to Theorem 1 we have
THEOREM 2. The limit

$$
\begin{equation*}
\lim _{n \rightarrow \infty} e^{\pi \sqrt{\alpha n}} E_{n n}\left(|x|^{\alpha},[-1,1]\right)=4^{1+\alpha / 2}\left|\sin \frac{1}{2} \pi \alpha\right| \hspace{3em} \tag{1.4}
\end{equation*}
$$

holds for each $\alpha>0$.
The analogue of (1.4) in polynomial approximation is connected with a conjecture by S. N. Bernstein, which, however, has been disproved in the 1980s by A.S. Varga and A. J. Carpenter with the help of high-precision numerical calculations (cf. [26], [27]). Because of its relevance for rational approximation, we will repeat some of the results that form the background of this conjecture. From Jackson's and Bernstein's theorems (cf. $\left[15, \S \S 5.5\right.$ and 5.6]) we know that the polynomial approximation error $E_{m, 0}\left(|x|^{\alpha},[-1,1]\right)$ behaves like $\mathcal{O}\left(m^{-\alpha}\right)$ as $m \rightarrow \infty$ and that the exponent $-\alpha$ in the estimate is best possible. (By $\mathcal{O}(\cdot)$ we denote Landau's big oh.) In [2] and [3] S. N. Bernstein has proved that the limit

$$
\begin{equation*}
\lim _{m \rightarrow \infty} m^{-\alpha} E_{m, 0}\left(|x|^{\alpha},[-1,1]\right)=: \beta(\alpha)\hspace{3em} \tag{1.5}
\end{equation*}
$$

exists and is different from zero for each $\alpha>0, \alpha \notin 2 \mathrm{~N}$. This result is much stronger and more difficult to prove than general conclusions of Jackson's and Bernstein's theorems, where only the order of the error development is taken into consideration. In [2] the special case $\alpha=1$ of (1.5) had been studied. The existence of the constant $\beta:=\beta(1)$ has been proved there, and numerical bounds $0.278<\beta<0.286$ ( $[2$, p. 41]) had been calculated. In this connection S.N. Bernstein raised the question, whether the value of $\beta$, which now carries the name Bernstein constant, could be expressed by known transcendentals. Since $1 / 2 \sqrt{\pi}=2.82( \pm 0.0005)$ lies well inside his numerical bounds for $\beta$, he raised the question whether $\beta \stackrel{?}{=} 1 / 2 \sqrt{\pi}$ (cf. [2, p. 56]). This speculation is now known as Bernstein's conjecture, and it has been disproved in [26] by high-precision calculations. An answer to

Bernstein's original question about an expression of $\beta$ by known transcendentals is still open. In [3] only an asymptotic formula has been proved for $\beta(\alpha)$. Numerical calculations of $\beta(\alpha)$ for a selection of values of $\alpha$ have been presented in [27].

There are two striking differences between polynomial and rational best approximation to the function $|x|^{\alpha}$ on $[-1,1]$ or $[0,1]$, on which we want to comment. Rational approximants converge much faster than the polynomial ones, which can rather impressively be seen by a comparison of the two formulae (1.4) and (1.5). It is also quite surprising that in the somewhat simpler polynomial approximation problem no explicit formula is known for the constant $\beta(\alpha)$, while in the rational case we have the comparatively simple expression on the right-hand side of formula (1.4). In the case of $\alpha=1$ we have the very simple number 8 as leading coefficient in the asymptotic error estimate, which has been proved in [19].

Bernstein's investigations [2] and [3] have been published in 1914 and 1938. The study of best rational approximation of $|x|$ was started only in 1964 by D.J. Newman's surprising (at the time) result in [16] that

$$
\begin{equation*}
\frac{1}{2} e^{-9 \sqrt{n}} \leqslant E_{n n}(|x|,[-1,1]) \leqslant 3 e^{-\sqrt{n}} \quad \text { for all } n=4,5, \ldots \hspace{3em} \tag{1.6}
\end{equation*}
$$

The result already shows that rational approximants converge indeed much faster than the polynomial analogues.

Newman's investigation has triggered a whole series of contributions, we mention only those that contain substantial improvements of the error estimate in the uniform norm:

$$
\begin{aligned}
& E_{n n}\left(x^{\alpha},[0,1]\right) \leqslant e^{-\tau(\alpha) \sqrt[3]{n}}, \quad \alpha \in \mathbf{R}_{+}, \quad([6], 1967) \\
& E_{n n}\left(x^{1 / 3},[0,1]\right) \leqslant e^{-c \sqrt{n}}, \\
& E_{n n}\left(x^{\alpha},[0,1]\right) \leqslant e^{-c(\alpha) \sqrt{n}}, \quad \alpha \in \mathbf{R}_{+}, \quad([8], 1967), \\
& \frac{1}{3} e^{-\pi \sqrt{2 n}} \leqslant E_{n n}\left(x^{1 / 2},[0,1]\right) \leqslant e^{-\pi \sqrt{n}\left(1-\mathcal{O}\left(n^{-1 / 4}\right)\right)}, \quad([5], 1968), \\
& e^{-c(\alpha) \sqrt{n}} \leqslant E_{n n}\left(x^{\alpha},[0,1]\right), \quad \alpha \in \mathbf{Q}_{+} \backslash \mathbf{N}, \quad \text { ([9], 1972), } \\
& e^{-4 \pi \sqrt{\alpha n}(1+\varepsilon)} \leqslant E_{n n}\left(x^{\alpha},[0,1]\right) \leqslant e^{-\pi \sqrt{\alpha n}(1-\varepsilon)}, \\
& \alpha \in \mathbf{Q}_{+} \backslash \mathbf{N}, \varepsilon>0, n \geqslant n_{0}(\alpha, \varepsilon), \quad([10], 1974), \\
& E_{n n}\left(x^{1 / 2},[0,1]\right) \leqslant c n e^{-\pi \sqrt{2 n}}, \quad([30], 1974), \\
& \frac{1}{3} e^{-\pi \sqrt{2 n}} \leqslant E_{n n}\left(x^{1 / 2},[0,1]\right) \leqslant c e^{-\pi \sqrt{2 n}}, \quad([31], 1975), \\
& e^{-c_{1}(s) \sqrt{n}} \leqslant E_{n n}(\sqrt[s]{x},[0,1]) \leqslant e^{-c_{2}(s) \sqrt{n}}, \quad s \in \mathbf{N}, \quad([24], 1976) .
\end{aligned}
$$

Here $c, c(\alpha), \ldots$ denote constants that are independent of $n$. The estimates are given only for approximation on $[0,1]$; relation (1.3) shows that these results can immediately be transferred to the problem of approximating $|x|^{\alpha}$ on $[-1,1]$.

The sharpest results about asymptotic error estimates for best rational approximants to $f_{\alpha}=x^{\alpha}$ in the uniform norm on $[0,1]$ have been obtained independently by T. Ganelius [7] in 1979 and by N. S. Vyacheslavov [32] in 1980. Both authors proved that for $\alpha \in \mathbf{R}_{+} \backslash \mathbf{N}$ there exists a constant $c_{1}=c_{1}(\alpha)>0$ such that

$$
\begin{equation*}
\liminf _{n \rightarrow \infty} e^{2 \pi \sqrt{\alpha n}} E_{n n}\left(x^{\alpha},[0,1]\right) \geqslant c_{1}(\alpha) \hspace{3em} \tag{1.7}
\end{equation*}
$$

and conversely that for each positive rational number $\alpha \in \mathbf{Q}_{+}$there exists a constant $c_{2}=c_{2}(\alpha)$ such that

$$
\begin{equation*}
\limsup _{n \rightarrow \infty} e^{2 \pi \sqrt{\alpha n}} E_{n n}\left(x^{\alpha},[0,1]\right) \leqslant c_{2}(\alpha)\hspace{3em} \tag{1.8}
\end{equation*}
$$

In both investigations it could not be shown that $c_{2}=c_{2}(\alpha)$ depends continuously on $\alpha$. Thus, the estimate (1.8) remained open for $\alpha \in \mathbf{R}_{+} \backslash \mathbf{Q}$. However, T. Ganelius was able to prove the somewhat weaker result

$$
\begin{equation*}
E_{n n}\left(x^{\alpha},[0,1]\right) \leqslant c_{2}(\alpha) e^{-2 \pi \sqrt{\alpha n}+c_{3}(\alpha) \sqrt[4]{n}} \quad \text { for } n \geqslant n_{0}\left(c_{2}(\alpha), c_{3}(\alpha)\right) \hspace{3em} \tag{1.9}
\end{equation*}
$$

which holds for all $\alpha>0$ (cf. [7]). In (1.9), $c_{2}(\alpha)$ and $c_{3}(\alpha)$ are constants depending only on $\alpha$. For approximation in the $L^{p}$-norm, $1<p<\infty$, the upper estimate (1.8) has been proved in [1] for all $\alpha>0$; however, in the uniform norm the problem seems to have been solved only for rational $\alpha$ up to now.

The results (1.7)-(1.9) give the correct exponent $-2 \pi \sqrt{\alpha n}$ in the error formula, but not much is said about the coefficient in front of the error formula. This problem has now been settled by Theorem 1. Like in the analogous situation in polynomial approximation, it is proved that the limit (1.2) exists and has the value given on the right-hand side of (1.2). Contrary to the estimate (1.8), the limit (1.2) holds for all $\alpha>0$. Theorem 2 has been proved in [19] for the special case of $\alpha=1$, which corresponds to $\alpha=\frac{1}{2}$ in Theorem 1. A simplified proof of this result has been given in [14, Chapter 8].

The investigation of strong error estimates with precise information about the leading coefficient in front of the error formula received a strong impetus from the surprising numerical results obtained by R.S. Varga, A. Ruttan and R.S. Carpenter in [26], [29] and [27]. Starting with numerical investigations of the Bernstein conjecture, R. S. Varga has developed numerical tools that are based on the Remez algorithm, Richardson extrapolation and the use of high numbers of significant digits, which allow mathematical conjectures to be checked by numerical means (for a survey of different applications, see [25]). In [28], R. S. Varga and R.S. Carpenter were the first to conjecture the concrete form of the right-hand side of (1.2). Independently, formula (1.2) was announced in [20]. The present research owes much to the impetus it received from Richard Varga's discoveries and numerical explorations.

The present paper is structured as follows: The proof of Theorem 1 will be prepared by auxiliary results in $\S \S 2-4$. In $\S 2$ we prove several results about the behavior of the error function $f_{\alpha}-r_{m n}^{*}$. To a large extent these results are consequences of Chebyshev's theorem on alternation points. The results allow us to derive a rather explicit integral formula for the approximation error in $\S 3$. Besides of that in $\S 3$ results about the location of poles and zeros of the approximants $r_{n+1+[\alpha], n}^{*}$ are proved. In $\S 4$ we study an auxiliary function $r_{n}$. These investigations are rather technical. The proof of Theorem 1 is contained in $\S 5$. In the proof, a special logarithmic potential plays an essential role, which has already been studied in [19] and in [14, Chapter 8].

In the different sections the following mathematical tools are dominant: In $\S 2$ these are mainly results from the theory of best rational approximants, in $\S 3$ results from rational interpolation and multipoint Padé approximation, in $\S 4$ different techniques from complex analysis, and in $\S 5$ elements from potential theory.

## 2. Basic properties of rational best approximants

In the present section we show that the rational best approximants $r_{m n}^{*}$ have maximal numerator and denominator degree. We further prove that Theorem 1 holds for all close-to-diagonal sequences if it holds for one of these sequences, and we investigate the extreme points of the error function $x^{\alpha}-r_{n m}^{*}(x)$ on $[0,1]$.

Since $r_{m n}^{*}(x) \equiv x^{\alpha}$ for $\alpha \in \mathbf{N}$ and $m>\alpha$, the limit (1.2) is trivial for $\alpha \in \mathbf{N}$, and we can assume without loss of generality that $\alpha \notin \mathbf{N}$. In the sequel we assume that $\alpha \in \mathbf{R}_{+} \backslash \mathbf{N}$ is a fixed number, we set $f_{\alpha}:=x^{\alpha}$.

Lemma 1. If the limit

$$
\begin{equation*}
\lim _{n \rightarrow \infty} e^{2 \pi \sqrt{\alpha n}} E_{n+k, n}\left(f_{\alpha},[0,1]\right)=4^{1+\alpha}|\sin \pi \alpha| \hspace{3em} \tag{2.1}
\end{equation*}
$$

holds for one $k \in \mathbf{Z}$, then it holds for every $k \in \mathbf{Z}$.
Proof. Set $E_{m n}:=E_{m n}\left(f_{\alpha},[0,1]\right)$. We have $E_{m n} \geqslant E_{M N}$ if $m \leqslant M$ and $n \leqslant N$. For $k_{1}, k_{2} \in \mathbf{Z}, d:=k_{1}-k_{2}>0$, it follows that

$$
\begin{align*}
e^{2 \pi \sqrt{\alpha n}} E_{n+k_{2}, n} & \geqslant e^{2 \pi \sqrt{\alpha n}} E_{n+k_{1}, n} \\
& \geqslant e^{2 \pi \sqrt{\alpha(n+d)}} E_{(n+d)+k_{2}, n+d} e^{2 \pi \sqrt{\alpha}(\sqrt{n}-\sqrt{n+d})} \hspace{3em} \tag{2.2}
\end{align*}
$$

Because of the estimate

$$
\begin{equation*}
e^{2 \pi \sqrt{\alpha}(\sqrt{n}-\sqrt{n+d})}=e^{2 \pi \sqrt{\alpha n}(1-\sqrt{1+d / n})}=1+\mathcal{O}(1 / \sqrt{n}) \quad \text { as } n \rightarrow \infty\hspace{3em} \tag{2.3}
\end{equation*}
$$

it follows from the inequalities (2.2) that we have identical limits in (2.1) for $k_{1}>k_{2}$. The case $k_{1}<k_{2}$ can be treated in the same way.

Lemma 1 shows that we can use any paradiagonal sequence $\left\{r_{n+k, n}^{*}\right\}_{n \in \mathbf{N}}$ in the proof of Theorem 1. It turns out that the sequence $\left\{r_{m_{n} n}^{*}\right\}_{n \in \mathbf{N}}$ with numerator degree

$$
\begin{equation*}
m_{n}:=n+1+[\alpha], \quad n \in \mathbf{N}\hspace{3em} \tag{2.4}
\end{equation*}
$$

is suited best for carrying through the proof of Theorem 1. By $[\alpha]$ we denote the greatest integer not larger than $\alpha$. In order to simplify notation in the sequel, the subindex $m_{n}$ will be suppressed, i.e., we write $r_{n}^{*}$ instead of $r_{m_{n} n}^{*}$.

Using estimate (2.3) and the inequalities (2.2), we see that Theorem 1 can be extended to a rather broad class of close-to-diagonal sequences. Of course, an analogous generalization of Theorem 2 holds true in the same way. We have

Theorem 3. For $\alpha>0$ and any sequence $\left\{\left(n_{j}, m_{j}\right) \in \mathbf{N}^{2} \mid j=1,2, \ldots\right\}$ satisfying

$$
\begin{equation*}
n_{j}+m_{j} \rightarrow \infty \quad \text { and } \quad\left|n_{j}-m_{j}\right|=o\left(\sqrt{n_{j}}\right) \quad \text { as } j \rightarrow \infty \hspace{3em} \tag{2.5}
\end{equation*}
$$

the limit

$$
\begin{equation*}
\lim _{j \rightarrow \infty} e^{2 \pi \sqrt{\alpha n_{j}}} E_{m_{j}, n_{j}}\left(x^{\alpha},[0,1]\right)=4^{1+\alpha}|\sin \pi \alpha| \hspace{3em} \tag{2.6}
\end{equation*}
$$

holds. By o($\cdot$) we denote Landau's little oh.
It has already been mentioned in the introduction that the approximants $r_{n}^{*}$ uniquely exist for all $n \in \mathbf{N}$. In the next lemma more specific properties of the approximants $r_{n}^{*}$ will be proved.

LemmA 2. The approximant $r_{n}^{*}$ has exactly the numerator degree $m_{n}=n+1+[\alpha]$ and the denominator degree $n$. The error function

$$
\begin{equation*}
e_{n}:=f_{\alpha}-r_{n}^{*}, \quad n \in \mathbf{N}\hspace{3em} \tag{2.7}
\end{equation*}
$$

has exactly $m_{n}+n+2=2 n+3+[\alpha]$ extreme points $\eta_{n j}$ on $[0,1]$. With an appropriate numeration we can assume that

$$
\begin{equation*}
0=\eta_{n, 0}<\eta_{n, 1}<\ldots<\eta_{n, 2 n+2+[\alpha]}=1 \hspace{3em} \tag{2.8}
\end{equation*}
$$

and we have

$$
\begin{equation*}
\eta_{n j}^{\alpha}-r_{n}^{*}\left(\eta_{n j}\right)=(-1)^{j+1+[\alpha]} \varepsilon_{n} \quad \text { for } j=0, \ldots, 2 n+2+[\alpha]\hspace{3em} \tag{2.9}
\end{equation*}
$$

with

$$
\begin{equation*}
\varepsilon_{n}:=E_{m_{n}, n}\left(f_{\alpha},[0,1]\right) \hspace{3em} \tag{2.10}
\end{equation*}
$$

Proof. Set $r_{n}^{*}=p_{n} / q_{n}$ with $p_{n}$ and $q_{n}$ coprime polynomials, $m^{\prime}:=\operatorname{deg}\left(p_{n}\right)$ and $n^{\prime}:=$ $\operatorname{deg}\left(q_{n}\right)$. The restriction of the product $q_{n} e_{n}$ to $[0,1]$ belongs to the space

$$
\begin{equation*}
W_{n}:=\operatorname{span}\left\{1, z, \ldots, z^{m^{\prime}}, z^{\alpha}, \ldots, z^{\alpha+n^{\prime}}\right\}\hspace{3em}  \tag{2.11}
\end{equation*}
$$

Since $W_{n}$ forms a Chebyshev system on $[0,1]$ of dimension $m^{\prime}+n^{\prime}+2$ (see [12, Chapter $1, \S 3]$ ), we conclude that $q_{n} e_{n}$ has at most $m^{\prime}+n^{\prime}+1$ zeros on $[0,1]$, and consequently $e_{n}$ has also at most $m^{\prime}+n^{\prime}+1$ zeros on $[0,1]$. Therefore, the error function $e_{n}$ has at most $m^{\prime}+n^{\prime}+2$ alternation points on $[0,1]$.

From Chebyshev's theorem about alternation points for rational best approximants (see [14, Chapter 7, Theorem 2.6] or [15, Theorem 23]) we know that there exist $m_{n}+n+2-d$ points satisfying the alternation condition (2.9) and $d$ is given by

$$
\begin{equation*}
d=\min \left(m_{n}-m^{\prime}, n-n^{\prime}\right)\hspace{3em} \tag{2.12}
\end{equation*}
$$

From the earlier upper estimate it then follows that

$$
\begin{equation*}
m^{\prime}+n^{\prime}+2 \geqslant m_{n}+n+2-d \hspace{3em} \tag{2.13}
\end{equation*}
$$

which implies that $d \geqslant 0$, and with (2.12), it further follows that

$$
\begin{equation*}
d \geqslant\left(m_{n}-m^{\prime}\right)+\left(n-n^{\prime}\right) \geqslant 2 d \hspace{3em} \tag{2.14}
\end{equation*}
$$

Hence $d=0, m_{n}=m^{\prime}$, and $n=n^{\prime}$.
It remains only to show that the smallest and the largest extreme points $\eta_{n, 0}$ and $\eta_{n, 2 n+2+[\alpha]}$, respectively, are the end points of the interval $[0,1]$ and that at $z=1$ we have $e_{n}(1)=-\varepsilon_{n}$. Indeed, if one of the two points $\eta_{n, 0}$ or $\eta_{n, 2 n+2+[\alpha]}$ were not an end point of $[0,1]$, then there would exist a constant $c \in \mathbf{R}$ such that

$$
\begin{equation*}
e_{n}-c=f_{\alpha}-\left(r_{n}^{*}+c\right)\hspace{3em} \tag{2.15}
\end{equation*}
$$

has at least $m_{n}+n+2$ zeros in $[0,1]$. But this contradicts the fact that the restriction of $q_{n}\left(e_{n}-c\right)$ to $[0,1]$ belongs to $W_{n}$. For $z \in \mathbf{R}_{+}$near infinity we have $e_{n}(z)<0$. Since $e_{n}$ can have no sign change on $(1, \infty)$, it follows that $e_{n}(1)=-\varepsilon_{n}$.

As an immediate consequence of Lemma 2 we know that the error function $e_{n}$ has $m_{n}+n+1=2 n+2+[\alpha]$ different zeros $z_{n j}$ in the open interval $(0,1)$; more precisely, we have

$$
\begin{equation*}
\eta_{n, j-1}<z_{n j}<\eta_{n j} \quad \text { for } j=1, \ldots, 2 n+2+[\alpha] \hspace{3em} \tag{2.16}
\end{equation*}
$$

and

$$
\begin{equation*}
e_{n}\left(z_{n j}\right)=z_{n j}^{\alpha}-r_{n}^{*}\left(z_{n j}\right)=0 \quad \text { for } j=1, \ldots, 2 n+2+[\alpha]\hspace{3em} \tag{2.17}
\end{equation*}
$$

From (2.17) we deduce that the rational best approximant $r_{n}^{*} \in \mathcal{R}_{n+1+[\alpha], n}$ interpolates $f_{\alpha}$ at the $2 n+2+[\alpha]$ points $z_{n j}$. In the next section we shall see that this interpolation property has interesting consequences, and it allows us to prove basic properties of the rational approximant $r_{n}^{*}$.

## 3. Consequences of the interpolation property

An explicit formula for the approximation error $e_{n}=f_{\alpha}-r_{n}^{*}$ will be derived, and some information about the location of poles and zeros of the approximant $r_{n}^{*}$ will be given. Unfortunately the location of some zeros of $r_{n}^{*}$ remains unclear. This lack of more precise knowledge will cause a lot of additional work in $\S \S 4$ and 5 .

We denote by $w_{n}$ the polynomial

$$
\begin{equation*}
w_{n}(z):=\prod_{j=1}^{2 n+2+[\alpha]}\left(z-z_{n j}\right)\hspace{3em} \tag{3.1}
\end{equation*}
$$

where the $z_{n j}$ are the zeros of $e_{n}$ introduced in (2.16). Since $z_{n j} \in(0,1), j=1, \ldots$, $2 n+2+[\alpha]$, we have

$$
\begin{equation*}
\operatorname{sign} w_{n}(z)=(-1)^{[\alpha]} \quad \text { for } z \in \mathbf{R}_{-}:=\{x \in \mathbf{R} \mid x \leqslant 0\} \hspace{3em} \tag{3.2}
\end{equation*}
$$

For formula (3.3) we make the temporary assumption that $-1<\alpha<0$. If $C$ is an integration path in $\mathbf{C} \backslash \mathbf{R}_{-}$surrounding $z$, then from Cauchy's integral formula it follows that the principal branch of $f_{\alpha}$ can be represented as

$$
\begin{equation*}
f_{\alpha}(z)=\frac{1}{2 \pi i} \oint_{C} \frac{\zeta^{\alpha} d \zeta}{\zeta-z}=\frac{\sin \pi \alpha}{\pi} \int_{-\infty}^{0} \frac{|x|^{\alpha} d x}{x-z} \quad \text { for } z \in \mathbf{C} \backslash \mathbf{R}_{-} \hspace{3em} \tag{3.3}
\end{equation*}
$$

The second equality in (3.3) results from moving $C$ towards $\mathbf{R}_{-}$. The second integral exists because of our temporary assumption that the integrand has a zero of order $1-\alpha=$ $1+|\alpha|>1$ at infinity, and a pole of order $\alpha>-1$ at the origin.

The representation (3.3) shows that $f_{\alpha}$ is a Stieltjes function if $\alpha \in(-1,0)$. From the standard theory of rational interpolants to Stieltjes or Markov functions we have rather detailed information about the structure of these interpolants (cf. [11] or [22, Chapter 6.1]). If $\alpha>0$, then the last integral in (3.3) does no longer exist. But, nevertheless, we can deduce results similar to those that hold in the case of Stieltjes functions (see for more details [22, Chapters 6.1-6.3]). In the sequel we assume as before that $\alpha \in \mathbf{R}_{+} \backslash \mathbf{N}$.

Lemma 3. Set $r_{n}^{*}=p_{n} / q_{n}, q_{n}(z)=z^{n}+\ldots \in \mathcal{P}_{n}, p_{n} \in \mathcal{P}_{n+1+[\mathbf{x}]}$. The denominator polynomial $q_{n}$ satisfies the orthogonality relation

$$
\begin{equation*}
\int_{-\infty}^{0} x^{j} q_{n}(x) \frac{|x|^{\alpha} d x}{w_{n}(x)}=0 \quad \text { for } j=0, \ldots, n-1 \hspace{3em} \tag{3.4}
\end{equation*}
$$

The $n$ zeros $\pi_{n, 1}, \ldots, \pi_{n n}$ of $q_{n}$ are all simple and contained in $(-\infty, 0)$. With an appropriate numeration we have

$$
\begin{equation*}
-\infty<\pi_{n, 1}<\ldots<\pi_{n n}<0 \hspace{3em} \tag{3.5}
\end{equation*}
$$

For the approximation error $e_{n}=f_{\alpha}-r_{n}^{*}$ we have the representation

$$
\begin{equation*}
e_{n}(z)=\frac{\sin \pi \alpha}{\pi} \frac{w_{n}(z)}{\left(g_{n} q_{n}\right)(z)} \int_{-\infty}^{0} \frac{\left(g_{n} q_{n}\right)(x)|x|^{\alpha} d x}{w_{n}(x)(x-z)} \quad \text { for } z \in \mathbf{C} \backslash \mathbf{R}_{-}\hspace{3em} \tag{3.6}
\end{equation*}
$$

where $g_{n} \in \mathcal{P}_{n} \backslash\{0\}$ is an arbitrary polynomial.
Remark. Because of (3.2) the measure $\mu_{n}$ defined by

$$
\begin{equation*}
\frac{d \mu_{n}}{d x}(x):=\frac{\sin \pi \alpha}{\pi} \frac{|x|^{\alpha}}{w_{n}(x)} d x, \quad x \in \mathbf{R}_{-}\hspace{3em} \tag{3.7}
\end{equation*}
$$

is positive. Since $w_{n}$ is of degree $2 n+2+[\alpha]$, and since all zeros of $w_{n}$ are contained in $(0,1)$, the mass of $\mu_{n}$ is finite. We have $\operatorname{supp}\left(\mu_{n}\right)=\mathbf{R}_{-}$for all $n \in \mathbf{N}$.

Proof. The interpolation property (2.17) of $r_{n}^{*}$ implies that the expression

$$
\begin{equation*}
\frac{q_{n} f_{\alpha}-p_{n}}{w_{n}}(z) \quad \text { is analytic in } \mathbf{C} \backslash \mathbf{R}_{-} \hspace{3em} \tag{3.8}
\end{equation*}
$$

Let $C$ be a positively oriented, closed integration path in $\mathbf{C} \backslash \mathbf{R}_{-}$surrounding all interpolation points $z_{n j}$, and let $g_{n} \in \mathcal{P}_{n} \backslash\{0\}$. Cauchy's integration formula yields

$$
\begin{align*}
\left(g_{n} \frac{q_{n} f_{\alpha}-p_{n}}{w_{n}}\right)(z) & =\frac{1}{2 \pi i} \oint_{C} g_{n}(\zeta) \frac{q_{n}(\zeta) \zeta^{\alpha}-p_{n}(\zeta)}{w_{n}(\zeta)} \frac{d \zeta}{\zeta-z} \\
& =\frac{1}{2 \pi i} \oint_{C} \frac{\left(g_{n} q_{n}\right)(\zeta) \zeta^{\alpha} d \zeta}{w_{n}(\zeta)(\zeta-z)}-\frac{1}{2 \pi i} \oint_{C} \frac{\left(g_{n} p_{n}\right)(\zeta) d \zeta}{w_{n}(\zeta)(\zeta-z)} \hspace{3em} \tag{3.9}
\end{align*}
$$

for $z \in \operatorname{Int}(C)$. The last term on the last line of (3.9) is identically zero since the integrand is analytic outside of $C$ and has a zero of order $\geqslant 2$ at infinity. Hence, we have

$$
\begin{equation*}
\left(g_{n} \frac{q_{n} f_{\alpha}-p_{n}}{w_{n}}\right)(z)=\frac{1}{2 \pi i} \oint_{C} \frac{\left(g_{n} q_{n}\right)(\zeta) \zeta^{\alpha} d \zeta}{w_{n}(\zeta)(\zeta-z)}\hspace{3em} \tag{3.10}
\end{equation*}
$$

For any $g_{n} \in \mathcal{P}_{n}$ the integrand in (3.10) has a zero of order larger than 1 at infinity. Therefore, in (3.10) we can shrink the integration path $C$ to $\mathbf{R}_{-}$, which yields

$$
\begin{equation*}
\left(g_{n} \frac{q_{n} f_{\alpha}-p_{n}}{w_{n}}\right)(z)=\frac{\sin \pi \alpha}{\pi} \int_{-\infty}^{0} \frac{\left(g_{n} q_{n}\right)(x)}{w_{n}(x)} \frac{|x|^{\alpha} d x}{x-z} \quad \text { for } z \in \mathbf{C} \backslash \mathbf{R}_{-}\hspace{3em} \tag{3.11}
\end{equation*}
$$

From that formula, (3.6) follows immediately.
Taking $g_{n}(z)=z^{j+1}$ with $j=0, \ldots, n-1$ and considering (3.11) near the origin yields

$$
\begin{equation*}
\frac{\sin \pi \alpha}{\pi} \int_{-\infty}^{0} x^{j} q_{n}(x) \frac{|x|^{\alpha} d x}{w_{n}(x)}=0 \quad \text { for } j=0, \ldots, n-1 \hspace{3em} \tag{3.12}
\end{equation*}
$$

which proves (3.4).
We know from (3.7) that the measure $\mu_{n}$ is positive. Since relation (3.12) shows that $q_{n}$ is orthogonal with respect to this positive measure, it follows from the elementary theory of orthogonal polynomials that all zeros of $q_{n}$ are simple and contained in the interior of $\operatorname{supp}\left(\mu_{n}\right)=\mathbf{R}_{-}$(cf. [23, Chapter III]). This proves (3.5).

Since we know that the best approximant $r_{n}^{*}$ has only simple poles, we have the partial fraction representation

$$
\begin{equation*}
r_{n}^{*}(z)=h_{n}(z)+\sum_{j=1}^{n} \frac{\lambda_{n j}}{z-\pi_{n j}} \hspace{3em} \tag{3.13}
\end{equation*}
$$

with $h_{n}$ a polynomial of the form

$$
\begin{equation*}
h_{n}(z)=A_{n} z^{[\alpha]+1}+\ldots \in \mathcal{P}_{[\alpha]+1}\hspace{3em} \tag{3.14}
\end{equation*}
$$

If we multiply the error function $e_{n}=f_{\alpha}-r_{n}^{*}$ by $z-\pi_{n j}, j=1, \ldots, n$, and choose in formula (3.6) $g_{n}:=q_{n} /\left(\cdot-\pi_{n j}\right)$, then we have

$$
\begin{align*}
-\lambda_{n j} & =\left[\left(z-\pi_{n j}\right) e_{n}(z)\right]_{z=\pi_{n j}}=\frac{\sin \pi \alpha}{\pi} \frac{w_{n}\left(\pi_{n j}\right)}{q_{n}^{\prime}\left(\pi_{n j}\right)^{2}} \int_{-\infty}^{0}\left(\frac{q_{n}(x)}{x-\pi_{n j}}\right)^{2} \frac{|x|^{\alpha} d x}{w_{n}(x)} \hspace{3em}  \\
& =\frac{\sin \pi \alpha}{\pi} w_{n}\left(\pi_{n j}\right) \int_{-\infty}^{0} l_{n j}(x)^{2} \frac{|x|^{\alpha}}{w_{n}(x)} d x, \quad j=1, \ldots, n
\tag{3.15}
\end{align*}
$$

where $l_{n j} \in \mathcal{P}_{n-1}$ is the Lagrangian basis polynomial satisfying $l_{n j}\left(\pi_{n i}\right)=\delta_{i j}$ for $i, j=$ $1, \ldots, n$. Formula (3.6) holds only for $z \notin \mathbf{R}_{-}$; however, the extension to $z=\pi_{n j} \in \mathbf{R}_{-}$is possible from both sides of $\mathbf{R}_{-}$for the specific choice of $g_{n}$. Note that the integrand in (3.6) remains bounded if $z$ tends to $\pi_{n i}$ vertically to the real line. From (3.15), the positivity of the measure $\mu_{n}$ in (3.7), and (3.6), it then follows that

$$
\begin{equation*}
(-1)^{[\kappa]+1} \lambda_{n j}>0 \quad \text { for } j=1, \ldots, n \hspace{3em}\tag{3.16}
\end{equation*}
$$

From the error formula (3.6) we can deduce also an expression for the leading coefficient $A_{n}$ in (3.14). We have

$$
% \begin{equation*}
e_{n}(z)=\left(f_{\alpha}-r_{n}^{*}\right)(z)=z^{\alpha}-A_{n} z^{[\alpha]+1}+\mathcal{O}\left(z^{[\alpha]}\right) \quad \text { as } z \rightarrow \infty \hspace{3em} \tag{3.17}
% \end{equation*}
$$

Inserting $g_{n}:=q_{n}$ into formula (3.6) and multiplying by $z^{-[\alpha]-1}$ yields

$$
\begin{align}
A_{n} & =-\left[z^{-[\alpha]-1} e_{n}(z)\right]_{z=\infty}=\frac{\sin \pi \alpha}{\pi} \lim _{z \rightarrow \infty} \frac{w_{n}(z)}{z^{[\alpha]+2} q_{n}(z)^{2}} \int_{-\infty}^{0} \frac{q_{n}(x)^{2}|x|^{\alpha} d x}{w_{n}(x)(1-x / z)} \hspace{3em} \\
& =\frac{\sin \pi \alpha}{\pi} \int_{-\infty}^{0} \frac{q_{n}(x)^{2}}{w_{n}(x)}|x|^{\alpha} d x 
\end{align}\tag{3.18}
$$

which implies together with (3.7) that $A_{n}>0$. From (3.13), (3.16) and (3.18) we deduce the next lemma.

