/// Test: QED placement with block equations, lists, and #qedhere
#import "/lib.typ": show-theorion, set-qed-symbol, qedhere
#import "/cosmos/default.typ": proof

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))

= QED Placement

// 1. QED in block equation at end of proof
#proof[
  The result follows from:
  $ x + y = z $
]

// 2. QED after multiple equations (last one gets QED)
#proof[
  We have:
  $ a = b $
  And also:
  $ c = d $
]

// 3. qedhere for manual placement
#proof[
  This is proven inline. #qedhere
  (This text appears after the QED.)
]

// 4. qedhere inside a list item
#proof[
  - First step.
  - Last step, done. #qedhere
]

// 5. Proof ending with a list (QED in last item automatically)
#proof[
  - First step.
  - Last step.
]

// 6. Nested proofs
#proof[
  Outer proof begin.
  #proof[
    Inner proof.
  ]
  Outer proof end.
]
