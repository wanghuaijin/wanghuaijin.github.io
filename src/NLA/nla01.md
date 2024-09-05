---
title: "NLA: Leacture 1"
icon: file
date: 2024-09-03
order: 1
star: true     # 是否加入 /Homepage.html 侧边栏的文章列表
article: true  # 是否加入 /Homepage.html 中间的文章列表
timeline: true # 是否加入 /Homepage.html 侧边栏的时间线
---
本文主要涉及内积，正交性，以及矩阵范数。
<!-- more -->
## 内积
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在一个定义在数域$\mathbb{F}$（$\mathbb{C}$或$\mathbb{R}$）的线性空间$V$中，我们引入内积(Inner product)的概念:

<b>定义1(内积).</b>
*设$<\cdot,\cdot>$为一个从$\mathbb{V}\times\mathbb{V}$到$\mathbb{F}$的函数，如果它满足以下三个条件，那么我们将称其为内积*。
$\forall \mathbf{x},\mathbf{y},\mathbf{z}\in\mathbb{V}, \forall \alpha\in \mathbb{F}$,

1. *共轭对称*：
$$
<\mathbf{x},\mathbf{y}> = \overline{<\mathbf{y},\mathbf{x}>}
$$
2. *正定性*：
$$
<\mathbf{x}, \mathbf{x}> \geq 0,\quad <\mathbf{x},\mathbf{x}>=0 \Leftrightarrow \mathbf{x}=0
$$
3. *首元线性*：
$$
<\mathbf{x}+\mathbf{y},\mathbf{z}> = <\mathbf{x},\mathbf{z}> + <\mathbf{y},\mathbf{z}>,\quad 
<\alpha \mathbf{x},\mathbf{y} > = \alpha <\mathbf{x},\mathbf{y}>
$$

## 正交性

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 正交性是一个关于给定内积$<\cdot,\cdot>$的概念，即正交由内积产生，如果没有内积就没有正交可言。
- 两个向量$\mathbf{x}$和$\mathbf{y}$称为是*正交*的，如果$<\mathbf{x},\mathbf{y}>=0$.
- 两个向量集合$\mathcal{X}$和$\mathcal{Y}$称为是*正交*的，如果$\forall x\in \mathcal{X}$和$y\in\mathcal{Y}$都有$<\mathcal{x},\mathcal{y}>=0$.
- 一个**不包含零元素**的向量集合$\mathcal{S}$称为是*正交*的，如果$\forall \mathbf{x},\mathbf{y}\in\mathcal{S}$且$\mathbf{x}\neq \mathbf{y}$, 有$<\mathbf{x},\mathbf{y}>=0$. 进一步地，如果$\forall x\in\mathcal{S}$都有$<\mathbf{x},\mathbf{x}>=1$, 那么$\mathcal{S}$称为是*标准正交*的。

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>性质1.</b> 正交集合$\mathcal{S}$中的所有元素都是线性独立的。

### 向量的正交分解

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 给一个线性空间$\mathbb{V}$赋予内积$<\cdot,\cdot>$，可以构成一个内积空间$(\mathbb{V},<\cdot,\cdot>)$. 给定$V$中的一组**标准正交积**$\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n \}$, 那么$\forall \mathbf{v}\in \mathbb{V}$, 有以下的**正交分解**:
$$
\mathbf{v} = \mathbf{r} + <\mathbf{v},\mathbf{q}_1> \mathbf{q}_1 + <\mathbf{v},\mathbf{q}_2>\mathbf{q}_2 + \cdots + <\mathbf{v},\mathbf{q}_n>\mathbf{q}_n,
$$
其中，$\mathbf{r} \in \text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}^{\perp}$. 我们称$<\mathbf{v},\mathbf{q}_i>$为$\mathbf{v}$在$\mathbf{q}_i$方向的分量，$\mathbf{r}$为$\mathbf{v}$正交于子空间$\text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$的分量。

::: details 几何直观
$<\mathbf{v},\mathbf{q}_1> \mathbf{q}_1 + <\mathbf{v},\mathbf{q}_2>\mathbf{q}_2 + \cdots + <\mathbf{v},\mathbf{q}_n>\mathbf{q}_n$为$\mathbf{v}$在$\mathbb{V}$的子空间$\text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$的投影。$\mathbf{r}$为$\mathbf{v}$关于子空间$\text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$的**投影误差**。
:::

::: details 应用
1. $\mathbf{v}$在正交基$\text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$上的投影分量$<\mathbf{v},\mathbf{q}_i>$并不总是一样。有些分量可能“微乎其微”，有些分量可能明显占优。基于这个思路，如果我们去掉这些“微乎其微”的元素，保留占优的元素，就可以在正交基$\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$上选取一组最具“高效”的元素达到较好的逼近（可能减少至20%的子空间维数仍能保留90%的逼近效果）。这便是一种**低秩逼近**的思想。它的应用方面有很多，例如图像压缩，声源定位等。
2. 函数逼近问题，此时$\mathbb{V}$为函数空间。$\mathbf{v}$的正交投影$<\mathbf{v},\mathbf{q}_1> \mathbf{q}_1 + <\mathbf{v},\mathbf{q}_2>\mathbf{q}_2 + \cdots + <\mathbf{v},\mathbf{q}_n>\mathbf{q}_n$是对$\mathbf{v}$本身的一种函数逼近。当误差项$\mathbf{r}$可以随着$n$（子空间维数）的增加而快速减少时，这便是一种有效的逼近。如果$\mathbf{r}$的衰减速度关于$n$是指数级的衰减，那么我们称子空间$\text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$对$\mathbf{v}$的逼近达到**谱精度**。这是最高的收敛速度，此时正交投影$<\mathbf{v},\mathbf{q}_1> \mathbf{q}_1 + <\mathbf{v},\mathbf{q}_2>\mathbf{q}_2 + \cdots + <\mathbf{v},\mathbf{q}_n>\mathbf{q}_n$的有效数字随着$n$的增大而**线性地**增加。将这种函数逼近技术应用于求解偏微分方程，便衍生出一种非常高效的求解方法————谱方法。
:::

<span style="color: DodgerBlue;">Exercise</span>: 如果$\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$不是标准正交，而只是正交时，那么$\mathbf{v}$的正交分解将变为
$$
\mathbf{v} = \mathbf{r} + \frac{<\mathbf{v},\mathbf{q}_1>}{<\mathbf{q}_1,\mathbf{q}_1>} \mathbf{q}_1 + \frac{<\mathbf{v},\mathbf{q}_2>}{<\mathbf{q}_2,\mathbf{q}_2>}\mathbf{q}_2 + \cdots + \frac{<\mathbf{v},\mathbf{q}_n>}{<\mathbf{q}_n,\mathbf{q}_n>}\mathbf{q}_n,
$$
其中，$\mathbf{r} \in \text{span}\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}^{\perp}$.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 虽然无论$\{\mathbf{q}_1,\mathbf{q}_2,\cdots,\mathbf{q}_n\}$是标准正交的还是正交的，$\mathbf{v}$关于该子空间的正交分解在理论上都能够得到相同的结论（只是系数上的差别），但是这个系数会受到内积$<\mathbf{q}_i,\mathbf{q}_i>$显著的影响。当这些内积比较小时，计算所得到的系数会偏大，经过加法以后的舍入误差会导致显著降低有效数字的位数（特别是当两个绝对值较大且符号相反的数相加时）。

### Cauchy-Schwarz不等式
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在线性空间$\mathbb{V}$中给定内积$<\cdot,\cdot>$, 那么$\forall \mathbf{x},\mathbf{y}\in \mathbb{V}$, 有
$$
|<\mathbf{x},\mathbf{y}>| \leq \sqrt{<\mathbf{x},\mathbf{x}>} \sqrt{<\mathbf{y},\mathbf{y}>},
$$
且不等号取等当且仅当$\mathbf{x}$和$\mathbf{y}$线性相关。

::: details 证明
不妨设$\mathbf{y}\neq \mathbf{0}$, 否则结论显然成立。 $\mathbf{x}$关于子空间$\text{span}\{ \mathbf{y} \}$的正交分解为：
$$
\mathbf{x} = \frac{<\mathbf{x},\mathbf{y}>}{<\mathbf{y},\mathbf{y}>} \mathbf{y} + \mathbf{z},
$$
其中$\mathbf{z}\in\text{span}\{\mathbf{y}\}^\perp$. 那么
$$
\mathbf{z} = \mathbf{x} - \frac{<\mathbf{x},\mathbf{y}>}{<\mathbf{y},\mathbf{y}>} \mathbf{y},\quad \text{且}\ 
<\mathbf{z},\mathbf{z}> \geq 0.
$$
显然，
$$
<\mathbf{z},\mathbf{z}> \geq 0 \quad \Leftrightarrow \quad \sqrt{<\mathbf{x}, \mathbf{x}> <\mathbf{y},\mathbf{y}>} \geq |<\mathbf{x},\mathbf{y}>|,
$$
当且仅当$\mathbf{z}=\mathbf{0}$, 这等价于$\mathbf{x}$与$\mathbf{y}$线性相关，上式等号取等。
:::

## 范数
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在一个定义在数域$\mathbb{F}$（$\mathbb{C}$或$\mathbb{R}$）的线性空间$V$中，我们引入范数(Norm)的概念:

<b>定义2(范数).</b>
设$\|\cdot \|$为一个从$\mathbb{V}$到$\mathbb{F}$的函数，如果它满足以下三个条件，那么我们将称其为*内积*。
$\forall \mathbf{x},\mathbf{y},\mathbf{z}\in\mathbb{V}, \forall \alpha\in \mathbb{F}$,

1. 正定性：
$$
\| \mathbf{x} \| \geq 0,\quad \text{且} \|\mathbf{x} \| =0 \ \Leftrightarrow \ \mathbf{x}=\mathbf{0};
$$
2. 正其次性：
$$
\| \alpha \mathbf{x} \| = |\alpha| \|\mathbf{x} \|;
$$
3. 三角不等式：
$$
\|\mathbf{x} + \mathbf{y} \| \leq \| \mathbf{x} \| + \|\mathbf{y} \|.
$$

<span style="color: DodgerBlue;">Exercise</span>: 在线性空间$\mathbb{V}$中定义内积$<\cdot,\cdot>$, 我们令$\|\cdot \| = \sqrt{<\cdot, \cdot>}$, 那么

- $\|\cdot \|$是一个范数（称为由内积诱导的范数）;
- 满足平行四边形法则(Parallelogram law):
$$
\| \mathbf{x} + \mathbf{y} \|^2 + \|\mathbf{x} - \mathbf{y} \|^2 = 2\|x\|^2 + 2\|\mathbf{y}\|^2;
$$
- 对于正交的集合$\{\mathbf{q}_1,\mathbf{q}_2,\cdots, \mathbf{q}_n \}$有
$$
\left \| \sum_{i=1}^n \mathbf{q}_i \right \|^2 = \sum_{i=1}^n \|\mathbf{q}_i \|^2.
$$

::: details 证明
:::

<b>定理(有限维空间中的范数等价).</b> 设有限维线性空间$\mathbb{V}$, 对于任意的两个范数$\|\cdot\|_\alpha$和$\| \cdot\|_\beta$, 总是存在正的常数$a>0$和$b>0$（仅依赖于范数）使得
$$
a\| \mathbf{x} \|_\beta \leq \| \mathbf{x} \|_\alpha \leq b \|\mathbf{x} \|_\beta,\quad \forall \mathbf{x} \in \mathbb{V}.
$$
::: details 证明
取$\mathbb{V}$的一组基$\{ \mathbf{v}_i \}$, 对任意的$\mathbf{x}=\sum_{i} x_i \mathbf{v}_i$, 定义范数$\| \mathbf{x}\|= \sum_{i} |x_i|$. 那么由于
$$
\|\mathbf{x} \|_\alpha = \left \|\sum_i x_i \mathbf{v}_i \right \|_\alpha \leq \sum_i |x_i| \|\mathbf{v}_i \|_\alpha \leq \|\mathbf{x}\|\cdot \max_i \|\mathbf{v}_i \|_\alpha,
$$
我们知道$\|\cdot \|_\alpha$是一个连续函数（因为$\| \cdot\|$也是连续的），因此它在单位球面$\{\mathbf{x}\in\mathbb{V}: \|\mathbf{x}\|=1 \}$上可以取到最大值和最小值（因为单位球面是紧集）。从而，$\forall \mathbf{x}\in \mathbb{V}$, $\frac{\mathbf{x}}{\|\mathbf{x} \|}$属于这个单位球面, 从而存在常数使得
$$
c \| \mathbf{x}\| \leq  \| \mathbf{x} \|_\alpha \leq C \| \mathbf{x}\|.
$$
同理有$c^\prime \|\mathbf{x} \| \leq \|\mathbf{x}\|_\beta \leq C^\prime \|\mathbf{x}\|$, 因此
$$
\frac{c}{C^\prime}\|\mathbf{x}\|_\beta \leq \|\mathbf{x} \|_\alpha \leq \frac{C}{c^\prime} \|\mathbf{x} \|_\beta.
$$
:::
范数是对线性空间中元素的一种度量，因此我们可以定义线性空间中序列的收敛：设$\{ \mathbf{x}_k \} \subset \mathbb{V}$, 我们称$\mathbf{x}_k$收敛于$\mathbf{x}$（记为$\mathbf{x}_k \to \mathbf{x}$）如果满足$\lim_{k\to \infty} \|\mathbf{x}_k - \mathbf{x} \| = 0$.

### 向量范数

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 考虑欧氏空间$\mathbb{C}^m$, 取$\mathbf{x} = [x_1,x_2,\cdots,x_m]^\text{T} \in \mathbb{C}^m$. 

#### $L_p$范数

$$
\|\mathbf{x} \|_1 = \sum_{i=1}^m |x_i|.
$$
$$
\|\mathbf{x} \|_2 = \left (\sum_{i=1}^m |x_i|^2 \right )^\frac{1}{2} = \sqrt{\mathbf{x}^* \mathbf{x}}.
$$
$$
\|\mathbf{x}\|_\infty = \max_{1\leq i\leq m} |x_i|.
$$
$$
\|\mathbf{x}\|_p = \left( \sum_{i=1}^m |x_i|^p \right )^\frac{1}{p}, \quad (1\leq p  < \infty).
$$

<span style="color: DodgerBlue;">Note</span>: $\lim_{p\to\infty} \|\mathbf{x} \|_p = \|\mathbf{x} \|_\infty$.

<span style="color: DodgerBlue;">Minkowski's inequality</span>: $\|\mathbf{x} +\mathbf{y}\|_p\leq \|\mathbf{x}\|_p + \|\mathbf{y} \|_p$.

<span style="color: DodgerBlue;">范数的等价性</span>: 考虑$L_1, L_2, L_\infty$. 
$$
\begin{aligned}
& \| \mathbf{x} \|_2 \leq \|\mathbf{x}\|_1 \leq \sqrt{m} \|\mathbf{x} \|_2, \\
& \|\mathbf{x} \|_\infty \|\mathbf{x} \|_2 \leq \sqrt{m} \|\mathbf{x} \|_\infty, \\
& \| \mathbf{x} \|_\infty \leq \|\mathbf{x} \|_1 \leq m \|\mathbf{x}\|_\infty.
\end{aligned}
$$
::: details 证明
不会...
:::

#### 加权范数

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设$\|\cdot\|$为$\mathbb{C}^m$的一个范数，$\mathbf{W} = \text{diag}\{w_1,\cdots,w_m\}, w_i\neq 0$, 为一个非奇异对角矩阵，那么
$$
\|\mathbf{x}\|_\mathbf{W} = \|\mathbf{W} \mathbf{x}\|
$$
构成一个*加权*范数。例如，加权$L_2$范数：
$$
\| \mathbf{x} \|_\mathbf{W} = \|\mathbf{W} \mathbf{x} \|_2 = \left (\sum_{i=1}^m  |w_ix_i|^2 \right )^\frac{1}{2}.
$$

#### 对偶范数

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设$\|\cdot\|$为$\mathbb{C}^m$的一个范数，欧几里得内积$<\cdot,\cdot>$，那么$\|\cdot\|$的*对偶*范数定义为
$$
\|\mathbf{x} \|^\prime = \sup_{\mathbf{y}\in\mathbb{C}^m,\ \|\mathbf{y}\|=1} |<\mathbf{x},\mathbf{y}>|.
$$

<span style="color: DodgerBlue;">Exercise</span>: 如果$p,q\in [q,\infty]$满足$1/p+1/q=1$, 那么$\|\cdot \|_p^\prime = \|\cdot\|_q$.

<span style="color: DodgerBlue;">Hölder不等式</span>: $|<\mathbf{x},\mathbf{y}>| \leq \|\mathbf{x}\|_p \|\mathbf{y} \|_q$.

### 矩阵范数