#import "../lib.typ": *

#set text(lang: "zh",region: "tw")

#let cn-font-serif = "Source Han Serif SC"  // 思源宋体
#let en-font-serif = "New Computer Modern"
#let cn-font-sans = "Source Han Sans SC"  // 思源黑体
#let en-font-sans = "New Computer Modern Sans"
#let default-thmprefix(t, color: rgb("#000000")) = {
  text(font: (en-font-sans, cn-font-sans), weight: 650, fill: color)[#t]
}
#let default-thmtitle(t, color: rgb("#000000")) = {
  text(font: (en-font-sans, cn-font-sans), weight: 350, fill: color)[#t]
}
#let default-thmtext(t, color: rgb("#000000")) = {
  let a = t.children
  if (a.at(0) == [ ]) {
    a.remove(0)
  }
  t = a.join()

  text(font: (en-font-serif, cn-font-serif), fill: color)[#t]
}

// 定义定理环境的样式
#let round-box-style(
  prefix: auto,
  title: "",
  full-title: auto,
  fill: luma(500),
  thmtitle: default-thmtitle,
  thmtext: default-thmtext,
  thmprefix: default-thmprefix,
  body,
) = {
  let titlefmt = thmtitle.with(color: white)
  let bodyfmt = thmtext
  let prefixfmt = thmprefix.with(color: white)

  showybox(
    title: [#prefixfmt(prefix) #titlefmt(title)],
    width: 100%,
    radius: 0.3em,
    breakable: false,
    frame: (
      title-color: fill,
      border-color: fill.darken(10%),
    ),
    shadow: (
      color: luma(220),
      offset: 3pt,
    ),
    [
      #set par(first-line-indent: 2em)
      #bodyfmt(body)
    ],
  )
}

#let (definition-counter, definition-box, definition, show-definition) = make-frame(
  "definition",
  theorion-i18n(theorion-i18n-map.definition),
  inherited-levels: 2,
  inherited-from: heading,
  render: round-box-style.with(fill: rgb("#255C99")),
)

#show: show-definition

#definition(title: [勾股定理])[
  在直角三角形中，斜边的平方等于两条直角边的平方和.
]
