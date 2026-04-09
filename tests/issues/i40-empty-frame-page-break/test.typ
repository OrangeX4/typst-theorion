/// Test: Issue #40 - no empty frame after page break
/// When a theorem block breaks across pages, no empty frame should appear
#import "/lib.typ": *
#import cosmos.rainbow: *
#show: show-theorion
#set page(height: 20em)

// This should fit on exactly one page without an empty frame on page 2
#example[
  #lorem(140)
]
