#import "../lib.typ": *
#import cosmos.fancy: *

#set text(lang: "en", region: "us")
#set heading(numbering: "1.1")
#show: show-theorion

= Theorion Environments

== Basic Theorem Environments

Let's start with the most fundamental definition.

#definition[
  A natural number is called a #highlight[_prime number_] if it is greater than 1 
  and cannot be written as the product of two smaller natural numbers.
] <def_prime>

#example[
  The numbers $2$, $3$, and $17$ are prime. As proven in @cor_infinite_prime, 
  this list is far from complete!
]

#theorem(title: "Euclid's Theorem")[
  There are infinitely many prime numbers.
] <thm_euclid>

#proof[
  By contradiction: Suppose $p_1, p_2, dots, p_n$ is a finite enumeration of all primes.
  Let $P = p_1 p_2 dots p_n$. Since $P + 1$ is not in our list,
  it cannot be prime. Thus, some prime $p_j$ divides $P + 1$.
  Since $p_j$ also divides $P$, it must divide their difference $(P + 1) - P = 1$, 
  a contradiction.
]

#corollary[
  There is no largest prime number.
] <cor_infinite_prime>

#corollary[
  There are infinitely many composite numbers.
]

== Functions and Continuity

#theorem(title: "Continuity Theorem")[
  If a function $f$ is differentiable at every point, then $f$ is continuous.
] <thm_continuous>

#tip-box[
  This theorem tells us that differentiability implies continuity, but not vice versa.
  For example, $f(x) = |x|$ is continuous but not differentiable at $x = 0$.
]

== Geometric Theorems

#theorem(title: "Pythagorean Theorem")[
  In a right triangle, the square of the hypotenuse equals the sum of squares of the other two sides:
  $x^2 + y^2 = z^2$
] <thm_pythagoras>

#important-box[
  The Pythagorean theorem is one of the most fundamental and important theorems in plane geometry,
  bridging geometry and algebra.
]

#corollary[
  There exists no right triangle with sides measuring 3cm, 4cm, and 6cm.
]

#lemma[
  Given two line segments of lengths $a$ and $b$, there exists a real number $r$ 
  such that $b = r a$.
]

== Algebraic Structures

#definition(title: "Ring")[
  Let $R$ be a non-empty set with two binary operations $+$ and $dot$, satisfying:
  1. $(R, +)$ is an abelian group
  2. $(R, dot)$ is a semigroup
  3. The distributive laws hold
  Then $(R, +, dot)$ is called a ring.
]

#proposition[
  Every field is a ring, but not every ring is a field.
]

#example[
  The ring of integers $ZZ$ is not a field, as no elements except $\pm 1$ have multiplicative inverses.
]

== Advanced Analysis

#theorem(title: "Maximum Value Theorem")[
  A continuous function on a closed interval must attain both a maximum and a minimum value.
]

#warning-box[
  Both conditions of this theorem are essential:
  - The function must be continuous
  - The domain must be a closed interval
]

== Advanced Algebra Supplements

#axiom(title: "Group Axioms")[
  A group $(G, \cdot)$ must satisfy:
  1. Closure
  2. Associativity
  3. Identity element exists
  4. Inverse elements exist
]

#postulate(title: "Fundamental Theorem of Algebra")[
  Every non-zero polynomial with complex coefficients has a complex root.
]

#remark[
  This theorem is also known as Gauss's theorem, as it was first rigorously proved by Gauss.
]

== Common Problems and Solutions

#problem[
  Prove: For any integer $n > 1$, there exists a sequence of $n$ consecutive composite numbers.
]

#solution[
  Consider the sequence: $n! + 2, n! + 3, ..., n! + n$

  For any $2 \leq k \leq n$, $n! + k$ is divisible by $k$ because:
  $n! + k = k(n!/k + 1)$
  
  Thus, this forms a sequence of $n-1$ consecutive composite numbers.
]

#exercise[
  1. Prove: The twin prime conjecture remains unproven.
  2. Try to explain why this problem is so difficult.
]

#conclusion[
  Number theory contains many unsolved problems that appear deceptively simple 
  yet are profoundly complex.
]

== Important Notes

#caution-box[
  When dealing with infinite series, always verify convergence before discussing other properties.
]

#quote-box[
  Mathematics is the queen of sciences, and number theory is the queen of mathematics.
  — Gauss
]

#emph-box[
  Chapter Summary:
  - We introduced basic number theory concepts
  - Proved several important theorems
  - Demonstrated different types of mathematical environments
]
