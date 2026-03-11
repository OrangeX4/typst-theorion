/// Test: simple cosmos style with LaTeX-aligned body styles
/// - Plain style (italic body): theorem, lemma, corollary, proposition, conjecture
/// - Definition style (upright body): definition, axiom, postulate, assumption, property
/// - Remark style (italic title, upright body): remark, note, example, conclusion
#import "/lib.typ": *

#set page(width: 350pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.1")

#show: show-theorion

= Simple Cosmos Style

== Plain Style (italic body)

#theorem(title: "Theorem")[Body is italic (LaTeX plain style).]
#lemma[Body is italic (lemma).]
#corollary[Body is italic (corollary).]
#proposition[Body is italic (proposition).]
#conjecture[Body is italic (conjecture).]

== Definition Style (upright body)

#definition(title: "Definition")[Body is upright / not italic (LaTeX definition style).]
#axiom(title: "Axiom")[Body is upright (axiom).]
#postulate(title: "Postulate")[Body is upright (postulate).]
#assumption[Body is upright (assumption).]
#property[Body is upright (property).]

== Remark Style (italic title, upright body)

#remark[A remark with italic title.]
#note[A note with italic title.]
#example(title: "Example Title")[An example with italic title.]
#conclusion[A conclusion with italic title.]

== Exercise / Problem / Solution

#exercise[An exercise with upright title.]
#problem[A problem with upright title.]
#solution[A solution (italic title, unnumbered).]
