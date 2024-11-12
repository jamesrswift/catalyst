
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

#let CDXML = element("CDXML",
    children: {
      child("colortable", many: false)
      child("fonttable", many: false)
      child("page", many: true, optional: false)
      child("templategrid", many: false)
    },
    attributes: {
      attribute.alpha
      attribute.AminoAcidTermini
      attribute.bgalpha
      attribute.bgcolor
      attribute.BoldWidth
      attribute.BondLength
      attribute.BondSpacing
      attribute.BondSpacingAbs
      attribute.BoundingBox
      attribute.CaptionColor
      attribute.CaptionFace
      attribute.CaptionFont
      attribute.CaptionJustification
      attribute.CaptionLineHeight
      attribute.CaptionSize
      attribute.CartridgeData
      attribute.ChainAngle
      attribute.ChemPropAnalysis
      attribute.ChemPropBoilingPt
      attribute.ChemPropCLogP
      attribute.ChemPropCMR
      attribute.ChemPropCritPres
      attribute.ChemPropCritTemp
      attribute.ChemPropCritVol
      attribute.ChemPropEForm
      attribute.ChemPropExactMass
      attribute.ChemPropFormula
      attribute.ChemPropGibbs
      attribute.ChemPropHenry
      attribute.ChemPropLogP
      attribute.ChemPropMeltingPt
      attribute.ChemPropMolWt
      attribute.ChemPropMOverZ
      attribute.ChemPropMR
      attribute.ChemPropName
      attribute.ChemProptPSA
      attribute.color
      attribute.Comment
      attribute.CreationDate
      attribute.CreationProgram
      attribute.CreationUserName
      attribute.FixInPlaceExtent
      attribute.FixInPlaceGap
      attribute.FractionalWidths
      attribute.HashSpacing
      attribute.HideImplicitHydrogens
      attribute.InterpretChemically
      attribute.LabelColor
      attribute.LabelFace
      attribute.LabelFont
      attribute.LabelJustification
      attribute.LabelLineHeight
      attribute.LabelSize
      attribute.LineWidth
      attribute.MacPrintInfo
      attribute.Magnification
      attribute.MarginWidth
      attribute.ModificationDate
      attribute.ModificationProgram
      attribute.ModificationUserName
      attribute.Name
      attribute.PrintMargins
      attribute.ShowAtomEnhancedStereo
      attribute.ShowAtomNumber
      attribute.ShowAtomQuery
      attribute.ShowAtomStereo
      attribute.ShowBondQuery
      attribute.ShowBondRxn
      attribute.ShowBondStereo
      attribute.ShowNonTerminalCarbonLabels
      attribute.ShowSequenceBonds
      attribute.ShowSequenceTermini
      attribute.ShowSequenceUnlinkedBranches
      attribute.ShowTerminalCarbonLabels
      attribute.WindowIsZoomed
      attribute.WindowPosition
      attribute.WindowSize
      attribute.WinPrintInfo
      attribute.ChemPropID
      attribute.ChemPropFragmentLabel
      attribute.ChemPropLogS
      attribute.ChemPropPKa
      attribute.ResidueBlockCount
      attribute.ResidueWrapCount
      attribute.RxnAutonumberConditions
      attribute.RxnAutonumberFormat
      attribute.RxnAutonumberStart
      attribute.RxnAutonumberStyle
      attribute.ShowResidueID
    }
  )

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

#let page = element("page",
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
    attribute.define("BoundsInParent", CDATA, IMPLIED)
    attribute.color
    attribute.define("DrawingSpace", ("poster", "pages"), "pages")
    attribute.define("Footer", CDATA, IMPLIED)
    attribute.define("FooterPosition", CDATA, IMPLIED)
    attribute.define("Height", CDATA, IMPLIED)
    attribute.id
    attribute.define("WidthPages", CDATA, "1")
    attribute.define("Header", CDATA, IMPLIED)
    attribute.define("HeaderPosition", CDATA, IMPLIED)
    attribute.define("HeightPages", CDATA, "1")
    attribute.define("PageDefinition", ("Undefined", "Center", "TL4", "IDTerm", "FlushLeft", "FlushRight", "Reaction1", "Reaction2", "MulticolumnTL4", "MulticolumnNonTL4", "UserDefined"), "Undefined")
    attribute.define("PageOverlap", CDATA, IMPLIED)
    attribute.define("PrintTrimMarks", ("yes", "no"), "no")
    attribute.define("SplitterPositions", CDATA, IMPLIED)
    attribute.define("Width", CDATA, IMPLIED)
    attribute.Z
  }
)

#let group =   element("group",
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

#let fragment = element("fragment",
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
    attribute.define("ConnectionOrder", CDATA, IMPLIED)
    attribute.define("Formula", CDATA, IMPLIED)
    attribute.id
    attribute.define("Relative", ("yes", "no"), "no")
    attribute.define("Racemic", ("yes", "no"), "no")
    attribute.define("SequenceType", ("Unknown", "Peptide", "Peptide1", "Peptide3", "DNA", "RNA"), "Unknown")
    attribute.define("Weight", CDATA, IMPLIED)
    attribute.Z
  }
)

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

#let n = element("n", 
    children: {
      child("objecttag")
      child("annotation")
      child("t")
      child("fragment")
    },
    attributes: {
      attribute.define("AbnormalValence", ("yes", "no"), "no")
      attribute.define("AltGroupID", CDATA, IMPLIED)
      attribute.define("AS", CDATA, IMPLIED)
      attribute.define("AtomID", CDATA, IMPLIED)
      attribute.define("AtomNumber", CDATA, "6")
      attribute.define("Attachments", CDATA, IMPLIED)
      attribute.define("BondOrdering", CDATA, IMPLIED)
      attribute.define("Charge", CDATA, IMPLIED)
      attribute.color
      attribute.define("Element", CDATA, IMPLIED)
      attribute.define("ElementList", CDATA, IMPLIED)
      attribute.define("EnhancedStereoGroupNum", CDATA, IMPLIED)
      attribute.define("EnhancedStereoType", CDATA, IMPLIED)
      attribute.define("ExternalConnectionType", ("Unspecified", "Diamond", "Star", "PolymerBead", "Wavy", "Residue", "Peptide", "DNA", "RNA", "Terminus", "Sulfide", "Nucleotide", "UnlinkedBranch"), "Unspecified")
      attribute.define("ExternalConnectionNum", CDATA, IMPLIED)
      attribute.alpha
      attribute.define("Formula", CDATA, IMPLIED)
      attribute.define("FreeSites", CDATA, IMPLIED)
      attribute.define("Geometry", CDATA, IMPLIED)
      attribute.define("GenericList", CDATA, IMPLIED)
      attribute.define("GenericNickname", CDATA, IMPLIED)
      attribute.define("HDash", ("yes", "no"), "no")
      attribute.define("HDot", ("yes", "no"), "no")
      attribute.define("HideImplicitHydrogens", ("yes", "no"), "no")
      attribute.id
      attribute.define("IgnoreWarnings", ("yes", "no"), "no")
      attribute.define("ImplicitHydrogens", ("yes", "no"), "no")
      attribute.define("Isotope", CDATA, IMPLIED)
      attribute.define("IsotopicAbundance", CDATA, IMPLIED)
      attribute.define("LabelDisplay", CDATA, IMPLIED)
      attribute.define("LabelFace", CDATA, IMPLIED)
      attribute.define("LabelFont", CDATA, IMPLIED)
      attribute.define("LabelSize", CDATA, IMPLIED)
      attribute.define("LineWidth", CDATA, IMPLIED)
      attribute.define("LinkCountHigh", CDATA, IMPLIED)
      attribute.define("LinkCountLow", CDATA, IMPLIED)
      attribute.define("MarginWidth", CDATA, IMPLIED)
      attribute.define("NeedsClean", ("yes", "no"), "no")
      attribute.define("NumHydrogens", CDATA, IMPLIED)
      attribute.define("NodeType", CDATA, IMPLIED)
      attribute.p
      attribute.define("Radical", CDATA, IMPLIED)
      attribute.define("RingBondCount", CDATA, IMPLIED)
      attribute.define("RxnChange", ("yes", "no"), "no")
      attribute.define("RxnStereo", CDATA, IMPLIED)
      attribute.define("ShowAtomEnhancedStereo", CDATA, IMPLIED)
      attribute.define("ShowAtomID", ("yes", "no"), "no")
      attribute.define("ShowAtomNumber", CDATA, IMPLIED)
      attribute.define("ShowAtomQuery", ("yes", "no"), "no")
      attribute.define("ShowAtomStereo", ("yes", "no"), "no")
      attribute.define("ShowNonTerminalCarbonLabels", ("yes", "no"), "no")
      attribute.define("ShowTerminalCarbonLabels", ("yes", "no"), "no")
      attribute.define("SubstituentsExactly", CDATA, IMPLIED)
      attribute.define("SubstituentsUpTo", CDATA, IMPLIED)
      attribute.define("SupersededBy", CDATA, IMPLIED)
      attribute.define("Translation", CDATA, IMPLIED)
      attribute.define("UnsaturatedBonds", CDATA, IMPLIED)
      attribute.define("Visible", ("yes", "no"), "yes")
      attribute.define("Warning", CDATA, IMPLIED)
      attribute.define("xyz", CDATA, IMPLIED)
      attribute.define("Z", CDATA, IMPLIED)
    }
  )


#let b = element("b",
    children: {
      child("objecttag")
      child("annotation")
    },
    attributes: {
      attribute.alpha
      attribute.define("B", CDATA, REQUIRED)
      attribute.define("BeginAttach", CDATA, IMPLIED)
      attribute.define("BeginExternalNum", CDATA, IMPLIED)
      attribute.define("BoldWidth", CDATA, IMPLIED)
      attribute.define("BondCircularOrdering", CDATA, IMPLIED)
      attribute.define("BondLength", CDATA, IMPLIED)
      attribute.define("BondSpacing", CDATA, IMPLIED)
      attribute.define("BondSpacingAbs", CDATA, IMPLIED)
      attribute.define("BS", ("U", "N", "E", "Z"), "U")
      attribute.define("color", CDATA, IMPLIED)
      attribute.define("Connectivity", ("Linear", "Bridged", "Staggered", "Cyclic", "Unspecified"), "Unspecified")
      attribute.define("CrossingBonds", CDATA, IMPLIED)
      attribute.define("CrossingBondss", CDATA, IMPLIED)
      attribute.define("Display", ("Solid", "Dash", "Hash", "WedgedHashBegin", "WedgedHashEnd", "Bold", "WedgeBegin", "WedgeEnd", "Wavy", "HollowWedgeBegin", "HollowWedgeEnd", "WavyWedgeBegin", "WavyWedgeEnd", "Dot", "DashDot"), "Solid")
      attribute.define("Display2", ("Solid", "Dash", "Hash", "WedgedHashBegin", "WedgedHashEnd", "Bold", "WedgeBegin", "WedgeEnd", "Wavy", "HollowWedgeBegin", "HollowWedgeEnd", "WavyWedgeBegin", "WavyWedgeEnd", "Dot", "DashDot"), "Solid")
      attribute.define("DoublePosition", ("Center", "Right", "Left"), "Center")
      attribute.define("E", CDATA, REQUIRED)
      attribute.define("EndAttach", CDATA, IMPLIED)
      attribute.define("EndExternalNum", CDATA, IMPLIED)
      attribute.define("HashSpacing", CDATA, IMPLIED)
      attribute.define("id", CDATA, IMPLIED)
      attribute.define("IgnoreWarnings", ("yes", "no"), "no")
      attribute.define("LabelFace", CDATA, IMPLIED)
      attribute.define("LabelFont", CDATA, IMPLIED)
      attribute.define("LabelSize", CDATA, IMPLIED)
      attribute.define("LineWidth", CDATA, IMPLIED)
      attribute.define("MarginWidth", CDATA, IMPLIED)
      attribute.define("Order", CDATA, IMPLIED)
      attribute.define("RxnParticipation", ("Unspecified", "ReactionCenter", "MakeOrBreak", "ChangeType", "MakeAndChange", "NotReactionCenter", "NoChange", "Unmapped"), "Unspecified")
      attribute.define("ShowBondQuery", ("yes", "no"), "yes")
      attribute.define("ShowBondRxn", ("yes", "no"), "yes")
      attribute.define("ShowBondStereo", ("yes", "no"), "no")
      attribute.define("SupersededBy", CDATA, IMPLIED)
      attribute.define("Topology", ("Unspecified", "Ring", "Chain", "RingOrChain"), "Unspecified")
      attribute.define("Visible", ("yes", "no"), "yes")
      attribute.define("Warning", CDATA, IMPLIED)
      attribute.Z

    }
  )