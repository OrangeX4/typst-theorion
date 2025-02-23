#import "@preview/showybox:2.0.4": showybox
#import "@preview/octique:0.1.0": octique-inline

/// Code from: [jbirnick](https://github.com/jbirnick/typst-rich-counters)
/// I need a patched version of `rich-counter` to support the `zero-fill` and `leading-zero` options.
#let rich-counter(identifier: none, inherited-levels: 0, inherited-from: heading, zero-fill: false, leading-zero: false) = {
  // this can equip `headings` and similar objects with the rich-counter functions
  // that are needed for recursive evaluation
  let rich-wrapper(key) = {
    let at(loc) = {
      let cntr = counter(key)
      if (loc == none) { cntr.final() }
      else { cntr.at(loc) }
    }
    let last_update_location(level, before_key) = {
      if key == heading {
        let occurrences = if before_key == none { query(selector(key)) } else { query(selector(key).before(before_key)) }
        for occurrence in occurrences.rev() {
          if occurrence.level <= level {
            return occurrence.location()
          }
        }
      } else {
        // best guess: just take the last occurrence of the element
        // WARNING: this can be wrong for certain elements, especially if Typst introduces more queryable/locatable elements
        let occurrences = if before_key == none { query(selector(key)) } else { query(selector(key).before(before_key)) }
        if occurrences.len() == 0 {
          return none
        } else {
          return occurrences.last().location()
        }
      }
    }
  
    return (at: at, inherited-levels: 0, last_update_location: last_update_location)
  }

  // get the parent rich-counter
  let parent_rhcntr = if type(inherited-from) == dictionary {
    if inherited-levels == 0 { inherited-levels = inherited-from.inherited-levels + 1 }
    inherited-from
  } else {
    rich-wrapper(inherited-from)
  }
  
  // `step` method for this rich-counter
  let step(depth: 1) = [
    #metadata(depth)
    #label("rich-counter:step:" + identifier)
  ]

  // find updates of own partial (!) counter in certain range
  let updates_during(after_key, before_key) = {
    let query_for = selector(label("rich-counter:step:" + identifier))

    if after_key == none and before_key == none {
      return query(query_for)
    } else if after_key == none {
      return query(query_for.before(before_key))
    } else if before_key == none {
      return query(query_for.after(after_key))
    } else {
      return query(query_for.after(after_key).before(before_key))
    }
  }

  // find last update of this total (!) counter up to a certain level and before a certain location
  let last_update_location(level, before_key) = {
    let parent_last_update_location = (parent_rhcntr.last_update_location)(inherited-levels, before_key)
    let updates = updates_during(parent_last_update_location, before_key)

    for update in updates.rev() {
      if update.value <= level - inherited-levels {
        return update.location()
      }
    }

    return parent_last_update_location
  }

  // compute value of the counter after the given updates, starting from 0
  let compute_counter(updates) = {
    let value = (0,)
    for update in updates {
      let level = update.value
      while value.len() < level { value.push(0) }
      while value.len() > level { let _ = value.pop() }
      value.at(level - 1) += 1
    }

    return value
  }

  // `at` method for this rich-counter
  let at(key) = {
    // get inherited numbers
    let num_parent = (parent_rhcntr.at)(key)
    while zero-fill and num_parent.len() < inherited-levels { num_parent.push(0) }
    while num_parent.len() > inherited-levels { let _ = num_parent.pop() }
    if not leading-zero and num_parent.at(0, default: none) == 0 {
      num_parent = num_parent.slice(1)
    }

    // get numbers of own partial counter
    let updates = updates_during((parent_rhcntr.last_update_location)(inherited-levels, key), key)
    let num_self = compute_counter(updates)

    return num_parent + num_self
  }

  // `get` method for this rich-counter
  let get() = { at(here()) }

  // `final` method for this rich-counter
  let final() = { at(none) }

  // `display` method for this rich-counter
  let display(..args) = {
    if args.pos().len() == 0 {
      numbering("1.1", ..get())
    } else {
      numbering(args.pos().first(), ..get())
    }
  }

  return (step: step, at: at, get: get, final: final, display: display, inherited-levels: inherited-levels, last_update_location: last_update_location)
}
