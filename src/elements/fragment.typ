#import "/src/core/element.typ": element, child
#import "/src/core/attribute.typ"

#let element = element("fragment",
  children: {
    child("n", many: true)
    child("b", many: true)
    child("t", many: true)
    child("graphic", many: true)
    child("curve", many: true)
    child("objecttag", many: true)
    child("annotation", many: true)
    child("regnum", many: true)
    child("coloredmoleculararea", many: true)
  },
  attributes: {
    attribute.define("Absolute", ("yes", "no"), "no")
    attribute.BoundingBox
    attribute.define-implied-cdata("ConnectionOrder")
    attribute.define-implied-cdata("Formula")
    attribute.id
    attribute.define("Relative", ("yes", "no"), "no")
    attribute.define("Racemic", ("yes", "no"), "no")
    attribute.define("SequenceType", ("Unknown", "Peptide", "Peptide1", "Peptide3", "DNA", "RNA"), "Unknown")
    attribute.define-implied-cdata("Weight")
    attribute.Z
  }
)


#let render(element) = {}