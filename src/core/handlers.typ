#import "/src/imports.typ": cetz


#let CDXML(element) = {}
#let page(element) = {}
#let group(element) = {}
#let fragment(element) = {}

#let n(element) = {
  cetz.draw.anchor(element.id, ())
}


#let t(element) = {
  if element.BoundingBox != none {
    cetz.draw.rect(..element.BoundingBox, fill: white, stroke: none)
  }
  // cetz.draw.rect(..element.BoundingBox, stroke: 1pt)
}

#let s(element) = cetz.draw.get-ctx(ctx=>{
  cetz.draw.content((), element.children.first(), anchor: {
    if ctx.catalyst.t.LabelJustification == "Right" {
      "south-east"
    } else {
      "south-west"
    }
  })
})

#let b(element) = {
  cetz.draw.on-layer(-1, (ctx)=>{
    cetz.draw.line(
      element.B, element.E, stroke: (cap: "round")
    )
  })
} 