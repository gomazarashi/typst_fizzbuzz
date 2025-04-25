#set text(lang: "ja") // 言語を日本語に設定
#set page(paper: "a4", margin: (x: 20mm, y: 25mm)) // 用紙サイズをA4に設定
#set text(font: ("New Computer Modern", "Harano Aji Mincho"), size: 10pt) // フォントを設定
#show figure.where(kind: table): set figure.caption(position: top) // 表におけるキャプションを上部に表示するよう設定

#show heading: set text(font: "Harano Aji Gothic", weight: 500)
#set heading(numbering: "1.1.")
#import "@preview/codelst:2.0.1": *

#show raw: set text(font: ("DejaVu Sans Mono", "Harano Aji Gothic"))
#set par(first-line-indent: 1em) // 行頭の字下げを1emに設定


= TypstでFizzBuzz
== for文

#for i in (1, 2, 3, 4, 5) {
  [#i ]
}
\
\
#range(5)\
#range(1, 7)\
#range(2, step: 3, 20)
\
\
== if文
#let x = 3
#let y = 5
#if x == y {
  "xとyは等しい"
} else if x < y {
  "xはyより小さい"
} else {
  "xはyより大きい"
}

== calc.rem
#let x = 10
#let y = 3
#let z = calc.rem(x, y)

xをyで割った余りは#z です。

\
#let x = 10
#let y = 3
#if calc.rem(x, y) == 0 {
  "xはyで割り切れる"
} else {
  "xはyで割り切れない"
}
#pagebreak()
== FizzBuzz
#for i in range(1, 101) {
  if ((calc.rem(i, 3) == 0) and (calc.rem(i, 5) == 0 )){
    [FizzBuzz#h(1em)]
  } else if calc.rem(i, 3) == 0 {
    [Fizz#h(1em)]
  } else if calc.rem(i, 5) == 0 {
    [Buzz#h(1em)]  
  } else {
    [#i#h(1em)]
  }
}