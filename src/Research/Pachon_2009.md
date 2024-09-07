---
title: Pachón 2009
date: 2024-09-06
icon: file
article: true
star: true
timeline: true
---
# Barycentric-Remez algorithms for best polynomial approximation in the chebfun system 

[Pachón_2009.pdf](/assets/ref/Pachon_2009.pdf)

Ricardo Pachón $\cdot$ Lloyd N. Trefethen

Received: 8 December 2008 / Accepted: 9 September 2009 / Published online: 10 October 2009
© Springer Science + Business Media B.V. 2009


#### Abstract

The Remez algorithm, 75 years old, is a famous method for computing <span style="color: DodgerBlue;">minimax</span> polynomial approximations. Most implementations of this algorithm date to an era when tractable degrees were in the dozens, whereas today, degrees of hundreds or thousands are not a problem. We present a 21st-century update of the Remez ideas in the context of the chebfun software system, which carries out numerical computing with functions rather than numbers. A crucial feature of the new method is its use of chebfun global rootfinding to locate extrema at each iterative step, based on a recursive algorithm combining ideas of Specht, Good, Boyd, and Battles. Another important feature is the use of the barycentric interpolation formula to represent the trial polynomials, which points the way to generalizations for rational approximations. We comment on available software for minimax approximation and its scientific context, arguing that its greatest importance these days is probably for fundamental studies rather than applications.


<b>Keywords</b> Remez algorithm $\cdot$ Best polynomial approximation $\cdot$ Barycentric interpolation $\cdot$ Chebfun system



## 1 Introduction

This article is devoted to a classic problem of best approximation: Given a continuous function $f$ on the interval $I=[a, b]$, find a function $p^{*}$ in the space $\mathscr{P}_{n}$ of polynomials of degree $\leq n$ such that
\$\$

$$
\begin{equation*}
\left\|f-p^{*}\right\| \leq\|f-p\| \quad \text { for all } p \in \mathscr{P}_{n} \hspace{3em} \tag{1.1}
\end{equation*}
$$

where $\|\cdot\|$ is the supremum norm on $I$. The approximation $p^{*}$ exists and is unique, and is known as the best, uniform, Chebyshev or minimax approximation to $f$. Discussions of this problem can be found in every book on approximation theory $[11, 15,26,30,31,37,42]$.

Starting with Chebyshev himself, the best approximation problem was studied from the second half of the 19th century to the early 20th century, and by 1915 the main results had been established [47]. A second wave of interest came in the 1950s and 1960s when computational aspects were investigated. The focus of much of this work was the algorithm introduced by Evgeny Yakovlevich Remez in a series of three papers published in 1934 [39-41], and in this period were developed a deep understanding of its theoretical properties as well as numerous variations for its practical implementation. In the 1970s <span style="color: DodgerBlue;">the Remez algorithm also became a fundamental tool of digital signal processing, where it was introduced by Parks and McClellan in the context of filter design [36].</span>

The 1970s are a long way back, but today's algorithmic techniques and available software for Remez calculations date mainly to that era. Concerning software, some items of note are

- ACM Algorithm 318, by Boothroyd in 1967 [7]
- ACM Algorithm 414, by Golub and Smith in 1971 [19]
- ACM Algorithm 604, by Sauer in 1983 [43]
- The Remes-difcor algorithm, by Kaufman, Leeming and Taylor [24]
- RATCH/DRATCH from the IMSL library [34]
- E02ACF from the NAG library [33]
- REMES and FIRPM from Matlab's Signal Processing Toolbox [27]

Most of these go back many years and in fact, most of them do not solve the general best approximation problem as posed above but variants involving discrete variables or digital filtering. One can find a few other computer programs in circulation, but overall, it seems that there is no widely-used program at present for computing best approximations. Thus this is a topic that is very widely known among numerical mathematicians and engineers, but without much of a computational footprint.

If one considers applications, apart from signal processing, it is clear that in the early decades of computers minimax approximations played a role in approximation of special functions. For example, both polynomial and rational minimax approximations were used in the design of FUNPACK in the 1970s [12], the predecessor of SPECFUN [13]. This kind of application, however, appears to have faded with the years as computers have become more powerful and desiderata of scope and portability have grown more important than getting the last percentage point of efficiency from an approximation.

We believe that even if best approximations are not at the heart of computational science nowadays, they are such a fundamental idea, so basic a tool of approximation theory, that is desirable to be able to compute them easily. In the present article
we present an algorithm that achieves this, making it possible to compute a best approximation with a single command. For example, here we find the degree 100 best approximation to $e^{|x|}$ in less than a second on a workstation:


``` matlab
>> f = chebfun('exp(abs(x))');
>> tic, p = remez(f,100); toc
    Elapsed time is 0.715704 seconds.
>> norm(f-p,inf)
    ans = 0.002801440898864
```

The further command `plot(f-p)` shows a beautiful curve with 103 points of equioscillation.

Our algorithm has five crucial features:

- Formulation within the chebfun system
- Barycentric Lagrange representation of polynomials
- Analytic formula for the leveled error
- Scaling barycentric weights by capacity
- Location of extrema by recursive Chebyshev rootfinding

The use of chebfun is new and brings many new angles to the problem, as we shall describe. (The reader can find expositions of the chebfun system in [4], [35] and www.comlab.ox.ac.uk/chebfun.) A barycentric representation was introduced previously by Parks and McLellan [36] for trigonometric approximations but may be new for algebraic polynomials, where the new feature of scaling by the logarithmic capacity of the approximation interval becomes crucial for robustness. Finally the method of localization of extrema at each iterative step is the most novel algorithmic feature of our method. In the past, parabolic and other approximations have been used which are fast but may miss extrema. The new approach relies instead on global representations of each error curve and global zerofinding, one of the hallmarks of the chebfun system. This makes possible an exceptionally high degree of reliability.

Section 2 presents the classical Remez algorithm, emphasizing its two main steps: the computation of a trial reference (Sect. 2.1) and a trial polynomial (Sect. 2.2). Section 3 introduces the new barycentric-Remez algorithm together with its chebfun implementation. The codes presented in this section make it easy to explore properties of best approximations. In Sect. 4 we show some of these possibilities. We compare the convergence of best approximants computed with chebfuns to Jackson-type bounds for continuous and Lipschitz continuous functions. Our short and efficient implementation allows us to replicate with little effort some of the computations associated with the disproof given by Varga and Carpenter in 1985 [52] of a conjecture formulated by Bernstein in 1914 for polynomial approximation of $|x|$. We conclude in Sect. 5 with comments on the problem of extending the barycentric-Remez algorithm to rational approximation.

## 2 Classical Remez algorithm

Since the best approximation is unique, we can define the operator that assigns to each continuous function its best polynomial approximation $p^{*}$ of fixed degree. <span style="color: DodgerBlue;">It is well known that this operator, although continuous, is nonlinear (for an example see [26, p. 33]), and so we need iterative methods to compute $p^{*}$.</span> ==The Remez algorithm is one such method.== Other important algorithms are the differential correction algorithms, which rely on ideas of linear programming and are used to solve the discrete version of this problem [2, 24, 38, 45]. We will not mention these methods further in this paper.

We begin our discussion of the Remez algorithm by recalling two theorems that are essential to it. The first was first proved by Borel in 1905 [8], [11, p. 75], [37, p. 77].

<b>Theorem 2.1</b> (Equioscillation property) *A polynomial $p \in \mathscr{P}_{n}$ is the best approximation to $f$ (that is, $p=p^{*}$ ) if and only if there exists a set of $n+2$ distinct points $\left\{x_{i}\right\}_{i=0}^{n+1}$ in I such that*

$$
\begin{equation*}
f\left(x_{i}\right)-p\left(x_{i}\right)=\lambda \sigma_{i}\left\|f-p^{*}\right\|, \quad i=0, \ldots, n+1 \hspace{3em} \tag{2.1}
\end{equation*}
$$

*where $\sigma_{i}:=(-1)^{i}$ and $\lambda=1$ or $\lambda=-1$ is fixed.*

::: details <span style="color:red;"> Why is the Equioscillation property important? </span>
The **equioscillation property** is a defining characteristic of the best minimax approximation. This property ensures that the error between the function and its approximation is **as small as possible over the entire interval**.
:::

![**Fig. 1** Best polynomial approximations (thin lines) of degrees 2, 5, 7 and 10 to $f(x)=\sin (3 \pi x) \exp (x)$ (bold lines) on $[-1,1]$. The dots show the polynomial at the reference and the dashed vertical bars the corresponding errors, of equal lengths and alternating in orientation](https://cdn.mathpix.com/cropped/2024_09_06_6b5d6e7cdd2c261f9ed2g-04.jpg?height=903&width=1185&top_left_y=1080&top_left_x=173)



&nbsp;&nbsp; A set of points $A^{*}:=\left\{x_{i}\right\}_{i=0}^{n+1}$ that satisfies (2.1) is called a *<span style="color:red;"> reference</span>*. Figure 1 shows $p^{*}$ for $f(x)=\sin (3 \pi x) \exp (x), I=[-1,1]$ and $n=2,5,7$ and 10, and the references of $4,7,9$ and $12$ points respectively where $f-p^{*}$ equioscillates. <span style="color:red;">Analogous equioscillation properties hold for best rational, CF and Padé approximations [50].</span>

&nbsp;&nbsp; Theorem 2.1 can be generalized for approximations that satisfy the <span style="color:red;">"Haar condition"</span> [37, p. 77], of which polynomials are a special case. <span style="color:red;">This allows us to look for best approximations in other sets of functions,</span> for example trigonometric polynomials, which are the ones used for the Parks-McClellan algorithm. 

&nbsp;&nbsp; **This paper works only with polynomials.**

&nbsp;&nbsp; The second theorem, proved by de la Vallée Poussin in 1910 [17], establishes an inequality between the alternating error of a trial polynomial and the error of the best approximation [11, p. 77], [37, Theorem 7.7].

**Theorem 2.2** (de la Vallée Poussin) *Let $p \in \mathscr{P}_{n}$ and $\left\{y_{i}\right\}_{i=0}^{n+1}$ be a set of $n+2$ distinct points in $I$ such that $\operatorname{sign}\left(f\left(y_{i}\right)-p\left(y_{i}\right)\right)=\lambda \sigma_{i}, i=0, \ldots, n+1$, with $\sigma_{i}$ and $\lambda$ defined as in Theorem 2.1. Then, for every $q \in \mathscr{P}_{n}$,*

$$
\begin{equation*}
\min _{i}\left|f\left(y_{i}\right)-p\left(y_{i}\right)\right| \leq \max _{i}\left|f\left(y_{i}\right)-q\left(y_{i}\right)\right| \hspace{3em} \tag{2.2}
\end{equation*}
$$

*and in particular,*

$$
\begin{equation*}
\min _{i}\left|f\left(y_{i}\right)-p\left(y_{i}\right)\right| \leq\left\|f-p^{*}\right\| \leq\|f-p\| \hspace{3em} \tag{2.3}
\end{equation*}
$$

&nbsp;&nbsp; Theorem 2.2 asserts that a polynomial $p \in \mathscr{P}_{n}$ whose error oscillates $n+2$ times is "near-best" in the sense that

$$
\begin{equation*}
\|f-p\| \leq C\left\|f-p^{*}\right\|, \quad C=\frac{\|f-p\|}{\min _{i}\left|f\left(y_{i}\right)-p\left(y_{i}\right)\right|} \geq 1 \hspace{3em} \tag{2.4}
\end{equation*}
$$

::: details <span style="color:red;"> Why? </span>
In fact, by (2.3),

$$
\|f-p\| \min _{i}\left|f\left(y_{i}\right)-p\left(y_{i}\right)\right| \leq \|f-p\| \left\|f-p^{*}\right\|.
$$
:::

&nbsp;&nbsp; The Remez algorithm constructs a sequence of trial references $\left\{A_{k}\right\}$ and trial polynomials $\left\{p_{k}\right\}$ that satisfy this alternation condition in such a way that $C \rightarrow 1$ as $k \rightarrow \infty$. At the $k$ th step the algorithm starts with a trial reference $A_{k}$ and then computes a polynomial $p_{k}$ such that

$$
\begin{equation*}
f\left(x_{i}\right)-p_{k}\left(x_{i}\right)=\sigma_{i} h_{k}, \quad x_{i} \in A_{k} \hspace{3em} \tag{2.5}
\end{equation*}
$$

where $h_{k}$ is the leveled error (positive or negative), defined as $h_{k}:=f\left(x_{i}\right)-p_{k}\left(x_{i}\right)$ for all $x_{i} \in A_{k}$. Then, a new trial reference $A_{k+1}$ is computed from the extrema of $f-p_{k}$ in such a way that $\left|h_{k+1}\right| \geq\left|h_{k}\right|$ is guaranteed. This monotonic increase of the leveled error is the key observation in showing that the algorithm converges to $p^{*}$ [37, Theorem 9.3]. In Sect. 2.1 we explain how to compute a trial polynomial and leveled error from a given trial reference, and in Sect. 2.2 we show how to adjust the trial reference from the error of the trial polynomial.

### 2.1 From a trial reference to a trial polynomial

&nbsp;&nbsp; We let $\left\{\phi_{j} ; j=0,1, \ldots, n\right\}$ be a basis of $\mathscr{P}_{n}$ and express the elements of the latter in the form

$$
p(x)=\sum_{j=0}^{n} c_{j} \phi_{j}(x)
$$

A continuous function $f$ and a set $\left\{x_{i}\right\}_{i=0}^{n+1}$ of $n+2$ points uniquely determine a polynomial $p$ and a leveled error $h$ such that (2.5) is satisfied. The conditions (2.5) amount to a linear system of $n+2$ equations in $n+2$ unknowns: $n+1$ parameters to describe the polynomial, plus the unknown $h$ :

$$
\left(\begin{array}{cccc}
\phi_{0}\left(x_{0}\right) & \phi_{1}\left(x_{0}\right) & \cdots & \phi_{n}\left(x_{0}\right)  \\
\phi_{0}\left(x_{1}\right) & \phi_{1}\left(x_{1}\right) & \cdots & \phi_{n}\left(x_{1}\right) \\
\vdots & \vdots & & \vdots \\
\phi_{0}\left(x_{n}\right) & \phi_{1}\left(x_{n}\right) & \cdots & \phi_{n}\left(x_{n}\right) \\
\phi_{0}\left(x_{n+1}\right) & \phi_{1}\left(x_{n+1}\right) & \cdots & \phi_{n}\left(x_{n+1}\right)
\end{array}\right)\left(\begin{array}{c}
c_{0} \\
c_{1} \\
\vdots \\
c_{n}
\end{array}\right)=\left(\begin{array}{c}
f\left(x_{0}\right)+\sigma_{0} h \\
f\left(x_{1}\right)+\sigma_{1} h \\
\vdots \\
f\left(x_{n}\right)+\sigma_{n} h \\
f\left(x_{n+1}\right)+\sigma_{n+1} h
\end{array}\right) \hspace{3em} \tag{2.6}
$$

&nbsp;&nbsp; <span style="color:red;">We emphasize that this is the classical formulation. In the next section we shall recommend different methods for representing $p$ and determining $h$.</span>

### 2.2 From a trial polynomial to a new trial reference

Suppose that for a trial reference $A_{k}$ there is a polynomial $p_{k}$ such that $f\left(x_{i}\right)-$ $p_{k}\left(x_{i}\right)=\sigma_{i} h_{k}$ but $\left|h_{k}\right|<\left\|f-p^{*}\right\|$. The goal is to obtain a new reference $A_{k+1}=$ $\left\{y_{i}\right\}_{i=0}^{n+1}$ where the error of the polynomial $p_{k+1} \in \mathscr{P}_{n}$ equioscillates with leveled error $\left|h_{k+1}\right|>\left|h_{k}\right|$. The key to finding the new reference is Theorem 2.2.

Since $f\left(y_{i}\right)-p_{k+1}\left(y_{i}\right)$ will equioscillate, the right side of (2.2) will be equal to $h_{k+1}$. Thus, to be sure of increasing the leveled error, the replacement of $A_{k}$ by $A_{k+1}$ must satisfy

$$
\begin{equation*}
\left|h_{k}\right| \leq \min _{i}\left|f\left(y_{i}\right)-p_{k}\left(y_{i}\right)\right|, \quad y_{i} \in A_{k+1} \hspace{3em} \tag{2.7}
\end{equation*}
$$

That is, the polynomial $p_{k}$ must oscillate on $A_{k+1}$ (but not necessarily equioscillate) with amplitude greater than or equal to $\left|h_{k}\right|$. If condition (2.7) is satisfied, it follows from (2.2) that the leveled error increases from $p_{k}$ to $p_{k+1}$.

Remez proposed two strategies to achieve this. One is to move one of the points of $A_{k}$ to the abscissa of the global extremum while keeping the sign alternation; the other is to replace all the points of $A_{k}$ by $n+2$ oscillating local extrema satisfying (2.7) and to include in $A_{k+1}$ the abscissa of the global extremum. These strategies are known as the first and second Remez algorithms, respectively.

More specifically, the first Remez algorithm constructs $A_{k+1}$ by exchanging a point $x_{\text {old }} \in A_{k}$ with the global extremum $x_{\text {new }}$ of $f-p_{k}$ in such a way that the alternation of signs of the error is maintained. If $x_{0}<x_{\text {new }}<x_{n+1}$, then $x_{\text {old }}$ is the closest point in $A_{k}$ for which the error has the same sign as at $x_{\text {new }}$. If $x_{\text {new }}<x_{0}$ and the signs of $x_{\text {new }}$ and $x_{0}$ coincide then $x_{\text {old }}$ is $x_{0}$; if $x_{\text {new }}<x_{0}$ but the signs of $x_{\text {new }}$ and $x_{0}$ are different, then $x_{\text {old }}$ is $x_{n+1}$. Similar rules apply if $x_{\text {new }}>x_{n+1}$.

The second Remez algorithm constructs the set $\tilde{A}^{k+1}$ of points in $A^{k}$ and local extrema $x_{r}$ of $f-p_{k}$ such that $\left|\left(f-p_{k}\right)\left(x_{r}\right)\right|>\left|h_{k}\right|$. Then, for each subset of $\tilde{A}^{k+1}$ of consecutive points with the same sign it keeps only one for which $\left|f-p_{k}\right|$ attains the largest value. From the resulting set, $A_{k+1}$ is obtained by choosing $n+2$ consecutive points that include the global extremum of $f-p_{k}$.

Assuming $f$ is twice differentiable, the error of the Remez algorithm decays at a quadratic rate if we measure error at every $n+2$ steps in the case of the first Remez algorithm [37, Sect. 9.4] and at every step in the case of the second [53].

## 3 The new Remez algorithm and its chebfun implementation

We present our algorithm in six subsections. Each of the first five focuses on one of the main features that distinguishes it from previous work, and in the last one we discuss the possibility of using CF approximation for the initial guess.

### 3.1 Formulation within the chebfun system

A major fact about this work is that our algorithm is not a standalone product but part of the chebfun system, which was introduced in its original form by Battles and Trefethen in 2004 [4] and has subsequently developed into a widely capable software system for computing with functions of one real variable. The principle of the chebfun system is that it works with functions themselves rather than with numbers, operating upon them with overloads of familiar Matlab commands for dealing with vectors such as sum, abs, max or diff. Each chebfun is represented by one or more polynomial interpolants through Chebyshev points on subintervals, enabling the system to compute rapidly and to nearly machine precision with almost any piecewise smooth function on a bounded interval. See http://www.comlab.ox.ac.uk/chebfun for more information.

From a user's point of view, this framework changes the nature of possible Remez explorations fundamentally. The command remez in Fig. 2, included in the chebfun system since version 2.0501, produces the chebfun p of the best polynomial approximation of degree $n$ of a chebfun $f$. A single line of code like
> f = chebfun('tanh(10*x)'); plot(f-remez(f,50))

produces an equioscillating error curve in a fraction of a second. It is an easy matter quickly to compare best approximants on the fly of dozens of different degrees, or of dozens of functions.

The generality of the function representation in the chebfun system makes it possible to compute best approximations to even very complicated functions. The output p is of course a polynomial, and it is interesting that in this framework the input f is also a polynomial or a piecewise polynomial. This fact of implementation has important consequences for our method of finding extrema discussed in Sect. 3.5.

```
function [p,err] = remez(f,n); % compute deg n BA to chebfun f
iter = 1; delta = 1; deltamin = delta;
[a,b] = domain(f);
xk = chebpts(n+2); xo = xk; % initial reference
sigma = (-1).^[0:n+1]'; % alternating signs
normf = norm(f);
while (delta/normf > 1e-14) & iter <= 20
    fk = feval(f,xk); % function values
    w = bary_weights(xk);
    h = (w**fk)/(w**sigma);
    if h==0, h = 1e-19; end
    pk = fk - h*sigma;
    p=chebfun(@(x) bary(x, pk,xk,w),n+1);
    e = f - p;
    [xk,err] = exchange(xk,e,h,2);
    if err/normf > 1e5
                [xk,err] = exchange(xo,e,h,1);
    end
    xo = xk;
    delta = err - abs(h);
% stopping value
    if delta < deltamin,
                                    % store poly with minimal norm
                deltamin = delta;
                pmin = p; errmin = err;
    end
    iter = iter + 1;
end
p = pmin; err = errmin;
```

Fig. 2 Code of the Remez algorithm in the chebfun system (slightly but only slightly simplified). The input arguments are a chebfun f and the degree n of the polynomial to be computed and the output arguments are a chebfun $p$ of the best polynomial approximation to $f$ and the error err

### 3.2 Barycentric Lagrange representation of polynomials

The choice of basis $\left\{\phi_{j}\right\}$ for $\mathscr{P}_{n}$ is crucial in the numerical solution of (2.6) [18] for the computation of the trial polynomials. The monomial basis, for example, is a terrible choice: the condition number of the resulting Vandermonde matrix grows exponentially in general [22, p. 417]. The use of Chebyshev polynomials will usually improve matters, but can still result in an ill-conditioned system for arbitrary sets of points [1].

A much better choice, however, is a Lagrange basis: Given a set $\left\{\tilde{x}_{j}\right\}_{j=0}^{n}$ of $n+1$ prescribed interpolation points, our representation of $p(x), x \in I$, is mathematically equivalent to

$$
\begin{equation*}
p(x)=\sum_{j=0}^{n} p\left(\tilde{x}_{j}\right) \ell_{j}(x), \quad \ell_{j}=\frac{\prod_{v=0, v \neq j}^{n}\left(x-\tilde{x}_{v}\right)}{\prod_{v=0, v \neq j}^{n}\left(\tilde{x}_{j}-\tilde{x}_{v}\right)} \hspace{3em} \tag{3.1}
\end{equation*}
$$

Notice that

$$
\ell_{j}\left(\tilde{x}_{i}\right)=\left\{\begin{array}{ll}
1, & j=i  \\
0, & \text { otherwise }
\end{array} \quad i, j=0, \ldots, n\right. \hspace{3em} \tag{3.2}
$$

Notice also that we are now proposing the use of a basis that is not prescribed in advance but depends on the data.

Lagrange interpolation is a fundamental tool in numerical analysis whose success depends on two key choices: the interpolating nodes, and the formula used for implementation. It is well known that the node distributions for which Lagrange interpolation is well conditioned have asymptotic density proportional to $\left(1-s^{2}\right)^{-1 / 2}$, if $s$ is a rescaling of $x$ to $[-1,1]$ [51, Chap. 5], such as the set of Chebyshev points

$$
\begin{equation*}
\tilde{x}_{j}=\frac{1}{2}(a+b)+\frac{1}{2}(b-a) \cos \left(\frac{j \pi}{n}\right), \quad j=0,1, \ldots, n \hspace{3em} \tag{3.3}
\end{equation*}
$$

Besides being ill-conditioned for certain arrays of grid points, Lagrange interpolation also suffers from numerical instability when implemented improperly. Thus it is crucial that we actually work with (3.1) through the representation of the barycentric formula

$$
\begin{equation*}
p(x)=\frac{\sum_{j=0}^{n} \frac{\tilde{w}_{j}}{x-\tilde{x}_{j}} p\left(\tilde{x}_{j}\right)}{\sum_{j=0}^{n} \frac{\tilde{w}_{j}}{x-\tilde{x}_{j}}} \hspace{3em} \tag{3.4}
\end{equation*}
$$

where

$$
\tilde{w}_{j}=\prod_{v \neq j}\left(\tilde{x}_{j}-\tilde{x}_{v}\right)^{-1}, \quad j=0, \ldots, n
$$

are the barycentric weights, a formulation that is stable and fully effective for the evaluation of high-degree polynomials. In particular, Higham has shown that (3.4) is forward stable for point sets with small Lebesgue constant, such as Chebyshev points [23]. For a review of barycentric interpolation formulas, see [6].

### 3.3 Analytic formula for the leveled error

The set of Lagrangian nodes that we use at a fixed step in the barycentric-Remez algorithm is a subset of $n+1$ points from the $(n+2)$-point trial reference $A=$ $\left\{x_{i}\right\}_{i=0}^{n+1}$ omitting, say, the point $x_{j}$. From (3.2) it follows that the matrix of (2.6) is the $(n+1) \times(n+1)$ identity except with an additional $j$ th row inserted whose entries are the values of the various Lagrange functions at the particular point $x_{j}$. Discarding this row, we end up with the system

$$
\begin{equation*}
p\left(x_{i}\right)=f\left(x_{i}\right)+\sigma_{i} h, \quad i=0, \ldots, n+1, i \neq j \hspace{3em} \tag{3.5}
\end{equation*}
$$

The formula (3.9) that we derive below allows one to compute the leveled error $h$ independently of the values $p\left(x_{i}\right)$. Hence, we can compute the values $p\left(x_{i}\right)$ in (3.5) which in turn are used to construct the chebfun of the trial polynomial $p$ with the barycentric formula. Since the barycentric-Remez algorithm does not have to solve system (2.6) but just to compute the values $p\left(x_{i}\right)$ from (3.5), ill-conditioning is not a problem as it may result when working with other basis for $\mathscr{P}_{n}$, even Chebyshev polynomials.

For any basis $\left\{\phi_{j}\right\}$ of $\mathscr{P}_{n}$ it can be shown that $h$ can be found independently of the coefficients $\left\{c_{j}\right\}$ [37, Theorem 9.1]. For the Lagrange basis we can compute explicitly a closed expression without the values $p\left(x_{i}\right)$. Consider the discarded row
of the system (3.5), $p\left(x_{j}\right)+\sigma_{j} h=f\left(x_{j}\right)$, and use Lagrange interpolation on the remaining set of $n+1$ points to compute $p\left(x_{j}\right)$,

$$
\begin{equation*}
\sum_{\substack{i=0 \\ i \neq j}}^{n+1} p\left(x_{i}\right) \ell_{i}^{j}\left(x_{j}\right)+\sigma_{j} h=f\left(x_{j}\right), \quad x_{j} \in A, j=0, \ldots, n+1, j \neq i \hspace{3em} \tag{3.6}
\end{equation*}
$$

where $\ell_{i}^{j}$ is the $i$ th element of the Lagrange basis that uses $A$ as the Lagrange nodes, except for $x_{j}$

$$
\ell_{i}^{j}(x):=\prod_{\substack{v=0 \\ v \neq i, j}}^{n+1} \frac{\left(x-x_{v}\right)}{\left(x_{i}-x_{v}\right)}, \quad x_{i}, x_{v} \in A
$$

Notice that

$$
\begin{equation*}
\ell_{i}^{j}\left(x_{j}\right)=\prod_{\substack{v=0 \\ \nu \neq i, j}}^{n+1} \frac{\left(x_{j}-x_{\nu}\right)}{\left(x_{i}-x_{v}\right)}=\frac{\prod_{v \neq j}\left(x_{j}-x_{v}\right)}{\prod_{\nu \neq i}\left(x_{i}-x_{v}\right)} \cdot \frac{x_{i}-x_{j}}{x_{j}-x_{i}}=-\frac{w_{i}}{w_{j}} \hspace{3em} \tag{3.7}
\end{equation*}
$$

where $\left\{w_{i}\right\}$ are the barycentric weights we would get if we considered all the points $A$ as the Lagrange nodes, i.e.,

$$
\begin{equation*}
w_{j}=\prod_{\substack{v=0 \\ v \neq j}}^{n+1}\left(x_{j}-x_{v}\right)^{-1}, \quad x_{j}, x_{v} \in A \hspace{3em} \tag{3.8}
\end{equation*}
$$

Inserting (3.7) in (3.6), we obtain

$$
-\sum_{\substack{i=0 \\ i \neq j}}^{n+1} p\left(x_{i}\right) w_{i}+\sigma_{j} w_{j} h=f\left(x_{j}\right) w_{j}
$$

Summing over $j$, and noting that $\sum_{j=0}^{n+1} p\left(x_{j}\right) w_{j}=0$, we obtain the compact formula that is used to compute the leveled error in our algorithm,

$$
\begin{equation*}
h=\frac{\sum_{j=0}^{n+1} w_{j} f\left(x_{j}\right)}{\sum_{j=0}^{n+1} \sigma_{j} w_{j}} \hspace{3em} \tag{3.9}
\end{equation*}
$$

It follows from (3.5) and (3.6) that by using this value of $h$, the trial polynomial $p$ of degree $n$ coincides with the polynomial interpolant through the $n+2$-point trial reference $A$. The barycentric weights of this polynomial are (3.8), the ones used to compute $h$ in (3.9). In code listing of Fig. 2, the chebfun of the trial polynomial is computed in the line
$>>=$ chebfun(@(x) bary(x, pk, xk,w), n+1).

The chebfun command bary computes the interpolant at the point x using the barycentric formula for the vectors $\mathrm{pk}, \mathrm{xk}$ and w of length $n+2$ with values $f\left(x_{i}\right)-\sigma_{i} h$, the trial reference $A=\left\{x_{i}\right\}_{i=0}^{n+1}$, and the barycentric weights (3.8), respectively.

### 3.4 Scaling barycentric weights by capacity

Our barycentric-Remez algorithm can not only compute $p^{*}$ with very high degrees but also allows one to compute best approximations in the interval $\left[-10^{6}, 10^{6}\right]$ as easily as in the interval $[-1,1]$. These features require the appropriate scaling of the barycentric weights $w_{j}$.

The scale of $w_{j}$ in (3.8) for an arbitrary set of $n$ nodes in an interval of length $4 C$ grows at least at the rate $C^{-n}$, where the value $C$ is known as the logarithmic capacity of the interval [6, p. 509]. If the length of the interval is 4 , the standard formula for the barycentric weights can be used directly, even for very large $n$. However, when working with high degrees in intervals where the logarithmic capacity is far from one (for example when $n>500$ and $I=[-1,1]$ ), the large values of $w_{j}$ will cause overflow or underflow. To eliminate this risk, we multiply each difference in (3.8) by $C^{-1}$, scaling the barycentric weights roughly to size $O(1)$ and making them representable in floating point arithmetic.

When $n$ is even larger (for example when $n>5000$ and $I=[-1,1]$ ), the computation of $w_{j}$ encounters a new problem: The partial products formed along the way when the products are evaluated, for example from left to right, may overflow or underflow. One solution to this problem would be to order the partial products to compensate, e.g. by a discrete Leja ordering [49]. However in this application we are able to use a simpler solution: rather than multiplying factors, we sum their logarithms. Following these two observations, the barycentric weights (3.8) can be equivalently represented as

$$
w_{j}=\frac{\prod_{v \neq j} \operatorname{sign}\left(x_{j}-x_{v}\right)}{\exp \left(n \log C^{-1}+\sum_{v \neq j} \log \left|x_{j}-x_{v}\right|\right)}, \quad j=0, \ldots, n
$$

This is the formula used by the chebfun command bary_weights to compute these values in an arbitrary interval $[a, b]$ of length $4 C$.

### 3.5 Location of extrema by recursive Chebyshev rootfinding

The problem of updating the trial reference, as explained in Sect. 2.2, is one of optimization: on the error function of the trial polynomial $p_{k}$, find the global extremum or the alternating local extrema. In the context of Remez algorithms, a standard technique to compute these extrema [16] consists of constructing a parabola for each node $x_{k}$ in the reference that interpolates the error at $x_{k}$ and two other points. The vertex of the parabola is then exchanged with the lowest of the three values and the process starts again. Golub and Smith [19], for example, use this strategy in their Remez algorithm. Though they claim that the old nodes in the reference provide a good initial guess for the extrema, they acknowledge the possibility that the parabola method may not yield acceptable values, in which case they switch to a crude search method. They

```
function [xk,norme] = exchange(xk,e,h,method)
rr = [a; roots(diff(e)); b]; \% critical pts of the error
if method == $1 \quad \%$ one-point exchange
    [tmp,pos] = max(abs(feval(e,rr))); pos = pos(1);
else \% full exchange
    pos = find(abs(feval(e,rr))>=abs(h)); \% vals above leveled error
end
$[r, m]=\operatorname{sort}([r r(p o s) ; x k]) ;$
er $=[$ feval (e,rr(pos)); (-1).^(0:length(xk)-1)'*h];
er $=$ er $(m)$;
s = r(1); es = er(1); \% pts and vals to be kept
for i = 2:length(r)
    if sign(er(i)) == sign(es(end)) \&... \% from adjacent pts w/ same
                abs (er(i)) $>$ abs (es (end)) \% sign keep the one w/ largest
            s(end) = r(i); es(end) = er(i); \% val
    elseif sign(er(i)) = sign(es(end)) \% if sign changes, concatenate
            $s=[s ; r(i)] ; e s=[e s ;$ er(i)]; \% pts and vals
    end
end
[norme,idx] = max(abs(es)); \% choose $n+2$ consecutive pts
$\mathrm{d}=\max (i d x$-length $(x k)+1,1) ; \quad$ that include max of error
$\mathrm{xk}=\mathrm{s}(\mathrm{d}: \mathrm{d}+$ length $(\mathrm{xk})-1)$;
```

Fig. 3 Code of the exchange algorithm in the chebfun system (again slightly simplified). The input arguments are a column vector xk with the trial reference $A_{k}$, the chebfun e of the error $f-p_{k}$, the leveled error $h$ and a number method, with values 1 or 2 prescribing the use of the first or the second Remez algorithm respectively. The output arguments are the modified vector xk with the new trial reference $A_{k+1}$ and the norm norme of the new associated error
write "most of the programming effort is involved in the locating the extrema of the error function $\epsilon(x)$ " [19].

In the chebfun system this step is handled completely differently. One of the main features in chebfun is the very efficient root finder roots, originally implemented by Battles [3]. Finding the roots of a smooth chebfun is equivalent to locating the roots of a polynomial in its Chebyshev form, which in turn can be done by computing the eigenvalues of a "colleague" matrix, the elements of which are Chebyshev coefficients. This method is well-conditioned and was discovered independently by Specht [46] and Good [20].

Although this strategy benefits from translating the problem to an eigenvalue problem, for which very robust and fast algorithms exist, it is preferred to work with low-degree matrices arising from low-degree polynomials. Following the key idea by Boyd in [9], the roots command in chebfun recursively splits the polynomial into smaller subintervals until pieces of degree less or equal to one hundred are obtained. Then, the roots of each piece are computed as described above and collected with the roots of all the other pieces. For piecewise smooth chebfuns the strategy is the same, computing the roots of every smooth part and bookkeeping possible roots at breakpoints [35]. The subfunction exchange in Fig. 3 replaces a trial reference using the command roots and the rules presented in Sect. 2.2.

In the chebfun system, locating the global extremum of the error function requires the same computational effort as locating all the local extrema, both of them using the roots command. Hence, our implementation of the second Remez algorithm is usually much faster than that of the first algorithm since the later clearly needs many
more iterations. However, we have seen that for certain functions and values of $n$, one of the steps in the second Remez algorithm constructs a trial polynomial with a very large extremum, located usually near the endpoints. The large norm of the polynomial introduces a very large error in $h$, breaking the computation. A simple way to solve this is to reverse the last step and recompute the trial reference but using the onepoint exchange of the first Remez algorithm. We have seen in our experiments that this strategy usually solves the problem.

### 3.6 CF approximation for initial guess

Since the Remez algorithm is nonlinear, the question arises as to a suitable initial guess: an initial choice of the reference $x_{k}$. One interesting possibility here is to start by computing a near-best approximation to $f$ by the Carathéodory-Fejer (CF) method and derive $x_{k}$ from this. The CF method, based on the singular value analysis of a Hankel matrix of Chebyshev coefficients, goes back to 1982 [21] and is implemented in a command cf in the chebfun system, so such a variation is easy to implement. Since the CF method is not iterative apart from the singular value computation, it is up to 100 times faster than the Remez computation.

For smooth functions $f$ and values of $n$ bigger than 1 or $2, \mathrm{CF}$ approximants are often so close to best approximants that there may be no point in executing the Remez algorithm at all. In the remez code, however, we have decided against using the CF method to generate an initial guess. Instead we rely on the initial guess that has been the standard choice throughout the history of the Remez algorithm: the Chebyshev points (3.3). This choice ensures that the first step of the process executes correctly and that only between 5 and 10 Remez steps are typically needed before the difference $\left\|f-p_{k}\right\|-\left|h_{k}\right|$ becomes sufficiently small, so any improvement from introducing a more complicated CF initial guess would at best be rather modest.

Notice that if $h_{0}$ is below machine precision, the error will not equioscillate on this initial reference and all the values $p\left(x_{i}\right)$ will be close to zero. However the next reference can still be computed by following the exchange rules of the second Remez algorithm as explained in Sect. 2.2.

## 4 Numerical experiments

We can use the function remez to easily compute best polynomial approximations in the chebfun system. As an illustration, we use it to compute $p^{*} \in \mathscr{P}_{10}$ for the functions in Table 1. Numbers are given to 14 digits in the table to aid readers who may wish to make comparisons with our results. The approximations are plotted in Fig. 4.

Table 1 also includes the error of the polynomial interpolant $p_{0}$ through 11 Chebyshev points, which served as the initial trial polynomial for the Remez algorithm, and the error of the best approximation $p^{*}$. Although the former is obviously always larger than the later, we can see in these examples that the improvement due to the Remez algorithm is less than a factor of three, and in general, for any continuous

Table 1 Best approximation errors for nine functions by polynomials of degree 10

| $i$ | $f_{i}$ | $\left\\|f_{i}-p_{0}\right\\|$ | $\left\\|f_{i}-p^{*}\right\\|$ |
| :--- | :--- | :--- | :--- |
| 1 | $\tanh (x+0.5)-\tanh (x-0.5)$ | 0.00000058780531 | 0.00000030009195 |
| 2 | $\sin (\exp (x))$ | 0.00000386118470 | 0.00000178623400 |
| 3 | $\sqrt{x+1}$ | 0.04212512276261 | 0.01978007008380 |
| 4 | $\sqrt{\|x-0.1\|}$ | 0.30512512446096 | 0.11467954016268 |
| 5 | $1-\sin (5\|x-0.5\|)$ | 0.40947166876230 | 0.14320591977421 |
| 6 | $\min \{\operatorname{sech}(3 \sin (10 x)), \sin (9 x)\}$ | 0.71216404197963 | 0.33561414233366 |
| 7 | $\max \{\sin (20 x), \exp (x-1)\}$ | 0.77453305461326 | 0.38723296760148 |
| 8 | $\operatorname{sech}(10(0.5 x+0.3))^{2}+$ | 1.08706818322313 | 0.49987078860783 |
|  | $\operatorname{sech}(100(0.5 x+0.1))^{4}+$ |  |  |
|  | $\operatorname{sech}(1000(0.5 x-0.1))^{6}$ |  | 1.40439492981387 |
|  | $\log (1.0001+x)$ | 2.98370118052234 |  |

![](https://cdn.mathpix.com/cropped/2024_09_06_6b5d6e7cdd2c261f9ed2g-14.jpg?height=1022&width=1200&top_left_y=844&top_left_x=159)
2.98370118052234
1.40439492981387

Fig. 4 Best polynomial approximations of degree 10 (thin lines) to the functions in Table 1 (bold lines)
function and $n=10$, it will always be less than a factor of 3.47 . This is a consequence of the fact that interpolants in $n$ Chebyshev points are "near best" as in (2.4) with $C=2+\frac{2}{\pi} \log n[10]$.

How large can we make $n$ when computing $p^{*} \in \mathscr{P}_{n}$ for a given continuous function? The answer has varied with the years. In one of the papers that introduced his algorithm in 1934, Remez gave the polynomial coefficients of $p^{*}$ for $f(x)=|x|$ for $n=5,7,9,11$ [39]. Twenty-five years later, Stiefel [48], Curtis and Frank [14] and Murnaghan and Wrench [32] applied different techniques to compute best approximations of $\sin ^{-1} x, \tan ^{-1} x, \log x, 2^{x}$ and $\left|x^{5}\right|$ by polynomials of degrees varying between 2 and 18 .

The first computer programs for uniform approximation appeared in the 1960s, and included a Algol code by Golub and Smith [19] and FORTRAN codes by Barrodale and Phillips [2], and by Simpson [45] based on Schmitt's algorithm [44]. They have been used, for example, for Chebyshev curve fitting with $n>20$. More recently, Le Bailly and Thiran [25] reported the computation of best approximants of degrees up to 64 as a step to obtaining best approximants on the unit circle in the complex plane. And higher degree approximations have been computed for particular kinds of functions. Most remarkably for its era, McClellan and Parks [28] comment on experiments they did thirty years ago in their work with Rabiner [29] involving polynomials of degree about 500 in the context of filter design. Rabiner, at Bell Labs, had some powerful computers to work with:
"From our perspective at Rice, it seemed that Larry wanted to set records for the longest optimal filter ever designed. One day we received a printout of the coefficients of a length-1401 filter; this probably would have consumed several days of CPU time on our batch machine at Rice."

In this section we report computations of best polynomial approximations with $n$ in the hundreds and thousands in seconds or at most minutes, using the barycentricRemez algorithm. Compared to other implementations of the Remez algorithm where the construction of the system (2.6) would not be feasible, for example using Chebyshev polynomials as the basis for $\mathscr{P}_{n}$, the barycentric-Remez algorithm never has conditioning problems and allows one to make experiments of these very high degrees.

A collection of results known as the Jackson theorems establish bounds for the error of best polynomial approximation as $n$ increases in terms of the smoothness of $f$. For example, if $f$ satisfies the Lipschitz condition $\left|f\left(x_{1}\right)-f\left(x_{2}\right)\right| \leq C\left|x_{1}-x_{2}\right|$, $x_{1}, x_{2} \in[-1,1]$, then the approximation error is bounded by [37, Theorem 16.5]

$$
\begin{equation*}
\left\|f-p^{*}\right\| \leq \frac{C \pi}{2(n+1)} \hspace{3em} \tag{4.1}
\end{equation*}
$$

The functions $f_{5}, f_{6}, f_{7}$ and $f_{8}$ in Table 1 (among others) are Lipschitz continuous. Using the chebfun command norm( $\operatorname{diff}(\mathrm{f}$ ), inf) we calculated the Lipschitz coefficients, and Fig. 5 shows the best approximation errors for $n$ between 1 and 10,000 and the bound (4.1) for $f_{5}$ and $f_{8}$. The large error of the best approximation to $f_{8}$ in Fig. 5 is consistent with the large Lipschitz constant $C_{8} \approx 7 \times 10^{2}$.

![](https://cdn.mathpix.com/cropped/2024_09_06_6b5d6e7cdd2c261f9ed2g-16.jpg?height=909&width=1183&top_left_y=173&top_left_x=172)

Fig. 5 Error of best polynomial approximations for functions $f_{5}$ and $f_{8}$ (bold lines) compared with the Jackson bounds (4.1) for Lipschitz continuous functions (thin lines). The errors for $f_{6}$ and $f_{7}$, not shown, follow closely the error for $f_{5}$

For functions that do not satisfy a Lipschitz condition, one can establish the bound [37, Theorem 16.5]

$$
\begin{equation*}
\left\|f-p^{*}\right\| \leq \frac{3}{2} \omega_{f}\left(\frac{\pi}{n+1}\right) \hspace{3em} \tag{4.2}
\end{equation*}
$$

where $\omega_{f}$ is the modulus of continuity of $f$, i.e., $\omega_{f}(\delta)=\sup _{\left|x_{1}-x_{2}\right|<\delta} \mid f\left(x_{1}\right)-$ $f\left(x_{2}\right) \mid, x_{1}, x_{2} \in[-1,1]$. For both the functions $f_{3}$ and $f_{4}$, this bound becomes $\frac{3}{2} \sqrt{\pi /(n+1)}$, and in Fig. 6 we compare this quantity with the best approximation errors for $n$ from 1 to 1,000 .

Remez used his algorithm to compute the best approximations to $|x|$ in $[-1,1]$ by polynomials of degrees up to 11 with an accuracy of $10^{-5}$. As reported in one of his 1934 papers [39], the computations were carried out by three female students of the University of Kiev and used the equivalence between best approximants to $|x|$ and $\sqrt{x}$. Since $|x|$ is an even continuous function, the errors for the best polynomial approximation of degree $n$ and $n+1$ are the same, so only odd degrees were computed. Using the overloaded command poly ( p ), where p is the chebfun of the best polynomial approximation, we can check the coefficients published in that paper. For example, with $n=11$, it takes about 0.1 seconds to find that the coefficients $c_{k}$ in the monomial basis $\left\{x^{k}\right\}$ are:

| $k$ | $c_{k}($ Remez [39]) | $c_{k}$ (chebfun) |
| ---: | :---: | ---: |
| 0 | 0.027837 | 0.02784511855 |
| 2 | 4.753770 | 4.75365049278 |
| 4 | -20.646839 | -20.64625015816 |
| 6 | 47.776685 | 47.77533460523 |
| 8 | -49.593272 | -49.59209097049 |
| 10 | 18.709656 | 18.70935603064 |

Evidently Remez's coefficients were accurate to about 4 places.
For this problem of best approximation of $|x|$, much sharper estimates are available than the general bound (4.1). Bernstein [5] proved that there exists a positive constant $\beta$ such that

$$
\lim _{n \rightarrow \infty} n\left\||x|-p^{*}\right\|=\beta
$$

and from numerical experiments he conjectured that

$$
\beta=\frac{1}{2 \sqrt{\pi}}=0.2820947917 \ldots
$$

![](https://cdn.mathpix.com/cropped/2024_09_06_6b5d6e7cdd2c261f9ed2g-17.jpg?height=927&width=1183&top_left_y=1043&top_left_x=172)

Fig. 6 Error of best polynomial approximations for functions $f_{3}$ and $f_{4}$ (bold lines) compared with Jackson bound (4.2) for continuous functions (thin lines). For $f_{3}$ the bound is too pessimistic, since (4.2) does not take into account the difference between singularities of $f$ at the endpoints and in the interior

![](https://cdn.mathpix.com/cropped/2024_09_06_6b5d6e7cdd2c261f9ed2g-18.jpg?height=948&width=1185&top_left_y=172&top_left_x=171)

Fig. 7 Computed values of $n\left\||x|-p^{*}\right\|$ (solid) and Bernstein's conjectured number, $\beta=\frac{1}{2 \sqrt{\pi}}$ (dashed) for values of $n$ up to 10,000 . As shown by Varga and Carpenter, Bernstein's conjecture was false

For seventy years this conjecture was open, until Varga and Carpenter [52] proved that it was false and confirmed this with extensive numerical computations. Among their experiments and results, which included sharper lower and upper bounds for $\beta$, they computed $n\left\||x|-p^{*}\right\|$ for $n$ up to 104 , accurate to nearly 95 decimal places.

The method of Varga and Carpenter requires the use of extended precision. Using the barycentric-Remez algorithm, we were able to compute the same approximations in 30 seconds on a workstation in ordinary IEEE arithmetic, obtaining the same 52 errors as Varga and Carpenter to 15 digits. We also computed the polynomial approximations for degrees up to 1,500 and confirmed the first seven of the fifty digits of $\beta$ that Varga and Carpenter computed by Richardson extrapolation:

$$
\beta \approx 0.2801694 \ldots
$$

We can compute best approximants of higher degrees using the barycentric-Remez algorithm, and in Fig. 7 we compare the errors with Bernstein's conjectured number up to $n=10,000$, illustrating further-as if further illustration were needed!-that the conjecture was false. However, as we mentioned in Sect. 3, polynomial interpolation in arbitrary sets of nodes, including the references in the barycentric-Remez algo-


[^0]:    Communicated by Hans Petter Langtangen.
    R. Pachón $(\boxtimes) \cdot$ L.N. Trefethen
    
    Computing Laboratory, University of Oxford, Parks Rd., Oxford OX1 3QD, UK
    e-mail: ricp@comlab.ox.ac.uk
    L.N. Trefethen
    e-mail: LNT@comlab.ox.ac.uk

