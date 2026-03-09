/// Test: custom title format using get-full-title parameter (issue #28 workaround)
/// Users can customize the title format like "Theorem 1.1: My Theorem" instead of
/// the default "Theorem 1.1 (My Theorem)"
#import "/lib.typ": show-theorion
#import "/cosmos/simple.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Default Title Format

#theorem(title: "Named Theorem")[
  Default format: "Theorem 1.1 (Named Theorem)"
]

= Custom Colon Separator

// Override the full-title to use colon separator
#let theorem = theorem.with(
  get-full-title: (prefix, title) => if title == "" { prefix } else { [#prefix: #title] },
)

#theorem(title: "Colon Theorem")[
  Custom format: "Theorem 1.2: Colon Theorem"
]

= No Parentheses

// Override to use dash separator
#let theorem = theorem.with(
  get-full-title: (prefix, title) => if title == "" { prefix } else { [#prefix — #title] },
)

#theorem(title: "Dash Theorem")[
  Custom format: "Theorem 1.3 — Dash Theorem"
]
