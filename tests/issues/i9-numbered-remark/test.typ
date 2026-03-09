/// Test: Issue #9 - numbered remark environments
/// Users can create numbered remark-style environments using make-frame
/// with render-fn-remark from simple cosmos.
#import "/lib.typ": show-theorion, make-frame, theorion-i18n-map
#import "/cosmos/simple.typ": theorem, theorem-counter, render-fn-remark

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

// Create numbered remark environment sharing the theorem counter
#let (remark-counter, remark-box, remark, show-remark) = make-frame(
  "remark",
  theorion-i18n-map.at("remark"),
  counter: theorem-counter,  // shares counter with theorem
  render: render-fn-remark,  // italic title, upright body
)

#show: show-theorion
#show: show-remark  // must apply show rule

= Numbered Remarks

#theorem()[
  There are infinitely many prime numbers.
]

#remark[
  This is remark 1.2 - it shares the counter with theorem.
  The body is upright, but the title "Remark 1.2" is italic.
]

#theorem()[
  Second theorem in section 1.
]

#remark(title: "Named Remark")[
  Named remark with italic title including the optional name.
]
