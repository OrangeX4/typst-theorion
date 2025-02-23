#import "i18n.typ": theorion-i18n, theorion-i18n-map
#import "deps.typ": rich-counter

/// Create a theorem environment based on rich-counter
///
/// - identifier (string): Unique identifier for the counter
/// - supplement (string|dict): Label text or dictionary of labels for different languages
/// - counter (counter): Counter to use. Default is none, which creates a new counter based on the identifier
/// - inherited-levels (integer): Number of heading levels to inherit from. Default is 0
/// - inherited-from (counter): Counter to inherit from. Default is heading
/// - numbering (string): Numbering format. Default is "1.1"
/// - render (function): Custom rendering function
/// -> (counter, render-fn, frame-fn, show-fn)
#let make-frame(
  identifier,
  supplement,
  counter: none,
  inherited-levels: 0,
  inherited-from: heading,
  numbering: "1.1",
  render: (prefix: none, title: "", full-title: "", body) => block[*#full-title*: #body],
) = {
  /// Counter for the frame.
  let frame-counter = if counter != none { counter } else {
    rich-counter(
      identifier: identifier,
      inherited-levels: inherited-levels,
      inherited-from: inherited-from,
    )
  }
  /// Style for the frame.
  // let supplement-i18n = {
  //   if type(supplement) == dictionary {
  //     context supplement.at(text.lang, default: supplement.at("en"))
  //   } else {
  //     supplement
  //   }
  // }
  let supplement-i18n = theorion-i18n(supplement)
  /// Frame with the counter.
  let frame(title: "", body) = figure(
    kind: identifier,
    supplement: supplement-i18n,
    numbering: numbering,
    {
      context (frame-counter.step)()
      let prefix = [#supplement-i18n #context (frame-counter.display)(numbering)]
      render(
        prefix: prefix,
        title: title,
        full-title: [#prefix#{ if title != "" [ (#title)] }],
        body,
      )
    },
  )
  /// Show rule for the frame.
  let show-frame(body) = {
    show figure.where(kind: identifier): set align(left)
    show figure.where(kind: identifier): set block(breakable: true)
    show ref: it => {
      let el = it.element
      if el != none and el.func() == figure and el.kind == identifier {
        link(
          it.target,
          {
            if it.supplement == auto { supplement-i18n } else { it.supplement }
            " "
            context {
              // We need to add 1 to the counter value.
              let counter-value = (frame-counter.at)(el.location())
              counter-value = counter-value.slice(0, -1) + (counter-value.at(-1) + 1,)
              std.numbering(el.numbering, ..counter-value)
            }
          },
        )
      } else {
        it
      }
    }
    body
  }
  return (frame-counter, render, frame, show-frame)
}
