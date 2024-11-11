#import "/src/imports.typ": cetz


#let CDXML(element) = {}
#let page(element) = {}
#let group(element) = {}
#let fragment(element) = {}

#let n(element) = cetz.draw.get-ctx((ctx)=>{
  
  if element.Element != none{
    cetz.draw.circle(name: element.id, element.p.split(" ").map(float), radius: 4)
  } else {
    cetz.draw.anchor(element.id, element.p.split(" ").map(float))
  }
})

#let t(element) = {}
#let s(element) = {}
#let b(element) = {
    if element.Order == "2" {
    cetz.draw.line(
      element.B, element.E, stroke: (cap: "round")
    )
    cetz.draw.line(
      ((a: element.B, b: element.E, angle: -45deg, number: 2.5)), 
      ((a: element.E, b: element.B, angle: 45deg, number: 2.5)), 
      stroke: (cap: "round")
    )
  } else {
    cetz.draw.line(
      element.B, element.E, stroke: (cap: "round")
    )
  }
}