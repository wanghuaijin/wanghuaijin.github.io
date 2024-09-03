---
title: Test
lang: zh-CN
description: Here is a test
tags:
    - test
    - highlight
prev: true # Will overwrite 'prevLinks' property from themeConfig
article: false
headerDepth: 5
---

# Test

公式：


## Integral Formula





引用这个[<LatexRefByID2 id="integral-formula2"/>](#integral-formula)

### sub section
#### subsub section
##### subsubsub section

<!-- Here is an inline formula: <InlineLatex latexCode="\ref{integral-formula}" /> -->


## Pythagorean Theorem

## 1

## 2

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

```matlab
function b = set(a)
```

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

:::

