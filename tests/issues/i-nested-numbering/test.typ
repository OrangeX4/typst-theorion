/// Test: nested theorem numbering - corollary inside theorem inherits parent number
#import "/lib.typ": *
#import cosmos.fancy: *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Nested Numbering

#theorem()[
  #corollary()[Corollary inside Theorem 1 (should be 1.1.1)]
]

#theorem()[
  #corollary()[Corollary inside Theorem 2 (should be 1.2.1)]
]

= Multiple Corollaries

#theorem()[
  #corollary()[First corollary (2.1.1)]
  #corollary()[Second corollary (2.1.2)]
]
