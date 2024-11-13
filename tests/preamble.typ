#import "/src/lib.typ" as catalyst
#import "/src/imports.typ": *

#let default-show(body) = {
  set page(
    width: auto,
    height: auto,
  )
  set text(font: "Arial")
  set figure(gap: 2.5em)
  body
}

#let default-parse-render(xml) = {
  cetz.canvas(
    length: 1.5pt,
    catalyst.core.render.render(
      catalyst.core.schema.parse(xml).first()
    )
  )
}