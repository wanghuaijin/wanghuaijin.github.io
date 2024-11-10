---
title: The theory of minimax approximation
date: 2024-09-08
icon: pen-to-square
article: true
star: true
timeline: true
---
The notes when I read the book 
[Powell 1981](/assets/ref/books/Approximation_Theory_and_Methods.pdf)
in Chapter 7.

You can see the source PDF file at [here](/assets/ref/texfiles/minimax_approximation/minimax.pdf), or the source [Tex](/assets/ref/texfiles/minimax_approximation/minimax.tex) file.
<!-- more -->

## 1. Introduction to minimax approximation

&nbsp; &nbsp; The <b>best minimax approximation</b> from a set $\mathscr{A}$ to a function $f$ in $C[a,b]$ is the element of $\mathscr{A}$ that minimizes the expression
$$
\|f-p\|_{\infty}=\max _{a \leqslant x \leqslant b}|f(x)-p(x)|, \quad p \in \mathscr{A}. \hspace{3em} \tag{1.1}
$$
In this text, we study <b>the conditions</b> that are satisfied by a best approximation, when $\mathscr{A}$ is a linear space.

> &nbsp; &nbsp; If $\mathscr{A}$ is the space $\mathbb{P}_n$ of algebraic polynomials of degree at most $n$, it reduces to a particularly simple form. In this text, we consider a more general case when $\mathscr{A}$ satisfies the *'Haar condition'*. In this case, we consider:
> 1. properties of best minimax approximation, including that the best approximation is unique;
> 2. an excellent method for calculating best approximations, which is called the *exchange algorithm*. 

### Start with a question

&nbsp; &nbsp; The theory that is developed for the case when $\mathscr{A}$ is any finite dimensional linear comes from asking the following question: 
> let $p^*$ be a trial approximation from $\mathscr{A}$ to $f$. Can we find a change to $p^*$ that reduces the maxmimum error of the trial approximation?

&nbsp; &nbsp; In other words, we seek an element $p\in\mathscr{A}$ such that the inequality
$$
\left\|f-\left(p^*+\theta p\right)\right\|_{\infty}<\left\|f-p^*\right\|_{\infty} \hspace{3em} \tag{1.2}
$$
is satisfied for some value of the scalar parameter $\theta$.

### A simple example
&nbsp; &nbsp;
An exmaple is given in Figure 7.1 on Page 73 of the book [Powell 1981](/assets/ref/books/Approximation_Theory_and_Methods.pdf). It suggests that, to discover if a trial approximation is optimal, one only need consider the extreme values of the error function $\{f(x) - p^*(x): a\leqslant x\leqslant b \}.$

<b>In general a best minimax operator from $C[a,b]$ to $\mathscr{A}$ is not a linear operator.</b> <span style="color:red">Why?</span>

## 2. The reduction of the error of a trial approximation

&nbsp;&nbsp; We let $p^*$ be a trial approximation from $\mathscr{A}$ to a function $f$ in $C[a,b]$, and we try to improve the approxiamtionby satisfying condition (1.2). 

**The set of points at which the error function** 
$$
e^*(x) = f(x) - p^*(x), \quad a\leqslant x \leqslant b, \hspace{3em} \tag{1.3}
$$
**takes its extreme values is important, and we call it $\mathscr{Z}_M$.**

It is obvious that this set $\mathscr{Z}_M$ is characterized by the condition 
$$
|e^*(x)| = \|e^*\|_\infty,\quad x\in \mathscr{Z}_M.\hspace{3em} \tag{1.4}
$$

&nbsp;&nbsp; We suppose first that $p^*$ is not optimal. We let $p^*+\theta p$ be a best approxiamtion. Hence the reduction (1.2) is obtained, and the points in $\mathscr{Z}_M$ satisfy the inequality
$$
|e^*(x) -\theta p(x)| < |e^*(x)|,\quad x\in \mathscr{Z}_M. \hspace{3em} \tag{1.5}
$$

<span style="color: Dodgerblue;">Inequality (1.5) holds obviously since our goal is to seek $p$ and $\theta$, started with initial guess $p^*$, to reduce the error $\|e^*(x)\|_\infty$.</span>

Without loss of generality, we assume that $\theta$ is positive. Therefore expression (1.5) shows that, if $x$ is in $\mathscr{Z}_M$, then the sign of $e^*(x)$ is the same as the sign of $p(x)$.
::: details Why
Since we suppose $\theta>0$, then this conclusion reduces to the fact that for real numbers $a$ and $b$
$$
|a-b|<|a|
$$
implies that $a$ is the same as the sign of $b$. 
:::

It follows that $p^*$ is a best minimax approximation from $\mathscr{A}$ to $f$ if there is no function $p$ in $\mathscr{A}$ that satisfies the condition
$$
\left[f(x)-p^*(x)\right] p(x)>0, \quad x \in \mathscr{Z}_{\mathbf{M}}. \hspace{3em} \tag{1.6}
$$
<span style="color: Dodgerblue;">The conclusion of no function $p$ such that (1.6) holds is obtained straightway from $e^*(x)$ is the same as the sign of $p(x)$.</span>

In the remainder of this section the converse result is proved, namely that, if inequality (1.6) holds for some $p\in\mathscr{A}$, then there exists a positive value of $\theta$ that gives the reduction (1.2).

&nbsp;&nbsp; Because of the way in which the exchange algorithm works, we generalize the problem of minimizing $\|f-p\|_\infty$, to the problem of minimizing the expression
$$
\max_{x\in\mathscr{Z}} |f(x)-p(x)|, \quad p\in \mathscr{A}, \hspace{3em} \tag{1.7}
$$
where $\mathscr{Z}$ is any closed subset of $[a.b]$, which may be $[a,b]$ itself, but in the exchange algorithm the set $\mathscr{Z}$ is composed of a finite number of points. The next theorem allows $\mathscr{Z}$ to be general.

**Theorem 1** Let $\mathscr{A}$ be a linear subspace of $C[a,b]$, let $f$ be any function in $C[a,b]$, let $\mathscr{Z}$ be any closed subset of $[a,b]$, let $p^*$ be any element of $\mathscr{A}$, and let $\mathscr{Z}_M$ be the set of points of $\mathscr{Z}$ at which the error $\{|f(x)-p^*(x)|: x\in \mathscr{Z}\}$ takes the maximum value. Then $p^*$ is an element of $\mathscr{A}$ that minimizes express (1.7) if and only if there is no function $p$ in $\mathscr{A}$ that satisfies condition (1.6).

<span style="color: red;">What if $\mathscr{Z}$ being a very local interval on $[a,b]$?</span>

::: details Proof
&nbsp;&nbsp; The remarks made in the first paragraphy of this section prove the 'if' part ot the theorem, when $\mathscr{Z}$ is the whole interval $[a,b]$. It is straightforward to extend these remarks to the case when $\mathscr{Z}$ is a subset of $[a,b]$. 

<span style="color:Dodgerblue;">To be more specific, we prove it again.</span> If there is no function $p$ in $\mathscr{A}$ that satisfies condition (1.6), namely that $\forall p \in \mathscr{A}$ there holds
$$
\text{sign} (e^*(x)) = -\text{sign} (p(x)),\quad \forall x\in \mathscr{Z}_M.
$$
It leads to $\forall p\in\mathscr{A}$ and $\forall \theta>0$, 
$$
|e^*(x) - \theta p(x)| \geqslant |e^*(x)|, \quad x\in \mathscr{Z}_M.
$$
Then 
$$
\max_{x\in\mathscr{Z}_M} |f(x) - p^*(x)|
\leqslant \max_{x\in\mathscr{Z}_M} |f(x) - p(x)|,\quad \forall p\in\mathscr{A}. 
$$
Hence $p^*$ minimizes (1.7), i.e., $\forall p\in\mathscr{A}$,
$$
\begin{aligned}
& \max_{x\in\mathscr{Z}} |f(x) - p^*(x)| = \max_{x\in\mathscr{Z}_M} |f(x) - p^*(x)| \\
 &\leqslant \max_{x\in\mathscr{Z}_M} |f(x) - p(x)| 
  \leqslant \max_{x\in\mathscr{Z}} |f(x) - p(x)|.
\end{aligned}
$$

&nbsp;&nbsp; It remains to show that if $p^*\in \mathscr{A}$ minimizes (1.7), then there is no function $p\in\mathscr{A}$ satisfying (1.6). We prove it by contradiction.
<b>Show that, if $p\in\mathscr{A}$ such that condition (1.6) is obtained, then the inequality holds</b>
$$
\max_{x\in\mathscr{Z}} |e^*(x)-\theta p(x)| < \max_{x\in \mathscr{Z}} |e^*(x)|,\quad \text{for some } \theta>0. \hspace{3em} \tag{1.8}
$$
&nbsp;&nbsp; In order to avoid detailed consideration of the size of $p$ when we find a suitable value of $\theta$, we assume without loss of generality that the condition holds
$$
|p(x)| \leqslant 1,\quad a\leqslant x \leqslant b. \hspace{3em}\tag{1.9}
$$


&nbsp;&nbsp; We have to give particular care to any values of $x$ for which the signs of $e^*(x)$ and $p(x)$ are opposite. Therefore the set $\mathscr{Z}_0$ is defined to contain the elements $x$ that satisfy the condition
$$
p(x) e^*(x)\leqslant 0,\quad x\in \mathscr{Z}.
$$
Because this set is closed (<span style="color:red;">Why?</span>), and because $\mathscr{Z}_0$ and $\mathscr{Z}_M$ have no points in common, the number
$$
d = \max_{x\in \mathscr{Z}_0} |e^*(x)| \hspace{3em}\tag{1.11}
$$
satisfies the bound
$$
d < \max_{x\in \mathscr{Z}} |e^*(x)|. \hspace{3em}\tag{1.12}
$$
If $\mathscr{Z}_0$ is empty, we define $d$ to be zero. We prove that inequality (1.8) is obtained when $\theta$ has the positive value
$$
\theta = \frac{1}{2} \left[ \max_{x\in \mathscr{Z}} |e^*(x)| - d\right ]. \hspace{3em}\tag{1.13}
$$
&nbsp;&nbsp; Because the set $\mathscr{Z}$ is closed, we may let $\xi$ be an element of $\mathscr{Z}$ that satisfies the equation
$$
|e^*(\xi) - \theta p(\xi)| = \max_{x\in\mathscr{Z}} |e^*(x) - \theta p(x) |.
$$
If $\xi$ is in $\mathscr{Z}_0$, the bound 
$$
\max _{x \in \mathscr{X}}\left|e^*(x)-\theta p(x)\right|=\left|e^*(\xi)\right|+|\theta p(\xi)| \leqslant d+\theta
$$
is obtained, where the last term depends on expressions (1.11) and (1.9). Hence condition (1.8) follows from inequality (1.12) and equation (1.13). Alternatively, when $\xi$ is not in $\mathscr{Z}_0$, the signs of the terms $e^*(\xi)$ and $p(\xi)$ are the same, which gives the strict inequality
$$
\left|e^*(\xi)-\theta p(\xi)\right|<\max \left[\left|e^*(\xi)\right|,|\theta p(\xi)|\right].
$$
By the facts that
$$
|e^*(\xi)| \leqslant \max_{x\in\mathscr{Z}}|e^*(x)|,
$$
$$
|\theta p(\xi)| \leqslant \theta = \frac{1}{2} \left[ \max_{x\in \mathscr{Z}} |e^*(x)| - \max_{x\in \mathscr{Z}_0} |e^*(x)| \right]
\leqslant \max_{x\in \mathscr{Z}} |e^*(x)|,
$$
again it follows that condition (1.8) is satisfied. The proof of the theorem is completed.
:::

This theorem justisfies the remark in Sec. 1: to find out if a trial approximation is optimal, one only need consider the extreme values of the error function. Specifically, one should ask if condition (1.6) holds for some function $p$ in $\mathscr{A}$.

::: details Remark
In the algebraic polynomial case, for instance, let $\mathscr{A} = \mathbb{P}_n$. Let $p^*\in\mathbb{P}_n$, we want to seek the condition that there is no function $p\in\mathscr{A}$ such that (1.6) holds. Assume that we could compute the set of the extreme points $\mathscr{Z}_M$. Then only if the number of $\mathscr{Z}_M$ is greater or equal than $n+2$, we could not find $p\in\mathbb{P}_n$ such that (1.6) holds. Otherwise,  the number of $\mathscr{Z}_M$ is less or equal than $n+1$, the implementation of interpolation on these extreme points on $\mathscr{Z}$ obtains the polynomial $p$ of degree $n$.
:::

## 3. The characterization theorem and the Haar condition

&nbsp;&nbsp; If the set $\mathscr{A}$ of approximating functions is the space $\mathbb{P}_n$ of algebraic polynomials of degree at most $n$, then it is rather easy to test wether condition (1.6) can be obtained. We make use of the fact that a function in $\mathbb{P}_n$ has at most $n$ sign changes. Therefore, if the error function $[f(x) - p^*(x)]$ changes sign more than $n$ times as $x$ ranges over $\mathscr{Z}_M$, then $p^*$ is a best approximation. Conversely, if the number of sign changes does not exceed $n$, then we can choose the zeros of a polynomial in $\mathbb{P}_n$ so that condition (1.6) is satisfied. This result is usually called the <b>minimax characterization theorem</b>, and it is stated formally below.

### Haar condition

&nbsp;&nbsp; It is useful to express the theorem in a form that applies to a class of functions that includes polynomials as a special case. <b>The usual way of defining this class is to identify the properties of polynomials that are used in the proof of the characterization theorem.</b> They are the following two conditions:
1. If an element of $\mathbb{P}_n$ has more than $n$ zeros, then it is identically zero.
2. Let $\left\{\zeta_j ; j=1,2, \ldots, k\right\}$ be any set of distinct points in the open interval $(a,b)$, where $k\leqslant n$. There exists an element of $\mathbb{P}_n$ that changes sign at these points, and that has no other zeros. Moreover, there is a function in $\mathbb{P}_n$ that has no zeros in $[a,b]$.

<span style="color: Dodgerblue;">Condition 2 states that there exists two kind of polynomials in $\mathbb{P}_n$ such that only $k$ roots at which sign changes contained in $(a,b)$, or no zeros in $[a,b]$.</span>

3. If a function in $\mathbb{P}_n$ that is not identically zero, has $j$ zeros, and if $k$ of these zeros are interior points of $[a,b]$ at which the function does not change sign, then the number $(j+k)$ is not greater than $n$.

4. Let $\left\{\xi_j : j=0,1, \ldots, n\right\}$ be any set of distinct points in $[a,b]$, and let $\left\{\phi_i : i=0,1, \ldots, n\right\}$ be any basis of $\mathbb{P}_n$. Then the $(n+1)\times(n+1)$ matrix whose elements have the values $\{\phi_i (\xi_j): 0\leqslant i,j \leqslant n\}$ is non-singular.

&nbsp;&nbsp; An $(n+1)-$dimensional linear subspace $\mathscr{A}$ of $C[a,b]$ is said to satisfy the <span style="color:red">'Haar condition'</span> if these four statements remain true when $\mathbb{P}$ is replaced by the set $\mathscr{A}$.

&nbsp;&nbsp; Equivalently, any basis of $\mathscr{A}$ is called a 'Chebyshev set'. 

<b>Spaces that satisfy the Haar conditiion are studied in Appendix A. It is proved that properties 1, 3 and 4 are equivalent, and that these properties imply condition 2.</b>

<b>It is usual to define the Haar condition in terms of the first property.</b> 

Thus, <b>$\mathscr{A}$ satisfies the Haar condition if and only if, for every non-zero $p$ in $\mathscr{A}$, the number of roots of the equation $\{p(x) =0: a \leqslant x \leqslant b\}$ is less than the dimension of $\mathscr{A}$.</b>

### Characterization theorem

**Theorem 2** (Characterization Theorem) *Let $\mathscr{A}$ be an $(n+1)-$dimensional linear subspace of $C[a,b]$ that satisfies the Haar condition, and let $f$ be any function in $C[a,b]$. Then $p^*$ is the best minimax approximation from $\mathscr{A}$ to $f$, if and only if there exist $(n+2)$ points $\left\{\xi_i^* ; i=0,1, \ldots, n+1\right\}$, such that the conditions*
$$
a \leqslant \xi_0^*<\xi_1^*<\ldots<\xi_{n+1}^* \leqslant b, \hspace{3em} \tag{1.17}
$$
$$
\left|f\left(\xi_i^*\right)-p^*\left(\xi_i^*\right)\right|=\left\|f-p^*\right\|_{\infty}, \quad i=0,1, \ldots, n+1, \hspace{3em} \tag{1.18}
$$
*and* 
$$
f\left(\xi_{i+1}^*\right)-p^*\left(\xi_{i+1}^*\right)=-\left[f\left(\xi_i^*\right)-p^*\left(\xi_i^*\right)\right], \quad i=0,1, \ldots, n, \hspace{3em} \tag{1.19}
$$
*are obtained.*
:::: details <b>Proof</b>
$(\Rightarrow)$ Suppose that $p^*$ is the best minimax approximation from $\mathscr{A}$ to $f$. Let $\mathscr{Z}_M$ be the set for which $|f(x)-p^*(x)|$ attains its maximum, i.e.,
$$
\mathscr{Z}_M = \{x^* \in [a,b]: |f(x^*) - p^*(x^*)| = \max_{a\leqslant x \leqslant b} |f(x) - p^*(x)| \}.
$$
We claim that the number of elements in $\mathscr{Z}_M$, denoted as $n(\mathscr{Z}_M)$, is at least $n+2$. Otherwise, if $n(\mathscr{Z}_M) \leqslant n+1$, we can show that there exists a function $p\in\mathscr{A}$ s.t.
$$
[f(x)-p^*(x)] p(x) >0,\quad \forall x\in\mathscr{Z}_M,
$$
which contradicts our assumption by the conclusion in Theorem 1.
::: details <b>Why</b>
Suppose that $\mathscr{Z}_M = \{\xi_1,\xi_2,\cdots,\xi_{n+1}\}$, where $\xi_i\neq\xi_j$ for $i\neq j$. Let $\{\phi_i(x)\}_{i=1}^{n+1}$ be a basis of $\mathscr{A}$, and we assume that $p$ could be expanded as the form
$$
p(x) = \sum_{j=1}^{n+1} \alpha_j \phi_j(x),\quad \text{for some } \alpha_j, \ j=1,2,\cdots,n+1.
$$
Let $p$ satisfy $p(\xi_i) = \mathrm{sign}[f(\xi_i)-p^*(\xi_i)]$, which leads to
$$
p(\xi_i) = \sum_{j=1}^{n+1} \alpha_j \phi_j(\xi_i) = \mathrm{sign}[f(\xi_i)-p^*(\xi_i)], \quad i=1,2,\cdots,n+1.
$$
The linear system has an unique non-zero solution for $\alpha_j$. Thus such a $p(x)$ does exist.
:::
We claim again that $f(x)-p^*(x)$ changes sign at least $n+1$ times as $x$ ranges over $\mathscr{Z}_M$. Otherwise, if $f(x)-p^*(x)$ changes sign at most $n$ times, we suppose that its value at $\xi_1,\xi_2,\cdots,\xi_{n+1} \in \mathscr{Z}_M$ has different signs, i.e., 
$$
f(\xi_i) - p^*(\xi_i) = (-1)^i \lambda \|f-p^*\|_\infty,\quad i=1,2,\cdots,n+1,
$$
where $\lambda = 1\text{ or } -1$. Then we can find $p\in\mathscr{A}$ such that 
$$
[f(\xi_i) - p^*(\xi_i)] p(\xi_i) > 0,\quad i=1,\cdots,n+1,
$$
since any basis of $\mathscr{A}$ constitutes a Chebyshev set.

Hence we have shown that $f(x)-p^*(x)$ changes sign at least $n+1$ times as $x$ ranges over $\mathscr{Z}_M$, which is the sufficient condition of this theorem.

$(\Leftarrow)$ Suppose that $p^*\in\mathscr{A}$ such that $f(x) - p^*(x)$ cahnges sign at least $n+1$ times as $x$ ranges over $\mathscr{Z}_M$. We claim that there is no function $p\in\mathscr{A}$ such that 
$$
[f(\xi_i^*) - p^*(\xi^*_i)] p(\xi_i^*) > 0, \quad i=0,1,\cdots,n+1.
$$
Otherwise, if such $p$ does exist, then the sign of $p(\xi^*_i)$ is as same as the sign of $f(\xi^*_i)-p^*(\xi^*_i)$, i.e.,
$$
\mathrm{sign}(p(\xi^*_i)) = \mathrm{sign}[f(\xi^*_i)-p^*(\xi^*_i)],\quad i=0,1,\cdots,n+1.
$$
By the condition (1.19), we have 
$$
\mathrm{sign}(p(\xi^*_{i+1})) = - \mathrm{sign}(p(\xi^*_i)),\quad i=0,1,\cdots,n.
$$
Then $p(x)$ has at least $n+1$ zeros. By Haar conditions, we obtain $p\equiv 0$, which leads to a contradiction. Hence this claim is proved which implies $p^*$ is the best minimax approximation by virtue of Theorem 1.
::::

### Chebyshev polynomials
One important application of this theorem is to prove the minimum property of Chebyshev polynomials. 
We recall that the Chebyshev polynomial $T_n$ is the polynomial of degree $n$ that is defined on the interval $[-1,1]$ by the equation
$$T_n(x) = \cos(n\theta), x=\cos\theta, 0\leqslant \theta \leqslant \pi.$$
The minimum property is sufficiently useful to be stated as a theorem.

**Theorem 3** *Let the range of $x$ be $[-1,1]$, and let $n$ be any positive integer. The polynomial $2^{1-n}T_n$ is the member of $\mathbb{P}_n$, whose $\infty-$norm is least, subject to the condition that the coefficient of $x^n$ is equal to one.*
::: details <b>Proof</b>
One way of identifying the required polynomial is to solve the problem
$$
\left \{
    \begin{aligned}
        &\text{Find } \{c^*_i: i=0,1,\cdots,n-1\} \text{ s.t.} \\
        &\max_{-1\leqslant x \leqslant 1} \left |x^n + \sum_{i=0}^{n-1} c^*_i x^i \right | \leqslant 
        \max_{-1\leqslant x \leqslant 1} \left |x^n + \sum_{i=0}^{n-1} c_i x^i \right |,\quad \forall c_i.
    \end{aligned}
\right .
$$
We see that this approach is equivalent to finding the best minimax approximation from $\mathbb{P}_{n-1}$ to the function $x^n$ in the interval $[-1,1]$.

It follows from Theorem 7.2 that $(\frac{1}{2})^{n-1} T_n$ is the required polynomial, if the coefficient of $x^n$ is one, and if there exist points $\{\xi_i: i=0,1\cdots,n\}$ in $[-1,1]$ arranged in ascending order, such that the equations
$$
T_n(\xi_i) = (-1)^{n-i} \|T_n\|_\infty,\quad i=0,1,\cdots,n,
$$
hold. The recurrence relation of Tchebyshev polynomials implies that the coefficient of $x^n$ is correct. Moreover, the definition (1.20) shows that equation (1.22) is satisfied if we let each $\xi_i$ have the value $\cos[(n-i)\pi/n]$. The theorem is proved.
:::
### Corollary of Themorem 1

&nbsp;&nbsp; The main reason for letting $\mathscr{Z}$ be any closed subset of $C[a,b]$ in the statement of Theorem 1, is that the exchange algorithm requires the case when $\mathscr{Z}$ contains just $(n+2)$ points. In descriptions of the exchange algorithm it is usual to call such a set of points a 'reference'. We use this term also, and we let $\left\{\xi_i ; i=0,1, \ldots, n+1\right\}$ be the points of the reference. We assume that always these points are in ascending order 
$$
a \leqslant \xi_0<\xi_1<\ldots<\xi_{n+1} \leqslant b. \hspace{3em}
$$
The following corollary of Theorem 1 is used on every iteration of the exchange algorithm.

**Theorem 4** *Let $\mathscr{A}$ be an $(n+1)-$dimensional linear subspace of $C[a,b]$ that satisfies the Haar condition, let $\left\{\xi_i ; i=0,1, \ldots, n+1\right\}$ be a reference, and let $f$ be any function in $C[a,b]$. Then $p^*$ is the function in $\mathscr{A}$ that minimizes the expression*
$$
\max _{i=0,1, \ldots, n+1}\left|f\left(\xi_i\right)-p\left(\xi_i\right)\right|, \quad p \in \mathscr{A}, \hspace{3em} \tag{1.24}
$$
*if and only if the equations*
$$
f\left(\xi_{i+1}\right)-p^*\left(\xi_{i+1}\right)=-\left[f\left(\xi_i\right)-p^*\left(\xi_i\right)\right], \quad i=0,1, \ldots, n, \hspace{3em} \tag{1.25}
$$
*are satisfied.*

::: details <b> Proof</b>
Let $\mathscr{Z} = \{\xi_0,\xi_1,\cdots,\xi_{n+1} \}$, and $\mathscr{Z}_M \subset \mathscr{Z}$ be the set for which $|f(x)-p^*(x)|$ attains its maximum, i.e.,
$$
\mathscr{Z}_M = \{x^*\in \mathscr{Z}: |f(x^*) - p^*(x^*)| = \max_{0\leqslant i\leqslant n+1} |f(\xi_i) - p^*(\xi_i)| \}.
$$
By Theorem 1, $p^*$ is the best minimax approximation over the set $\mathscr{Z}$, i.e.,
$$
\max_{0\leqslant i\leqslant n+1} |f(\xi_i) - p^*(\xi_i) | \leqslant \max_{0\leqslant i \leqslant n+1} |f(\xi_i) - p(\xi_i)|,\quad \forall p\in\mathscr{A},
$$
if and only if there is no function $p\in \mathscr{A}$ such that 
$$
[f(x) - p^*(x)] p(x) >0,\quad \forall x\in\mathscr{Z}_M.
$$
$(\Rightarrow)$ We claim that $\mathscr{Z}_M = \mathscr{Z}$. In fact, if it is not true, then the number of elements in $\mathscr{Z}_M$ is at most $n+1$, and then we can show there exists a function $p\in\mathscr{A}$ such that
$$
[f(x) - p^*(x)] p(x) >0,\quad \forall x\in\mathscr{Z}_M,
$$
which leads to a contradiction. (See the proof of Theorem 2).
Then we proved that $\mathscr{Z}_M = \mathscr{Z}$. Hence, we can show that $f(x)-p^*(x)$ changes sign at least $n+1$ times as $x$ ranges over $\mathscr{Z}_M$. (See the proof of Theorem 2)

$(\Leftarrow)$ We assume that (1.25) holds. Then it is obvious that $\mathscr{Z}_M=\mathscr{Z}$. We can show a proof by contradiction that there is no function $p\in\mathscr{A}$ such that 
$$
[f(x) - p^*(x)] p(x) >0,\quad \forall x\in\mathscr{Z}_M,
$$
holds.
:::

&nbsp;&nbsp; The function $p^*$ that minimizes express (1.24) may be calculated from the equations (1.25). It is usual to let $h$ be the value of $[f(\xi_0)-p^*(\xi_0)]$, and to choose a basis of $\mathscr{A}$, $\{\phi_j: j=0,1,\cdots,n\}$ say. It follows that the coefficients of the function
$$
p^*(x)=\sum_{j=0}^n \lambda_j \phi_j(x), \quad a \leqslant x \leqslant b,
$$
satisfy the equations
$$
f\left(\xi_i\right)-\sum_{j=0}^n \lambda_j \phi_j\left(\xi_i\right)=(-1)^i h, \quad i=0,1, \ldots, n+1,
$$
which is a linear system in the unknows $\left\{\lambda_j ; j=0,1, \ldots, n\right\}$ and $h$.



&nbsp;&nbsp; Because Theorem 7.4 shows that these equations have a solution for all functions $f$ in $C[a,b]$, the matrix of the system is non-singular. Hence only one element of $\mathscr{A}$ minimizes expression (1.24). A more general and more useful method of proving uniqueness is given in the next section.


## 4. Uniqueness and bounds on the minimax error

&nbsp;&nbsp; Suppose that the conditions of Theorem 2 hold, that $p^*$ and $q^*$ are both best minimax approximations from $\mathscr{A}$ to $f$, and that conditions (1.17), (1.18) and (1.19) are satisfied. We let $r^*$ be the function $(p^*-q^*)$, and we consider the numbers
$$
r^*\left(\xi_i^*\right)=\left[f\left(\xi_i^*\right)-p^*\left(\xi_i^*\right)\right]-\left[f\left(\xi_i^*\right)-q^*\left(\xi_i^*\right)\right],\quad i=0,1,\cdots,n+1.
$$
Because $\|f-q^* \|_\infty$ and $\|f-p^*\|_\infty$ are equal, it follows from equation (1.18) that either $r^*(\xi_i^*)$ is zero, or its sign is the same as the sign of $[f(\xi_i^*)-p^*(\xi_i^*)]$.
<span style="color:Dodgerblue">In the second case, it hold that $f(\xi_i^*)-q^*(\xi_i^*)=-[f(\xi_i^*)-p^*(\xi_i^*)].$</span>

Hence equation (1.19) provides information about the signs of the terms of the sequence $\left\{r^*\left(\xi_i^*\right) ; i=0,1, \ldots, n+1\right\}$. <span style="color:red;">It can be deduced from this information that $r^*$ is identically zero. (Why?)</span>

Hence the best minimax approximation from $\mathscr{A}$ to $f$ is unique. The method of proving that $r^*$ is identically zero is a general one that has several applicaitons. Therefore it is stated in the following theorem.

**Theorem 5.** *Let $r$ be a function in $C[a,b]$, and let $\left\{\xi_i ; i=0,1, \ldots, n+1\right\}$ be a reference, such that the conditions*
$$
(-1)^i r\left(\xi_i\right) \geqslant 0, \quad i=0,1, \ldots, n+1,
$$
*are satisfied. Then $r$ has at least $(n+1)$ zeros in $[a,b]$, provided that any double zero is counted twice, where a double zero is a zero that is strictly inside $[a,b]$, at which $r$ does not change sign.*

Hence, we obtain the uniqueness theorem for best approximation in the $\infty-$norm.

**Theorem 6.** *Let $\mathscr{A}$ be a linear subsoace of $C[a,b]$ that satisfies the Haar condition. Then, for any $f$ in $C[a,b]$, there is just one best minimax approximation from $\mathscr{A}$ to $f$.*

&nbsp;&nbsp; Another interesting property of the Haar condition, is that, if $\mathscr{A}$ is any finite-dimensional linear subspace of $C[a,b]$ that does not satisfy the Haar condition, then there are functions $f$ in $C[a,b]$ that have several best approximations in $\mathscr{A}$.

&nbsp;&nbsp; Theorem 5 is also useful for obtaining lower bounds on the least value of expression (1.1). Suppose that an iterative method for calculating a best approximation produces a trial approximation $p^*$, and that the conditions (1.17), (1.18) and (1.19) are almost satisfied. Then we usually have available a reference $\{\xi_i: i=0,1,\cdots,n+1\}$, such that the signs of the terms $\{f(\xi_i)-p^*(\xi_i): i=0,1,\cdots,n+1\}$ alternate. In this case the following theorem applies.

**Theorem 7.** *Let the conditions of Theorem 2 hold, let $p^*$ be any element of $\mathscr{A}$, and let $\{\xi_i: i=0,1,\cdots,n+1\}$ be a reference, such that the condition* 
$$
\operatorname{sign}\left[f\left(\xi_{i+1}\right)-p^*\left(\xi_{i+1}\right)\right]=-\operatorname{sign}\left[f\left(\xi_i\right)-p^*\left(\xi_i\right)\right], i = 0,1,\cdots,n,
$$
*is satisfied. Then the inequalities*
$$
\begin{aligned}
\min _{i=0,1, \ldots, n+1}\left|f\left(\xi_i\right)-p^*\left(\xi_i\right)\right| & \leqslant \min _{p \in \mathscr{A}} \max _{i=0,1, \ldots, n+1}\left|f\left(\xi_i\right)-p\left(\xi_i\right)\right| \\
& \leqslant \min _{p \in \mathscr{A}}\|f-p\|_{\infty} \\
& \leqslant\left\|f-p^*\right\|_{\infty}
\end{aligned}
\hspace{3em} \tag{1.32}
$$
*are obtained. Moreover, the first inequality is strict unless all the numbers $\{|f(\xi_i) - p^*(\xi_i)|: i = 0,1,\cdots,n+1 \}$ are equal.*

It is useful to note that, if $p^*$ is the best minimax approximation from $\mathscr{A}$ to $f$, and if the reference in the statement of the last theorem is the set of points $\{\xi_i^*: i=0,1,\cdots,n+1\}$ that occurs in conditions (1.17), (1.18) and (1.19), then all the inequalities of expression (1.32) are satisfied as equations.