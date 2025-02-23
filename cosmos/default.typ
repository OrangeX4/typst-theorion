#import "../core.typ": *
#import "../deps.typ": showybox, octique-inline

#let example(
  title: theorion-i18n-map.at("example"),
  body,
) = [#emph(theorion-i18n(title)). #body]

#let remark(
  title: theorion-i18n-map.at("remark"),
  body,
) = [#emph(theorion-i18n(title)). #body]

#let problem(
  title: theorion-i18n-map.at("problem"),
  body,
) = [#emph(theorion-i18n(title)). #body]

#let solution(
  title: theorion-i18n-map.at("solution"),
  body,
) = [#emph(theorion-i18n(title)). #body]

#let conclusion(
  title: theorion-i18n-map.at("conclusion"),
  body,
) = [#emph(theorion-i18n(title)). #body]

#let exercise(
  title: theorion-i18n-map.at("exercise"),
  body,
) = [#emph(theorion-i18n(title)). #body]

#let proof(
  title: theorion-i18n-map.at("proof"),
  qed: sym.square,
  body,
) = [#emph(theorion-i18n(title)). #body#box(width: 0pt)#h(1fr)#sym.wj#sym.space.nobreak$qed$]

/// An emphasized box with yellow styling
///
/// - body (content): Content of the box
/// -> content
#let emph-box(body) = {
  showybox(
    frame: (
      dash: "dashed",
      border-color: yellow.darken(30%),
      body-color: yellow.lighten(90%),
    ),
    sep: (dash: "dashed"),
    breakable: true,
    body,
  )
}

/// A quote box with left border styling
///
/// - body (content): Content to be quoted
/// -> content
#let quote-box(body) = block(
  stroke: (left: 3pt + luma(200)),
  inset: (left: 1em, y: .75em),
  text(luma(100), body),
)

/// A note box with customizable styling and icon
///
/// - fill (color): Color of the border and icon. Default is `rgb("#0969DA")`
/// - title (string|dict): Title text or dictionary for i18n
/// - icon-name (string): Name of the icon to display
/// - body (content): Content of the note
/// -> content
#let note-box(
  fill: rgb("#0969DA"),
  title: theorion-i18n-map.at("note"),
  icon-name: "info",
  body,
) = block(
  stroke: (left: 3pt + fill),
  inset: (left: 1em, top: .5em, bottom: .75em),
  {
    let title-i18n = theorion-i18n(title)
    stack(
      spacing: 1.5em,
      text(
        fill: fill,
        weight: "semibold",
        octique-inline(
          height: 1.2em,
          width: 1.2em,
          color: fill,
          baseline: .2em,
          icon-name,
        )
          + h(.5em)
          + title-i18n,
      ),
      body,
    )
  },
)

#let tip-box = note-box.with(
  fill: rgb("#1A7F37"),
  title: theorion-i18n-map.at("tip"),
  icon-name: "light-bulb",
)

#let important-box = note-box.with(
  fill: rgb("#8250DF"),
  title: theorion-i18n-map.at("important"),
  icon-name: "report",
)

#let warning-box = note-box.with(
  fill: rgb("#9A6700"),
  title: theorion-i18n-map.at("warning"),
  icon-name: "alert",
)

#let caution-box = note-box.with(
  fill: rgb("#CF222E"),
  title: theorion-i18n-map.at("caution"),
  icon-name: "stop",
)
