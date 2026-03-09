/// Test: simple cosmos style with LaTeX-aligned body styles
/// - Plain style (italic body): theorem, lemma, corollary, proposition, conjecture
/// - Definition style (upright body): definition, axiom, postulate, assumption, property
#import "/lib.typ": show-theorion
#import "/cosmos/simple.typ": *

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
