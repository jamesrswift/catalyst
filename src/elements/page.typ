#import "/src/core/element.typ": element, child, CDATA
#import "/src/core/attribute.typ"

#let element = element("page",
  children: {
    child("t", many: true)
    child("fragment", many: true)
    child("group", many: true)
    child("graphic", many: true)
    child("altgroup", many: true)
    child("curve", many: true)
    child("step", many: true)
    child("scheme", many: true)
    child("spectrum", many: true)
    child("embeddedobject", many: true)
    child("sequence", many: true)
    child("crossreference", many: true)
    child("splitter", many: true)
    child("table", many: true)
    child("bracketedgroup", many: true)
    child("border", many: true)
    child("geometry", many: true)
    child("constraint", many: true)
    child("tlcplate", many: true)
    child("gepplate", many: true)
    child("chemicalproperty", many: true)
    child("arrow", many: true)
    child("bioshape", many: true)
    child("stoichiometrygrid", many: true)
    child("plasmidmap", many: true)
    child("objecttag", many: true)
    child("annotation", many: true)
    child("rlogic", many: true)
  },attributes: {
    attribute.alpha
    attribute.bgalpha
    attribute.bgcolor
    attribute.BoundingBox
    attribute.define-implied-cdata("BoundsInParent")
    attribute.color
    attribute.define("DrawingSpace", ("poster", "pages"), "pages")
    attribute.define-implied-cdata("Footer")
    attribute.define-implied-cdata("FooterPosition")
    attribute.define-implied-cdata("Height")
    attribute.id
    attribute.define("WidthPages", CDATA, "1")
    attribute.define-implied-cdata("Header")
    attribute.define-implied-cdata("HeaderPosition")
    attribute.define("HeightPages", CDATA, "1")
    attribute.define("PageDefinition", ("Undefined", "Center", "TL4", "IDTerm", "FlushLeft", "FlushRight", "Reaction1", "Reaction2", "MulticolumnTL4", "MulticolumnNonTL4", "UserDefined"), "Undefined")
    attribute.define-implied-cdata("PageOverlap")
    attribute.define("PrintTrimMarks", ("yes", "no"), "no")
    attribute.define-implied-cdata("SplitterPositions")
    attribute.define-implied-cdata("Width")
    attribute.Z
  }
)

#let render(element) = {}