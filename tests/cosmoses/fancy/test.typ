/// Test: fancy cosmos style (elegantbook-inspired)
#import "/lib.typ": show-theorion
#import "/cosmos/fancy.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Fancy Cosmos Style

#definition(title: "Definition")[A definition in fancy green box.]
#theorem(title: "Theorem")[A theorem in fancy orange box.]
#lemma[A lemma without title.]
#corollary[A corollary.]
#proposition(title: "Proposition")[A proposition in fancy blue box.]
#axiom(title: "Axiom")[An axiom.]

= Custom Colors

#set-primary-border-color(purple.darken(30%))
#set-primary-body-color(purple.lighten(90%))

#definition(title: "Colored Definition")[A definition with custom purple color.]
