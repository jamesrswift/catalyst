
#import "attribute.typ"

#let CDATA = "CDATA"
#let IMPLIED = "#IMPLIED"
#let REQUIRED = "#REQUIRED"

#let element(name, attributes: (:), children: ()) = (:
  (name) : (:
    attributes: attributes,
    children: children,
  )
)

#let child(tag, many: true, optional: true) = ((:
  "": "children-rule",
  tag: tag,
  many: many,
  optional: optional,
),)

#let children(tags, many: true, optional: true) = tags.map(tag=>child(tag, many: many, optional: optional))


#let colortable = element("colortable", 
  children: child("color", many: true), 
  attributes: attribute.define("id", CDATA, IMPLIED)
)

#let color = element("color", attributes: {
  attribute.define("r", CDATA, REQUIRED, transform: float)
  attribute.define("g", CDATA, REQUIRED, transform: float)
  attribute.define("b", CDATA, REQUIRED, transform: float)
})

#let fonttable = element("fonttable", children: child("font", many: true))
#let font = element("font", attributes: {
    attribute.define("charset", CDATA, REQUIRED)
    attribute.define("id", CDATA, REQUIRED)
    attribute.define("name", CDATA, REQUIRED)
})


#let t = element("t",
  children: children(("s", "objecttag", "annotation")),
  attributes: {
    attribute.alpha
    attribute.BoundingBox
    attribute.CaptionColor
    attribute.CaptionFace
    attribute.CaptionFont
    attribute.CaptionJustification
    attribute.CaptionLineHeight
    attribute.CaptionSize
    attribute.color
    attribute.id
    attribute.IgnoreWarnings
    attribute.InterpretChemically
    attribute.Justification
    attribute.LabelAlignment
    attribute.LabelColor
    attribute.LabelFace
    attribute.LabelFont
    attribute.LabelJustification
    attribute.LabelLineHeight
    attribute.LabelSize
    attribute.LineStarts
    attribute.LineHeight
    attribute.p
    attribute.RotationAngle
    attribute.SupersededBy
    attribute.visible
    attribute.Warning
    attribute.WordWrapWidth
    attribute.Z
  }
)

#let s = element("s",
  children: str,
  attributes: {
    attribute.alpha
    attribute.color
    attribute.face
    attribute.font
    attribute.size
  }
)