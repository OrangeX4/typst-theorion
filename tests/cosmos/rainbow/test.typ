/// Test: rainbow cosmos style
#import "/lib.typ": show-theorion
#import "/cosmos/rainbow.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Rainbow Cosmos Style

#definition(title: "Definition")[A definition with colored left border.]
#theorem(title: "Theorem")[A theorem with red left border.]
#lemma[A lemma with teal border.]
#corollary[A corollary with fuchsia border.]
#proposition[A proposition with blue border.]
#axiom(title: "Axiom")[An axiom with green border.]
