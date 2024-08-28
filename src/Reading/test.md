---
title: Test
lang: zh-CN
description: Here is a test
tags:
    - test
    - highlight
prev: true # Will overwrite 'prevLinks' property from themeConfig
article: false

---

# Test

公式：

<LatexCount @updateCounter="counter = $event" />
<!-- <LatexRenderer :latexCode="'\\frac{a}{b} \\tag{' + counter + '}' id = 'ref1' " :counterValue="counter"/> -->


<!-- <LatexCount @updateCounter="counter = $event" /> -->
<!-- <LatexRenderer :latexCode="'\\frac{a}{b} \\tag{' + counter1 + '}' id = 'ref2' " :counterValue="counter1"/> -->

## Integral Formula

<LatexRenderer
latexCode="\int_{a}^{b} x^2 \mathrm{d} x" id="integral-formula1"
/>


<LatexRenderer2 latexCode="\int_{a}^{b} x^2 \mathrm{d} x"
id="integral-formula2"
tag="3"/>

<template>
  <LatexRenderer3
    latexCode="\int_{a}^{b} x^2 \mathrm{d} x"
    id="integral-formula3"
  >
    <template v-slot:tag>
      <LatexCount/>
    </template>
  </LatexRenderer3>
</template>


<LatexRefByID2 id="integral-formula2"/>


引用这个[<LatexRefByID2 id="integral-formula2"/>](#integral-formula)


<!-- Here is an inline formula: <InlineLatex latexCode="\ref{integral-formula}" /> -->


## Pythagorean Theorem

## 1

## 2

<LatexCount/>

<LatexCount/>
zhe

s 

sf

sfa

sf 

asf 
## s3
<!-- Here is some [{{ $frontmatter.ref1 }}](#1) text with inline LaTeX: <LatexRenderer latexCode="x^2 + y^2 = z^2" id="pythagorean-theorem"/> -->

``` matlab
function b = get(a)
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
```
<code-group>
<code-block title="Get">
``` matlab
function b = get(a)
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
    for i = 1 : 10
        b=a+1;
    end
```
</code-block>

<code-block title="Set">
```matlab
function b = set(a)
```
</code-block>
</code-group>


# Example Page

# markdown pdf

[Download PDF](/quadrature1.pdf)


The value of myVariable is: {{ $frontmatter.ref1 }}

<iframe src="/quadrature1.pdf" width="1000" height="1000"></iframe>

::: tip see
<span style="color: red;">This is a red text inside the tip container.</span>
:::


<!-- PDF: <vue-pdf src="quadrature1.pdf" /> -->

# PDF 示例




::: tip
This is a details block, which does not work in IE / Edge
:::

::: details Click me to view the code
```js
console.log('Hello, VuePress!')
```
:::

::: details Click me to view the proof
<LatexRenderer2 latexCode="\int_0^1 f(x)\mathrm{d} x = 1"
id="integral-formula2"
tag="2"/>
Here is the $f(x)$:
<LatexRenderer2 latexCode="f(x) = \int_{a}^{b} x^t \mathrm{d} t"
id="integral-formula2"
tag="3"/>
:::

