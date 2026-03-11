/// Test: Issue #29 - ref with supplement=none should not add extra space
#import "/lib.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1")

#show: show-theorion

= Section <section>

#theorem(lorem(5)) <thm:test>

Section with supplement: (@section) \
Theorem with supplement: (@thm:test)

#set ref(supplement: none)

Section without supplement: (@section) \
Theorem without supplement: (@thm:test)
