/// Test: basic theorem environments work correctly
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Section

== Subsection

#definition[Prime Number][
  A natural number is called a _prime number_ if it is greater than 1
  and cannot be written as the product of two smaller natural numbers.
] <def:prime>

#theorem[Euclid's Theorem][
  There are infinitely many prime numbers.
] <thm:euclid>

#proof[
  By contradiction. Suppose there were finitely many primes.
]

#lemma[
  There are infinitely many composite numbers.
]

#corollary[
  There is no largest prime number.
]

#proposition[
  Every field is a ring.
]

#example[
  The number $7$ is prime.
]

== Numbered Box vs Unnumbered Box

#theorem[Named Theorem][
  A named theorem with title.
]

#theorem-box[Unnumbered Box][
  This theorem is not numbered.
]
