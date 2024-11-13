#import "/src/core/element.typ": element, child
#import "/src/core/attribute.typ"

#let element = element("group",
  children: {
    child("t")
    child("fragment")
    child("group")
    child("graphic")
    child("altgroup")
    child("curve")
    child("step")
    child("scheme")
    child("spectrum")
    child("arrow")
    child("bioshape")
    child("plasmidmap")
    child("objecttag")
    child("annotation")
    child("rlogic")
  },
  attributes: {
    attribute.BoundingBox
    attribute.id
    attribute.define("Integral", ("yes", "no"), "no")
    attribute.Z
  }
)

#let render(element) = {}