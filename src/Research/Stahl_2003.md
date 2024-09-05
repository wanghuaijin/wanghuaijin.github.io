---
title: "Stahl 2003"
date: 2024-09-05
icon: file
article: true
star: true
timeline: true
---

This is the notes about the article:

"Best uniform rational approximation of $x^\alpha$ on $[0,1]$" by Herbert R. Stahl.

<!-- more -->

Let $f_\alpha := x^\alpha$.

Let $\mathcal{P}_n$ denote the set of all polynomials of degree at most $n\in\mathbf{N}$ with real coefficients.

$\mathcal{R}_{mn}$ denote the set of rational functions $\{p/q | p\in \mathcal{P}_n, q \not \equiv 0 \}, m,n\in\mathbb{N}$.

$r_{mn}^* = r_{mn}^*(f_\alpha,[0,1];\cdot) \in \mathcal{R}_{mn}, m,n\in\mathbf{N}$ be the rational best approximant to $f_\alpha$ in the <a href="https://en.wikipedia.org/wiki/Uniform_norm">uniform norm</a> on $[0,1]$.

The minimal approximation error for numerator and denominator degrees at most $m$ and $n$ is denoted by
$$
E_{mn} :=E_{mm}(f_\alpha,[0,1]) = \left\|f_\alpha-r_{m n}^*\right\|_{[0,1]}=\inf _{r \in \mathcal{R}_{m n}}\left\|f_\alpha-r\right\|_{[0,1]}
$$
with $\| \cdot\|_K$ denoting the sup norm on $K\subset \mathbf{R}$, i.e., $\|f(x) \|_K = \sup \{f(x): x\in K \}$.

It is well known that the best approximant $r_{mn}^*$ <b>uniquely</b> exists within $\mathcal{R}_{mn}$ for each $m,n\in\mathbf{N}$.

::: details See the references for details

:::

## Sec. 2

<b>Lemma 1.</b> *If the limit*
$$
\left\|f_\alpha-r_{m n}^*\right\|_{[0,1]}=\inf _{r \in \mathcal{R}_{m n}}\left\|f_\alpha-r\right\|_{[0,1]}
$$
*holds for one $k\in\mathbf{z}$, then it holds for every $k\in\mathbf{z}$.*

:::: details Proof
Set $E_{mn}:=E_{mn}(f_\alpha,[0,1])$. We have $E_{mn} \geq E_{MN}$ if $m\leq M$ and $n\leq N$.
For $k_1,k_2\in\mathbf{Z}, \ d:=k_1-k_2>0$, it follows that 
$$
\begin{aligned}
\tag{2.2}
e^{2 \pi \sqrt{\alpha n}} E_{n+k_2, n} & \geqslant e^{2 \pi \sqrt{\alpha n}} E_{n+k_1, n} \\
& \geqslant e^{2 \pi \sqrt{\alpha(n+d)}} E_{(n+d)+k_2, n+d} e^{2 \pi \sqrt{\alpha}(\sqrt{n}-\sqrt{n+d})}.
\end{aligned}
$$
Because of the estimate
$$
\tag{2.3}
e^{2 \pi \sqrt{\alpha}(\sqrt{n}-\sqrt{n+d})}=e^{2 \pi \sqrt{\alpha n}(1-\sqrt{1+d / n})}=1+\mathcal{O}(1 / \sqrt{n}) \quad \text { as } n \rightarrow \infty.
$$
::: details <span style="color: red;"> Why?</span>
By Tylor expansion, we have 
$$
\exp\left({2\pi\sqrt{\alpha n}(1-\sqrt{1+d/n})}\right) = 1 + 2\pi\sqrt{\alpha n}(1-\sqrt{1+d/n}) + o(\sqrt{\alpha n}(1-\sqrt{1+d/n})).
$$
Along with
$$
2\pi\sqrt{\alpha n}((1-\sqrt{1+d/n})) = 2\pi\sqrt{\alpha n}(1-[1+d/2n+o(1/n)]) = O(1/\sqrt{n}),
$$
and 
$$
o(\sqrt{\alpha n}(1-\sqrt{1+d/n})) = o(1/\sqrt{n})
$$
since 
$$
\sqrt{n}-\sqrt{n+d} = \frac{-d}{\sqrt{n}+\sqrt{n+d}}.
$$
:::

It follows from (2.2) that we have identical limits in (2.1) for $k_1 > k_2$. The case $k_1<k_2$ can be treated in the same way.
::::

Lemma 1 shows that we can use any <span style="color: red;">paradiagonal sequence</span> $\{r^*_{n+k,n}\}_{n\in\mathbf{N}}$ in the proof Theorem 1. It turns out that the sequence $\{r^*_{m_n,n}\}_{n\in\mathbf{N}}$ with numerator degree
$$
 m_n:=n+1+[\alpha], \quad n\in \mathbf{N} 
$$
is suited best for carrying through the proof of Theorem 1.
