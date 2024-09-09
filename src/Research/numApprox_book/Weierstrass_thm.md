---
title: Weierstrass Theorem
date: 2024-09-08
icon: pen-to-square
article: true
star: true
timeline: true
---

&nbsp;&nbsp; In the approximation of the function 
$$
f(x) = \frac{1}{1+x^2},\quad -5\leqslant x \leqslant 5, \tag{1.1}
$$
by polynomials of various degree, one of the efficient method is that each polynomial was calculated by Lagrange interpolations. 

<b>However, we found that, for equally spaced interpolation points, increasing the degree of the polynomial makes the accuracy of the approximation worse.</b>

For the Chebyshev interpolation points, the calculated polynomial approximations converge uniformly to (1.1).

&nbsp;&nbsp; It is interesting to ask whether there are functions in $C[a,b]$ that are so **awkward** that, even if Chebyshev interpolation points are used, the Lagrange interpolation method for polynomials of higher and higher degree gives a sequence of approximations that fails to converge uniformly. It is proved that such awkward function do exist.

<b>Interpolation with Chebyshev points does not work always on $C[a,b]$.</b>

<hr>

**Theorem** (Weierstrass) *For any $f\in C[a.b]$ and for any $\varepsilon >0$, there exists an algebraic polynomial of the form*
$$
p(x) = c_0 + c_1 x + \cdots + c_n x^n,\quad a\leqslant x \leqslant b,
$$
*such that the bound*
$$
\| f- p\|_\infty \leqslant \varepsilon
$$
*is satisfied.*

<hr>

<b>*proof.*</b> In Bernstein's constructive method. Without loss of generality, we suppose the interval is $[a,b] = [0,1]$. In fact, we can transform $x\in [0,1]$ to $t\in[a,b]$ by the following transformation:
$$
t = (b-a) x + a.
$$

&nbsp;&nbsp; For given $f(x) \in C[0,1]$, we construct the following polynomials:
$$
B^f_n(x) = \sum_{k=0}^n f\left( \frac{k}{n} \right ) \binom{n}{k} x^k (1-x)^{n-k}.
$$
It is obvious that $B^f_n(x)$ is a polynomial of degree $n$.

With the aim of prove Weierstrass theorem, we utalize the formula:
$$
\sum_{k=0}^n (nx-k)^2 \binom{n}{k} x^k (1-x)^{n-k} = nx(1-x). 
$$
::: details Validation of this formula

:::

&nbsp;&nbsp; For any $x\in [0,1]$ and a positive integer $n$, let
$$
\varepsilon_n(x) = \max_{k\in S_{n,x}} \left | f(x) - f\left( \frac{k}{n}\right ) \right |,
$$
where $S_{n,x} = \{k\in \mathbb{Z}^+: |{k}/{n} - x| < n^{-1/4} \}$.

&nbsp;&nbsp; By the uniform continuity, there exists a series of $\varepsilon_n > 0$, independed of $x$, such that
$$
\varepsilon_n(x) < \varepsilon_n, \quad \text{and} \ \varepsilon_n \to 0 \ \text{as} \ n\to\infty.
$$

&nbsp;&nbsp; We denote $\lambda_{n,k(x)}$ by
$$
\lambda_{n, k}(x)=\binom{n}{k} x^k(1-x)^{n-k}.
$$
Let 
$$
\begin{aligned}
f(x)-B_n^f(x)= & \Sigma^{\prime}\left[f(x)-f\left(\frac{k}{n}\right)\right] \lambda_{n, k}(x) \\
& +\Sigma^{\prime \prime}\left[f(x)-f\left(\frac{k}{n}\right)\right] \lambda_{n, k}(x),
\end{aligned}
$$
where $\Sigma^{\prime}$ and $\Sigma^{\prime \prime}$ are the sums with respect to $k$ in the following sense, respectively,
$$
|k-n x|<n^{3 / 4},\quad |k-n x| \geqslant n^{3 / 4}.
$$
Let $M = \max |f(x)|$, it follows that
$$
\begin{aligned}
\left|f(x)-B_n^f(x)\right| & <\Sigma^{\prime} \varepsilon_n \lambda_{n, k}(x)+2 M \Sigma^{\prime \prime} \lambda_{n, k}(x) \\
& <\varepsilon_n+2 M \Sigma^{\prime \prime} \lambda_{n, k}(x),
\end{aligned}
$$
With the formula (1.2), we have 
$$
n^{3 / 2} \sum^{\prime \prime} \lambda_{n, k}(x) \leqslant \sum_{k=0}^n(k-n x)^2 \lambda_{n, k}(x)=n x(1-x) \leqslant \frac{n}{4}.
$$
Hence, 
$$
\begin{array}{c}
\sum^{\prime \prime} \lambda_{n, k}(x) \leqslant \frac{1}{4}\left(\frac{1}{n}\right)^{1 / 2} \\
\left|f(x)-B_n^f(x)\right|<\varepsilon_n+\frac{M}{2}\left(\frac{1}{n}\right)^{1 / 2}.
\end{array}
$$
Let $n\to\infty$ completing the proof.