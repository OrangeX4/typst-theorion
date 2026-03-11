/// Test: proof environment with QED symbol
#import "/lib.typ": show-theorion, set-qed-symbol, set-result
#import "/cosmos/simple.typ": solution, problem, show-problem
#import "/cosmos/default.typ": proof

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#show: show-theorion
#show: show-problem

= Proof Environments

#proof[
  This is a standard proof with default QED symbol.
]

#proof(qed: sym.square.stroked)[
  Custom QED symbol.
]

// Test set-qed-symbol
#set-qed-symbol[#sym.checkmark]

#proof[
  Proof with custom QED from set-qed-symbol.
]

= Solution Visibility

#problem[
  Solve $x^2 = 4$.
]

#solution[
  $x = plus.minus 2$
]

// Hide solutions
#set-result("noanswer")

#problem[
  Solve $x^2 = 9$.
]

#solution[
  This solution should be hidden.
]

// Show solutions again
#set-result("answer")

#solution[
  Solutions visible again: $x = plus.minus 3$
]
