/// Test: positional title syntax - #theorem[Title][Body]
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Positional Title Syntax

== Named parameter (current syntax)

#theorem[Named Theorem][
  This uses the named title parameter.
]

== Positional title (new syntax)

#theorem[Positional Theorem][
  This uses positional title as first content argument.
]

#definition[Prime Number][
  A natural number greater than 1 with no divisors other than 1 and itself.
] <def:prime-pos>

== Reference to positionally-titled theorem

@def:prime-pos[!!] shows the positional title in the reference.

== No title (body only)

#theorem[
  This theorem has no title.
]
