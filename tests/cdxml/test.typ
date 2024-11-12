#import "/tests/preamble.typ": *
#show: default-show

#let cdxml = catalyst.core.schema.parse(xml("pinene.cdxml")).first()

#let show-without-none(dict) = {
  for (key, value) in dict.pairs() {
    if value == none {continue}
    if type(value) == dict {
      (: (key): show-without-none(value))
    } else if type(value) == array {
      (: (key): value)
    } else {
      ((key): value)
    }
  }
}

// #show-without-none(cdxml)


#cetz.canvas(length: 1.5pt, padding: 3, {catalyst.core.render.render(cdxml)})
