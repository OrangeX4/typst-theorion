#import "/lib.typ": show-theorion
#import "/cosmos/simple.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= LaTeX Style Comparison

== Plain Style (italic body)

#theorem(title: "Plain Style")[
  Theorem body should be ITALIC here.
]

== Definition Style (upright body)

#definition(title: "Definition Style")[
  Definition body should be UPRIGHT (not italic) here.
]

== Remark Style (italic title, upright body)

#remark[
  Remark body should be UPRIGHT with non-bold name.
]
