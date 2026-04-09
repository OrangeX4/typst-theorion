/// Test: Issue #38 - Unnumbered theorems should show supplement prefix without numbering
/// frame-box (numbering: none) should display "Theorem" prefix, not lose it entirely.
/// Also verifies that @ref, outline, full-title, and restate work correctly with unnumbered theorems.
#import "/lib.typ": *
#import cosmos.simple: *
#show: show-theorion

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1")

= Section

// Numbered theorem: should show "Theorem 1.1"
#theorem[Euclid][There are infinitely many primes.] <thm:euclid>

// Unnumbered theorem-box: should show "Theorem (My Title)" with prefix, no number
#theorem-box[My Title][This theorem has no number but should still show the "Theorem" prefix.] <thm:unnumbered>

// Unnumbered example-box: should show "Example (Ring of Integers)" with prefix, no number
#example-box[Ring of Integers][$ZZ$ is a ring.] <ex:unnumbered>

// Unnumbered definition-box: should show "Definition (Test)" with prefix, no number
#definition-box[Test][A test definition.]

// Unnumbered theorem-box without title: should show just "Theorem" with no trailing space
#theorem-box[This theorem has no title and no number.] <thm:notitle>

// Custom full-title: should override the default "Theorem (Title)" format
#theorem(full-title: [Fundamental Theorem])[There is a fundamental result.] <thm:custom-ft>

// Custom full-title on unnumbered: should override default prefix
#theorem-box(full-title: [Key Lemma])[An unnumbered theorem with custom full-title.] <thm:custom-ft-box>

// Numbered theorem after unnumbered: counter should not be affected
#theorem[Second][Another numbered theorem.] <thm:second>

// Reference to numbered theorems should still work
@thm:euclid and @thm:second

// Reference to unnumbered theorems: should show "Theorem (My Title)"
@thm:unnumbered

// Reference to unnumbered example: should show "Example (Ring of Integers)"
@ex:unnumbered

// Reference to unnumbered theorem without title: should show just "Theorem"
@thm:notitle

// @label[!!] on unnumbered: should show "Theorem (My Title)"
@thm:unnumbered[!!]

// @label[-] on unnumbered: should show title only
@thm:unnumbered[-]

// Outline: frame-box is now outlined by default (no outlined: false)
// So unnumbered theorems also appear in outline
#outline(title: [Theorems], target: figure.where(kind: "theorem"))

// Restate: restates all outlined theorems (including unnumbered ones)
#theorion-restate(
  filter: it => it.outlined and it.identifier == "theorem",
  render: it => it.render,
)
