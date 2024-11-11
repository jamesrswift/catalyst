#import "/src/lib.typ" as catalyst
#import "/src/imports.typ": cetz

#let cdxml = catalyst.cdxml.parse(xml("tlc.cdxml")).first()

#cetz.canvas(
  
  {
    catalyst.core.render.default(cdxml)
  }
)