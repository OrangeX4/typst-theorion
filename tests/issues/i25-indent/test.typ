/// Test: Issue #25 - theorem indentation with first-line-indent
/// Theorems should NOT be indented even when par.first-line-indent is set
#import "/lib.typ": show-theorion, theorem

#set page(width: 250pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1")
#set par(
  first-line-indent: 1em,
  spacing: 0.65em,
  justify: true,
)

#show: show-theorion

= Theorems

#theorem[
  #lorem(30)

  #lorem(20)
]

#lorem(50)

#theorem[
  #lorem(20)

  #lorem(20)
]

#lorem(20)
