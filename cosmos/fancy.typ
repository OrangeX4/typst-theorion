#import "../utils.typ": *
#import "../deps.typ": showybox

/// A fancy box design inspired by elegantbook style.
/// 
/// - border-color (color): Color of the box border. Default is `orange.darken(0%)`.
/// - title-color (color): Color of the title background. Default is `orange.darken(0%)`.
/// - body-color (color): Color of the box background. Default is `orange.lighten(95%)`.
/// - symbol (symbol): Symbol to display at bottom right. Default is `sym.suit.heart.stroked`.
/// - prefix (content): Prefix text before the title. Default is `none`.
/// - title (string): Title of the box. Default is empty string.
/// - full-title (auto|content): Complete title including prefix. Default is `auto`.
/// - body (content): Content of the box.
/// -> content
#let fancy-box(
  border-color: orange.darken(0%),
  title-color: orange.darken(0%),
  body-color: orange.lighten(95%),
  symbol: sym.suit.heart.stroked,
  prefix: none,
  title: "",
  full-title: auto,
  body,
) = showybox(
  frame: (
    thickness: .5pt,
    radius: 3pt,
    inset: (x: 12pt, top: 7pt, bottom: 12pt),
    border-color: border-color,
    title-color: title-color,
    body-color: body-color,
    title-inset: (x: 10pt, y: 5pt),
  ),
  title-style: (
    boxed-style: (
      anchor: (x: left, y: horizon),
      radius: 0pt,
    ),
    color: white,
    weight: "semibold",
  ),
  breakable: true,
  title: {
    if full-title == auto {
      if prefix != none {
        [#prefix (#title)]
      } else {
        title
      }
    } else {
      full-title
    }
  },
  {
    body
    if symbol != none {
      place(
        right + bottom,
        dy: 8pt,
        dx: 9pt,
        text(size: 6pt, fill: border-color, symbol),
      )
    }
  },
)

/// Create corresponding theorem box.
#let (theorem-counter, theorem-box, theorem, show-theorem) = make-frame(
  "theorem",
  theorion-i18n-map.at("theorem"),
  inherited-levels: 2,
  render: fancy-box,
)

#let (lemma-counter, lemma-box, lemma, show-lemma) = make-frame(
  "lemma",
  theorion-i18n-map.at("lemma"),
  counter: theorem-counter,
  render: fancy-box,
)

#let (corollary-counter, corollary-box, corollary, show-corollary) = make-frame(
  "corollary",
  theorion-i18n-map.at("corollary"),
  inherited-from: theorem-counter,
  render: fancy-box,
)

#let (axiom-counter, axiom-box, axiom, show-axiom) = make-frame(
  "axiom",
  theorion-i18n-map.at("axiom"),
  inherited-levels: 2,
  render: fancy-box,
)

#let (postulate-counter, postulate-box, postulate, show-postulate) = make-frame(
  "postulate",
  theorion-i18n-map.at("postulate"),
  inherited-levels: 2,
  render: fancy-box,
)

#let (definition-counter, definition-box, definition, show-definition) = make-frame(
  "definition",
  theorion-i18n-map.at("definition"),
  inherited-levels: 2,
  render: fancy-box.with(
    border-color: green.darken(20%),
    title-color: green.darken(20%),
    body-color: green.lighten(95%),
    symbol: sym.suit.club.filled,
  ),
)

#let (proposition-counter, proposition-box, proposition, show-proposition) = make-frame(
  "proposition",
  theorion-i18n-map.at("proposition"),
  inherited-levels: 2,
  render: fancy-box.with(
    border-color: blue.darken(30%),
    title-color: blue.darken(30%),
    body-color: blue.lighten(95%),
    symbol: sym.suit.spade.filled,
  ),
)

/// Collection of show rules for all theorem environments
/// Applies all theorion-related show rules to the document
/// 
/// - body (content): Content to apply the rules to
/// -> content
#let show-theorion(body) = {
  show: show-theorem
  show: show-lemma
  show: show-corollary
  show: show-axiom
  show: show-postulate
  show: show-definition
  show: show-proposition
  body
}