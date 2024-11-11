#import "/src/lib.typ" as catalyst
#import "@preview/cetz:0.3.1"

#let cdxml = catalyst.cdxml.parse(xml("pinene.cdxml")).first()

#let show-without-none(dict) = {
  for (key, value) in dict.pairs() {
    if value == none {continue}
    if type(value) == dict {
      (: (key): show-without-none(value))
    } else if type(value) == array {
      (: (key): value.map(show-without-none))
    } else {
      ((key): value)
    }
  }
}

// #show-without-none(cdxml.children.at(2))

#figure(
  caption: [],
  cetz.canvas(length: 1.5pt, padding: 3, {catalyst.core.render.render(cdxml)})
)