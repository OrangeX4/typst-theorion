/// Test: LaTeX-aligned body styles in simple cosmos
/// - Plain style (LaTeX \theoremstyle{plain}): bold title + period + space + ITALIC body
///   Used for: theorem, lemma, corollary, proposition, conjecture
/// - Definition style (LaTeX \theoremstyle{definition}): bold title + period + space + UPRIGHT body
///   Used for: definition, axiom, postulate, assumption, property
/// - Remark style (LaTeX \theoremstyle{remark}): italic title + period + space + UPRIGHT body
///   Available as render-fn-remark for custom environments
#import "/lib.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Plain Style (italic body)

#theorem(title: "Fermat's Last Theorem")[
  No three positive integers $a$, $b$, $c$ satisfy $a^n + b^n = c^n$ for $n > 2$.
]

#lemma[
  Every continuous function on a compact set attains its extrema.
]

#corollary[
  A corollary with italic body.
]

#proposition[
  A proposition with italic body.
]

#conjecture[
  A conjecture with italic body.
]

= Definition Style (upright body)

#definition(title: "Prime Number")[
  A natural number greater than 1 that cannot be formed by multiplying two smaller naturals.
]

#axiom(title: "Axiom of Choice")[
  Every collection of non-empty sets has a choice function.
]

#postulate[
  A postulate with upright body.
]

#assumption[
  An assumption with upright body.
]

#property[
  A property with upright body.
]
