
#let CDATA = "CDATA"
#let IMPLIED = "#IMPLIED"
#let REQUIRED = "#REQUIRED"

#let define(name, type, decl, transform: none) = (:
  (name): (:
    type: type,
    decl: decl,
    transform: transform
  )
)

#let define-implied-cdata(name, transform: none) = {
  define(name, CDATA, IMPLIED, transform: transform)
}

#let alpha            = define-implied-cdata("alpha")
#let AminoAcidTermini = define("AminoAcidTermini", ("HOH", "NH2COOH"), "HOH")
#let bgalpha          = define-implied-cdata("bgalpha")
#let bgcolor          = define-implied-cdata("bgcolor")
#let BoldWidth        = define-implied-cdata("BoldWidth")
#let BondLength       = define-implied-cdata("BondLength")
#let BondSpacing      = define-implied-cdata("BondSpacing")
#let BondSpacingAbs   = define-implied-cdata("BondSpacingAbs")
#let BoundingBox      = define-implied-cdata("BoundingBox")
#let CaptionColor     = define-implied-cdata("CaptionColor")
#let CaptionFace      = define-implied-cdata("CaptionFace")
#let CaptionFont      = define-implied-cdata("CaptionFont")
#let CaptionJustification = define("CaptionJustification", ("Auto", "Left", "Center", "Right", "Full"), "Left")
#let CaptionLineHeight    = define-implied-cdata("CaptionLineHeight")
#let CaptionSize      = define-implied-cdata("CaptionSize")
#let CartridgeData    = define-implied-cdata("CartridgeData")
#let ChainAngle       = define-implied-cdata("ChainAngle")
#let ChemPropAnalysis = define-implied-cdata("ChemPropAnalysis")
#let ChemPropBoilingPt= define-implied-cdata("ChemPropBoilingPt")
#let ChemPropCLogP    = define-implied-cdata("ChemPropCLogP")
#let ChemPropCMR      = define-implied-cdata("ChemPropCMR")
#let ChemPropCritPres = define-implied-cdata("ChemPropCritPres")
#let ChemPropCritTemp = define-implied-cdata("ChemPropCritTemp")
#let ChemPropCritVol  = define-implied-cdata("ChemPropCritVol")
#let ChemPropEForm    = define-implied-cdata("ChemPropEForm")
#let ChemPropExactMass= define-implied-cdata("ChemPropExactMass")
#let ChemPropFormula  = define-implied-cdata("ChemPropFormula")
#let ChemPropGibbs    = define-implied-cdata("ChemPropGibbs")
#let ChemPropHenry    = define-implied-cdata("ChemPropHenry")
#let ChemPropLogP     = define-implied-cdata("ChemPropLogP")
#let ChemPropMeltingPt= define-implied-cdata("ChemPropMeltingPt")
#let ChemPropMolWt    = define-implied-cdata("ChemPropMolWt")
#let ChemPropMOverZ   = define-implied-cdata("ChemPropMOverZ")
#let ChemPropMR       = define-implied-cdata("ChemPropMR")
#let ChemPropName     = define-implied-cdata("ChemPropName")
#let ChemProptPSA     = define-implied-cdata("ChemProptPSA")
#let color            = define-implied-cdata("color")
#let Comment          = define-implied-cdata("Comment")
#let CreationDate     = define-implied-cdata("CreationDate")
#let CreationProgram  = define-implied-cdata("CreationProgram")
#let CreationUserName = define-implied-cdata("CreationUserName")
#let FixInPlaceExtent = define-implied-cdata("FixInPlaceExtent")
#let FixInPlaceGap    = define-implied-cdata("FixInPlaceGap")
#let FractionalWidths = define("FractionalWidths", ("yes", "no"), "no")
#let HashSpacing      = define-implied-cdata("HashSpacing")
#let HideImplicitHydrogens  = define("HideImplicitHydrogens", ("yes", "no"), "no")
#let InterpretChemically    = define("InterpretChemically", ("yes", "no"), "yes")
#let LabelColor             = define-implied-cdata("LabelColor")
#let LabelFace              = define-implied-cdata("LabelFace")
#let LabelFont              = define-implied-cdata("LabelFont")
#let LabelJustification     = define("LabelJustification", ("Auto", "Left", "Center", "Right", "Above", "Below", "Best"), "Left")
#let LabelLineHeight        = define-implied-cdata("LabelLineHeight")
#let LabelSize              = define-implied-cdata("LabelSize")
#let LineWidth              = define-implied-cdata("LineWidth")
#let MacPrintInfo           = define-implied-cdata("MacPrintInfo")
#let Magnification          = define-implied-cdata("Magnification")
#let MarginWidth            = define-implied-cdata("MarginWidth")
#let ModificationDate       = define-implied-cdata("ModificationDate")
#let ModificationProgram    = define-implied-cdata("ModificationProgram")
#let ModificationUserName   = define-implied-cdata("ModificationUserName")
#let Name                   = define-implied-cdata("Name")
#let PrintMargins           = define-implied-cdata("PrintMargins")
#let ShowAtomEnhancedStereo = define("ShowAtomEnhancedStereo", ("yes", "no"), "yes")
#let ShowAtomNumber   = define("ShowAtomNumber", ("yes", "no"), "no")
#let ShowAtomQuery    = define("ShowAtomQuery", ("yes", "no"), "yes")
#let ShowAtomStereo   = define("ShowAtomStereo", ("yes", "no"), "no")
#let ShowBondQuery    = define("ShowBondQuery", ("yes", "no"), "yes")
#let ShowBondRxn      = define("ShowBondRxn", ("yes", "no"), "yes")
#let ShowBondStereo   = define("ShowBondStereo", ("yes", "no"), "no")
#let ShowNonTerminalCarbonLabels  = define("ShowNonTerminalCarbonLabels", ("yes", "no"), "no")
#let ShowSequenceBonds            = define("ShowSequenceBonds", ("yes", "no"), "yes")
#let ShowSequenceTermini          = define("ShowSequenceTermini", ("yes", "no"), "yes")
#let ShowSequenceUnlinkedBranches = define("ShowSequenceUnlinkedBranches", ("yes", "no"), "no")
#let ShowTerminalCarbonLabels     = define("ShowTerminalCarbonLabels", ("yes", "no"), "no")
#let WindowIsZoomed   = define("WindowIsZoomed", ("yes", "no"), "no")
#let WindowPosition   = define-implied-cdata("WindowPosition")
#let WindowSize       = define-implied-cdata("WindowSize")
#let WinPrintInfo     = define-implied-cdata("WinPrintInfo")
#let ChemPropID                   = define-implied-cdata("ChemPropID")
#let ChemPropFragmentLabel        = define-implied-cdata("ChemPropFragmentLabel")
#let ChemPropLogS                 = define-implied-cdata("ChemPropLogS")
#let ChemPropPKa                  = define-implied-cdata("ChemPropPKa")
#let ResidueBlockCount            = define-implied-cdata("ResidueBlockCount")
#let ResidueWrapCount             = define-implied-cdata("ResidueWrapCount",)
#let RxnAutonumberConditions      = define-implied-cdata("RxnAutonumberConditions")
#let RxnAutonumberFormat          = define-implied-cdata("RxnAutonumberFormat")
#let RxnAutonumberStart           = define-implied-cdata("RxnAutonumberStart")
#let RxnAutonumberStyle           = define-implied-cdata("RxnAutonumberStyle")
#let ShowResidueID    = define("ShowResidueID", ("yes", "no"), "no")

#let id = define("id", CDATA, REQUIRED)
#let Z = define("Z", CDATA, IMPLIED)

#let parse(input, attr-def) = {
  // TO DO: Better error or warning?
  if attr-def.decl == REQUIRED and input == none {panic()}
  
  if std.type(attr-def.type) == array {
    if input not in attr-def.type {input = (attr-def.decl)}
  } 

  if attr-def.transform != none {return (attr-def.transform)(input)}
  else {input}

}