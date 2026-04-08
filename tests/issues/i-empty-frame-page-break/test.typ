/// Test: no empty frame after page break
/// When a theorem block breaks across pages, no empty frame should appear
#import "/lib.typ": *
#import cosmos.rainbow: *

#set page(width: 500pt, height: 20em, margin: (x: 15pt, y: 15pt))

#show: show-theorion

// This should fit on exactly one page without an empty frame on page 2
#example[
  #lorem(100)
]
