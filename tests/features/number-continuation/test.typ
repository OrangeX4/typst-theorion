/// Test: number continuation - #theorem(number: (n1, n2)) updates counter for continuation
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Counter Continuation

== Set counter via array number

#theorem(number: (1, 3))[
  This theorem is explicitly set to 1.3.
  The counter is updated so the next auto-numbered theorem continues from here.
]

#theorem[
  This should be 1.4 (continues from 1.3).
]

#theorem[
  This should be 1.5.
]

== String number (no continuation)

#theorem(number: "99.99")[
  This uses a static string number. The counter is NOT updated.
]

#theorem[
  This continues from where it left off before the static override (1.6).
]
