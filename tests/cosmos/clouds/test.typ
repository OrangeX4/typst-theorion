/// Test: clouds cosmos style
#import "/lib.typ": *
#import cosmos.clouds: *

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

= New Environments

#example[An example in olive cloud box.]
#note[A note in navy cloud box.]
#remark[A remark in fuchsia cloud box.]
#problem[A problem in eastern cloud box.]
#solution[A solution (unnumbered, eastern cloud).]
#exercise[An exercise in orange cloud box.]
#conclusion[A conclusion in purple cloud box.]
