/// Test: fancy cosmos style (elegantbook-inspired)
#import "/lib.typ": *
#import cosmos.fancy: *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Fancy Cosmos Style

#definition[Definition][A definition in fancy green box.]
#theorem[Theorem][A theorem in fancy orange box.]
#lemma[A lemma without title.]
#corollary[A corollary.]
#proposition[Proposition][A proposition in fancy blue box.]
#axiom[Axiom][An axiom.]

= New Environments

#example[Example][An example in fancy orange box.]
#note[A note in fancy blue box.]
#remark[A remark in fancy blue box.]
#problem[A problem in fancy orange box.]
#solution[A solution in fancy orange box (unnumbered).]
#exercise[An exercise in fancy orange box.]
#conclusion[A conclusion in fancy green box.]

= Custom Colors

#set-primary-border-color(purple.darken(30%))
#set-primary-body-color(purple.lighten(90%))

#definition[Colored Definition][A definition with custom purple color.]

= Zero Radius (Issue #13)

// set-fancy-radius allows customizing the border radius
#set-fancy-radius(0em)

#theorem[Square Corners][This theorem has square corners (radius = 0).]

#set-fancy-radius(.3em)

#theorem[Rounded Corners][This theorem has rounded corners (default radius).]
