/// Test: theorem indentation
#import "/lib.typ": *

#set page(width: 250pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")
#set par(
  spacing: 0.65em,
  justify: true,
)

#show: show-theorion

= No indent

#lorem(20)

#lorem(20)

#proof[
  First theorem body.

  Second paragraph inside theorem - should not be indented.
]

#lorem(20)

#proof[
  Second theorem after text - theorem itself should not be indented.
]

#lorem(20)

#lorem(20)

#pagebreak()

= First paragraph not indented

#set par(first-line-indent: 1em)

#lorem(20)

#lorem(20)

#proof[
  First theorem body.

  Second paragraph inside theorem - should be indented.
]

#lorem(20)

#proof[
  Second theorem after text - theorem itself should not be indented.
]

#lorem(20)

#lorem(20)

#pagebreak()

= All paragraphs indented

#set par(first-line-indent: (amount: 1em, all: true))

#lorem(20)

#lorem(20)

#proof[
  First theorem body.

  Second paragraph inside theorem - should be indented.
]

#lorem(20)

#proof[
  Second theorem after text - theorem itself should not be indented.
]

#lorem(20)

#lorem(20)