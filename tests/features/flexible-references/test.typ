/// Test: flexible reference supplements - @label[-] for number only, @label[!!] for full with title
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Flexible References

#theorem[Euclid's Theorem][
  There are infinitely many prime numbers.
] <thm:euclid>

#definition[
  A prime has no divisors other than 1 and itself.
] <def:prime>

== Default Reference

@thm:euclid (supplement + number)

== Number Only Reference

@thm:euclid[-] (number only, no supplement)

== Full Reference with Title

@thm:euclid[!!] (supplement + number + title)

== References to Untitled Theorem

@def:prime (supplement + number)

@def:prime[-] (number only)

@def:prime[!!] (supplement + number, no title to append)

== Unnumbered References

#theorem-box[My Theorem][An unnumbered theorem.] <thm:unnum>

#theorem-box[An unnumbered theorem without title.] <thm:unnum-notitle>

@thm:unnum (supplement + title for unnumbered)

@thm:unnum[-] (title only for unnumbered)

@thm:unnum[!!] (supplement + title for unnumbered)

@thm:unnum-notitle (supplement only, no number, no title)
