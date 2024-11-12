#import "/src/lib.typ" as catalyst
#import "/src/imports.typ": *

#let default-show(body) = {
  set page(
    width: auto,
    height: auto,
  )
  // set text(font: "Arial")
  body
}