/// Test: rainbow cosmos style
#import "/lib.typ": *
#import cosmos.rainbow: *

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

= New Environments

#example[An example with olive border.]
#note[A note with navy border.]
#remark[A remark with fuchsia border.]
#problem[A problem with eastern border.]
#solution[A solution (unnumbered, eastern border).]
#exercise[An exercise with orange border.]
#conclusion[A conclusion with purple border.]
