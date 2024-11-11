#import "/src/lib.typ" as catalyst
#import "/src/imports.typ": cetz

#let cdxml = catalyst.core.schema.parse(
  xml("test-reaction.cdxml")
).first()

// #cdxml.children.at(2).children.first().children
#cetz.canvas(
  length: 1.5pt,
  {
    catalyst.core.render.render(cdxml)
  }
)