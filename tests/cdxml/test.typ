#import "/src/lib.typ" as catalyst
#import "@preview/cetz:0.3.1"



#let render-n(n) = {
  cetz.draw.anchor(n.id, n.p.split(" ").map(float))
}

#let render-b(b) = {
  if b.Order == "2" {
    cetz.draw.line(
      b.B, b.E, stroke: (cap: "round")
    )
    cetz.draw.line(
      ((a: b.B, b: b.E, angle: -45deg, number: 2.25)), 
      ((a: b.E, b: b.B, angle: 45deg, number: 2.25)), 
      stroke: (cap: "round")
    )
  } else {
    cetz.draw.line(
      b.B, b.E, stroke: (cap: "round")
    )
  }
}

#let render-fragment(fragment) = {
  for el in fragment.children {
    if el.at("") == "n" { render-n(el) }
    if el.at("") == "b" { render-b(el) }
  }
}

#let render-page(page) = {
  for fragment in page.children.filter((el)=>el.at("")=="fragment") {
    render-fragment(fragment)
  }
}

#let render-cdxml(cdxml) = {
  for page in cdxml.children.filter((el)=>el.at("")=="page") {
    render-page(page)
  }
}

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

#cetz.canvas(length: 1.5pt, {render-cdxml(cdxml)})