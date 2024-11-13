#import "/src/imports.typ": cetz
#import "/src/core/element.typ": element, child
#import "/src/core/attribute.typ"

#let element = element("b",
  children: {
    child("objecttag")
    child("annotation")
  },
  attributes: {
    attribute.alpha
    attribute.define-implied-cdata("B")
    attribute.define-implied-cdata("BeginAttach")
    attribute.define-implied-cdata("BeginExternalNum")
    attribute.define-implied-cdata("BoldWidth")
    attribute.define-implied-cdata("BondCircularOrdering")
    attribute.define-implied-cdata("BondLength")
    attribute.define-implied-cdata("BondSpacing")
    attribute.define-implied-cdata("BondSpacingAbs")
    attribute.define("BS", ("U", "N", "E", "Z"), "U")
    attribute.define-implied-cdata("color")
    attribute.define("Connectivity", ("Linear", "Bridged", "Staggered", "Cyclic", "Unspecified"), "Unspecified")
    attribute.define-implied-cdata("CrossingBonds")
    attribute.define-implied-cdata("CrossingBondss")
    attribute.define("Display", ("Solid", "Dash", "Hash", "WedgedHashBegin", "WedgedHashEnd", "Bold", "WedgeBegin", "WedgeEnd", "Wavy", "HollowWedgeBegin", "HollowWedgeEnd", "WavyWedgeBegin", "WavyWedgeEnd", "Dot", "DashDot"), "Solid")
    attribute.define("Display2", ("Solid", "Dash", "Hash", "WedgedHashBegin", "WedgedHashEnd", "Bold", "WedgeBegin", "WedgeEnd", "Wavy", "HollowWedgeBegin", "HollowWedgeEnd", "WavyWedgeBegin", "WavyWedgeEnd", "Dot", "DashDot"), "Solid")
    attribute.define("DoublePosition", ("Center", "Right", "Left"), "Center")
    attribute.define-implied-cdata("E")
    attribute.define-implied-cdata("EndAttach")
    attribute.define-implied-cdata("EndExternalNum")
    attribute.define-implied-cdata("HashSpacing")
    attribute.id
    attribute.define("IgnoreWarnings", ("yes", "no"), "no")
    attribute.define-implied-cdata("LabelFace")
    attribute.define-implied-cdata("LabelFont")
    attribute.define-implied-cdata("LabelSize")
    attribute.define-implied-cdata("LineWidth")
    attribute.define-implied-cdata("MarginWidth")
    attribute.define-implied-cdata("Order")
    attribute.define("RxnParticipation", ("Unspecified", "ReactionCenter", "MakeOrBreak", "ChangeType", "MakeAndChange", "NotReactionCenter", "NoChange", "Unmapped"), "Unspecified")
    attribute.define("ShowBondQuery", ("yes", "no"), "yes")
    attribute.define("ShowBondRxn", ("yes", "no"), "yes")
    attribute.define("ShowBondStereo", ("yes", "no"), "no")
    attribute.define-implied-cdata("SupersededBy")
    attribute.define("Topology", ("Unspecified", "Ring", "Chain", "RingOrChain"), "Unspecified")
    attribute.define("Visible", ("yes", "no"), "yes")
    attribute.define-implied-cdata("Warning")
    attribute.Z

  }
)

#let _draw-wedge(el, ctx: (:), ..style) = {
  cetz.draw.line(
    (
      a: (a: el.E, b: el.B, number: 1),
      b: el.E,
      number: 1,
      angle: 90deg,
    ),
    (el.B), 
    (
      a: (a: el.E, b: el.B, number: 1),
      b: el.E,
      number: -1,
      angle: 90deg,
    ),
    close: true,
    fill: black
  )
}

#let _draw-single(el, ctx: (:), ..style) = {
  cetz.draw.line(
    el.B, el.E, stroke: (cap: "round"),
    ..style
  )
}

#let _rendertable = (:
  Solid: _draw-single,
  WedgeBegin: _draw-wedge,
  WedgedHashBegin: _draw-single.with(stroke: red)
)

#let render(element) = {
  cetz.draw.on-layer(-1, (ctx)=>{

    if element.Display in _rendertable {
      (_rendertable.at(element.Display))(element, ctx: ctx)
    }

    // if element.Order == "2" {
    //   cetz.draw.line(element.B, element.E, stroke: (cap: "round"), name: "d")
    //   cetz.draw.line(
    //    ( a: "d.start", b: "d.end", angle: 45deg, number: 2.5),
    //    ( a: "d.end", b: "d.start", angle: -45deg, number: 2.5),
    //     stroke: (cap: "round"), name: "d")
    // } else {

    //   if element.Display == "WedgeBegin" {
    //     cetz.draw.line(
    //       (
    //         a: (a: element.E, b: element.B, number: 1),
    //         b: element.E,
    //         number: 1,
    //         angle: 90deg,
    //       ),
    //       (element.B), 
    //       (
    //         a: (a: element.E, b: element.B, number: 1),
    //         b: element.E,
    //         number: -1,
    //         angle: 90deg,
    //       ),
    //       close: true,
    //       fill: black
    //     )
    //   // } else  if element.Display == "WedgedHashBegin" {
    //   //   cetz.draw.line(
    //   //     (
    //   //       a: (a: element.E, b: element.B, number: 1),
    //   //       b: element.E,
    //   //       number: 1,
    //   //       angle: 90deg,
    //   //     ),
    //   //     (element.B), 
    //   //     (
    //   //       a: (a: element.E, b: element.B, number: 1),
    //   //       b: element.E,
    //   //       number: -1,
    //   //       angle: 90deg,
    //   //     ),
    //   //     close: true,
    //   //     fill: pattern(size: (10pt, 10pt))[
    //   //       #place(line(start: (0%, 0%), end: (100%, 100%)))
    //   //     ],
    //   //     stroke: none,
    //   //   )
    //   } else {
    //     cetz.draw.line(
    //       element.B, element.E, stroke: (cap: "round")
    //     )
    //   }
      
    // }

    
  })
} 