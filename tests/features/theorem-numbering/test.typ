/// Test: theorem numbering - counters, inherited levels, zero-fill, leading-zero
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Chapter One

== Section 1.1

#theorem[Theorem in section 1.1 (counter: 1.1.1)]

#theorem[Second theorem (counter: 1.1.2)]

#lemma()[Lemma shares counter with theorem (1.1.3)]

== Section 1.2

#theorem[Theorem in section 1.2 (counter: 1.2.1)]

#corollary()[Corollary inherits from theorem (counter: 1.2.1.1)]

#theorem[Another theorem (counter: 1.2.2)]

#corollary()[Another corollary (counter: 1.2.2.1)]

= Chapter Two

== Section 2.1

#theorem[Theorem in chapter 2 (counter: 2.1.1)]

=== Custom Numbering Options

// Test inherited-levels
#set-inherited-levels(1)
#theorem[After set-inherited-levels(1) - counter: 2.1]

// Reset and test zero-fill
#set-inherited-levels(2)
#set-zero-fill(true)
#theorem[After set-zero-fill(true) - 2.1.x]

#set-zero-fill(false)

// Test theorem-box (no counter)
#theorem-box()[Unnumbered - no counter]
