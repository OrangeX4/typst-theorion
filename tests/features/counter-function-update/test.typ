/// Test: `update` of a theorem counter also takes a function, like a Typst counter
#import "/lib.typ": *

#set heading(numbering: "1.1")
#show: show-theorion

#let get = theorem-counter.get
#let update = theorem-counter.update

= Section

#theorem[A][x]
#theorem[B][y]
#context assert.eq(get(), (1, 2))

// The function gets the whole value, as separate arguments.
#update((..n) => {
  let value = n.pos()
  value.push(value.pop() + 5)
  value
})
#context assert.eq(get(), (1, 7))

// Stepping goes on from the result.
#theorem[C][z]
#context assert.eq(get(), (1, 8))

#update((..n) => (n.pos().first(), 1))
#context assert.eq(get(), (1, 1))

= Section

#context assert.eq(get(), (2, 0))

// Only the own part of the result is kept, the inherited part stays.
#update((..n) => (7, 7))
#context assert.eq(get(), (2, 7))
#context assert.eq(counter(heading).get(), (2,))
