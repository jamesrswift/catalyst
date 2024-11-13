#import "/src/imports.typ": cetz

#import "/src/elements/CDXML.typ": render as CDXML
#import "/src/elements/page.typ": render as page
#import "/src/elements/group.typ": render as group
#import "/src/elements/fragment.typ": render as fragment
#import "/src/elements/node.typ": render as n

#let t(element) = {

  // cetz.draw.rect(..element.BoundingBox, stroke: 1pt)
}

#let s(element) = cetz.draw.get-ctx(ctx=>{
  cetz.draw.translate(x: -1, y:-1)
  cetz.draw.content((), element.children.first(), anchor: {
    if ctx.catalyst.t.LabelJustification == "Right" {
      "south-east"
    } else {
      "south-west"
    }
  }, frame: "rect", stroke: none, padding: 1, fill: white)
})

#import "/src/elements/bond.typ": render as b