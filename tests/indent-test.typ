/// Test: theorem environments should not be indented when first-line-indent is set
#import "../lib.typ": show-theorion, theorem

#set par(
  first-line-indent: 1em,
  spacing: 0.65em,
  justify: true,
)

#show: show-theorion

= Theorems

#theorem()[
  #lorem(30)

  #lorem(30)
]

#lorem(50)

#theorem()[
  #lorem(20)

  #lorem(20)
]

#lorem(20)
