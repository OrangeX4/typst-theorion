/// Test: theorem restate functionality
#import "/lib.typ": show-theorion, theorion-restate
#import "/cosmos/simple.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Theorems

#theorem(title: "Euclid's Theorem")[
  There are infinitely many prime numbers.
] <thm:euclid>

#definition[
  A prime number is a number greater than 1.
] <def:prime>

#theorem(title: "Fermat's Last Theorem")[
  No three positive integers $a$, $b$, $c$ satisfy $a^n + b^n = c^n$ for $n > 2$.
] <thm:fermat>

= Restated Theorems

// Restate all theorems
#theorion-restate(filter: it => it.outlined and it.identifier == "theorem")

= Specific Restate

// Restate a specific theorem by label
#theorion-restate(filter: <thm:euclid>)
