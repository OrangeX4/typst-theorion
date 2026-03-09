/// Test: simple cosmos style
#import "/lib.typ": show-theorion
#import "/cosmos/simple.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Simple Cosmos Style

#definition(title: "Definition")[A definition.]
#theorem(title: "Theorem")[A theorem.]
#lemma[A lemma without title.]
#corollary[A corollary.]
#proposition[A proposition.]
#axiom(title: "Axiom")[An axiom.]
#postulate(title: "Postulate")[A postulate.]
#assumption[An assumption.]
#property[A property.]
#conjecture(title: "Conjecture")[A conjecture.]
