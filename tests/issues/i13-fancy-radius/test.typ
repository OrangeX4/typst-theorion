/// Test: Issue #13 - fancy style global radius customization via set-fancy-radius
/// Users can now customize the border radius of all fancy boxes globally.
#import "/lib.typ": show-theorion
#import "/cosmos/fancy.typ": *

#set page(width: 300pt, height: auto, margin: (x: 15pt, y: 15pt))
#set heading(numbering: "1.")

#show: show-theorion

= Default Radius

#theorem(title: "Rounded")[Default radius is 0.3em (rounded corners).]

= Square Corners via set-fancy-radius

// Issue #13: set-fancy-radius allows global radius customization
#set-fancy-radius(0em)

#theorem(title: "Square")[Square corners via #set-fancy-radius(0em).]

#definition(title: "Square Definition")[Also square corners.]

= Restored Default

// Restore to default
#set-fancy-radius(.3em)

#theorem(title: "Rounded Again")[Rounded corners restored.]
