#import "/tests/preamble.typ": *
#show: default-show

#let cdxml = catalyst.cdxml.parse(xml("tlc.cdxml")).first()

#cetz.canvas(
  
  {
    catalyst.core.render.render(cdxml)
  }
)