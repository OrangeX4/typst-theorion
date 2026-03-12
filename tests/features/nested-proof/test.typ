/// Test: nested proof environments with separate QED symbols
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))

#show: show-theorion

= Nested Proofs

== Simple nested proof

#proof[
  This is the outer proof.
  #proof[
    This is the inner proof.
    Both proofs get their own QED symbol.
  ]
  The outer proof continues and ends here.
]

== Triple nesting

#proof[
  Outer start.
  #proof[
    Middle start.
    #proof[
      Innermost proof.
    ]
    Middle end.
  ]
  Outer end.
]
