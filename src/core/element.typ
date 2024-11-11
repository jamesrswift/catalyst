
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