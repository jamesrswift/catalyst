#import "/src/lib.typ" as catalyst
#import "/src/imports.typ": cetz

#let cdxml = catalyst.core.schema.parse(
  xml("test-reaction.cdxml")
).first()

#cdxml.children
#cetz.canvas(
  
  {
    catalyst.core.render.render(cdxml)
  }
)