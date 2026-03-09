/// Test: clouds cosmos style
#import "/lib.typ": show-theorion
#import "/cosmos/clouds.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Clouds Cosmos Style

#definition(title: "Definition")[A definition in olive cloud box.]
#theorem(title: "Theorem")[A theorem in red cloud box.]
#lemma[A lemma in teal.]
#corollary[A corollary in navy.]
#proposition[A proposition in blue.]
#axiom(title: "Axiom")[An axiom in green.]
