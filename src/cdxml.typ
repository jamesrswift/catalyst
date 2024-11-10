#let CDATA = "CDATA"
#let IMPLIED = "#IMPLIED"
#let REQUIRED = "#REQUIRED"

#let attribute(name, type, decl) = (:
  (name): (:
    type: type,
    decl: decl
  )
)

#let element(name, attributes: (:), children: auto) = (:
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

#let decltype(type) = (: "": type)

#let sequence(body) = {
  decltype("sequence")
}

#let schema = {
  element("CDXML",
    children: {
      child("colortable", many: false)
      child("fonttable", many: false)
      child("page", many: true, optional: false)
      child("templategrid", many: false)
    },
    attributes: {
      attribute("alpha", CDATA, IMPLIED)
      attribute("AminoAcidTermini", ("HOH", "NH2COOH"), "HOH")
      attribute("bgalpha", CDATA, IMPLIED)
      attribute("bgcolor", CDATA, IMPLIED)
      attribute("BoldWidth", CDATA, IMPLIED)
      attribute("BondLength", CDATA, IMPLIED)
      attribute("BondSpacing", CDATA, IMPLIED)
      attribute("BondSpacingAbs", CDATA, IMPLIED)
      attribute("BoundingBox", CDATA, IMPLIED)
      attribute("CaptionColor", CDATA, IMPLIED)
      attribute("CaptionFace", CDATA, IMPLIED)
      attribute("CaptionFont", CDATA, IMPLIED)
      attribute("CaptionJustification", ("Auto", "Left", "Center", "Right", "Full"), "Left")
      attribute("CaptionLineHeight", CDATA, IMPLIED)
      attribute("CaptionSize", CDATA, IMPLIED)
      attribute("CartridgeData", CDATA, IMPLIED)
      attribute("ChainAngle", CDATA, IMPLIED)
      attribute("ChemPropAnalysis", CDATA, IMPLIED)
      attribute("ChemPropBoilingPt", CDATA, IMPLIED)
      attribute("ChemPropCLogP", CDATA, IMPLIED)
      attribute("ChemPropCMR", CDATA, IMPLIED)
      attribute("ChemPropCritPres", CDATA, IMPLIED)
      attribute("ChemPropCritTemp", CDATA, IMPLIED)
      attribute("ChemPropCritVol", CDATA, IMPLIED)
      attribute("ChemPropEForm", CDATA, IMPLIED)
      attribute("ChemPropExactMass", CDATA, IMPLIED)
      attribute("ChemPropFormula", CDATA, IMPLIED)
      attribute("ChemPropGibbs", CDATA, IMPLIED)
      attribute("ChemPropHenry", CDATA, IMPLIED)
      attribute("ChemPropLogP", CDATA, IMPLIED)
      attribute("ChemPropMeltingPt", CDATA, IMPLIED)
      attribute("ChemPropMolWt", CDATA, IMPLIED)
      attribute("ChemPropMOverZ", CDATA, IMPLIED)
      attribute("ChemPropMR", CDATA, IMPLIED)
      attribute("ChemPropName", CDATA, IMPLIED)
      attribute("ChemProptPSA", CDATA, IMPLIED)
      attribute("color", CDATA, IMPLIED)
      attribute("Comment", CDATA, IMPLIED)
      attribute("CreationDate", CDATA, IMPLIED)
      attribute("CreationProgram", CDATA, IMPLIED)
      attribute("CreationUserName", CDATA, IMPLIED)
      attribute("FixInPlaceExtent", CDATA, IMPLIED)
      attribute("FixInPlaceGap", CDATA, IMPLIED)
      attribute("FractionalWidths", ("yes", "no"), "no")
      attribute("HashSpacing", CDATA, IMPLIED)
      attribute("HideImplicitHydrogens", ("yes", "no"), "no")
      attribute("InterpretChemically", ("yes", "no"), "yes")
      attribute("LabelColor", CDATA, IMPLIED)
      attribute("LabelFace", CDATA, IMPLIED)
      attribute("LabelFont", CDATA, IMPLIED)
      attribute("LabelJustification", ("Auto", "Left", "Center", "Right", "Above", "Below", "Best"), "Left")
      attribute("LabelLineHeight", CDATA, IMPLIED)
      attribute("LabelSize", CDATA, IMPLIED)
      attribute("LineWidth", CDATA, IMPLIED)
      attribute("MacPrintInfo", CDATA, IMPLIED)
      attribute("Magnification", CDATA, IMPLIED)
      attribute("MarginWidth", CDATA, IMPLIED)
      attribute("ModificationDate", CDATA, IMPLIED)
      attribute("ModificationProgram", CDATA, IMPLIED)
      attribute("ModificationUserName", CDATA, IMPLIED)
      attribute("Name", CDATA, IMPLIED)
      attribute("PrintMargins", CDATA, IMPLIED)
      attribute("ShowAtomEnhancedStereo", ("yes", "no"), "yes")
      attribute("ShowAtomNumber", ("yes", "no"), "no")
      attribute("ShowAtomQuery", ("yes", "no"), "yes")
      attribute("ShowAtomStereo", ("yes", "no"), "no")
      attribute("ShowBondQuery", ("yes", "no"), "yes")
      attribute("ShowBondRxn", ("yes", "no"), "yes")
      attribute("ShowBondStereo", ("yes", "no"), "no")
      attribute("ShowNonTerminalCarbonLabels", ("yes", "no"), "no")
      attribute("ShowSequenceBonds", ("yes", "no"), "yes")
      attribute("ShowSequenceTermini", ("yes", "no"), "yes")
      attribute("ShowSequenceUnlinkedBranches", ("yes", "no"), "no")
      attribute("ShowTerminalCarbonLabels", ("yes", "no"), "no")
      attribute("WindowIsZoomed", ("yes", "no"), "no")
      attribute("WindowPosition", CDATA, IMPLIED)
      attribute("WindowSize", CDATA, IMPLIED)
      attribute("WinPrintInfo", CDATA, IMPLIED)
      attribute("ChemPropID", CDATA, IMPLIED)
      attribute("ChemPropFragmentLabel", CDATA, IMPLIED)
      attribute("ChemPropLogS", CDATA, IMPLIED)
      attribute("ChemPropPKa", CDATA, IMPLIED)
      attribute("ResidueBlockCount", CDATA, IMPLIED)
      attribute("ResidueWrapCount", CDATA, IMPLIED)
      attribute("RxnAutonumberConditions", CDATA, IMPLIED)
      attribute("RxnAutonumberFormat", CDATA, IMPLIED)
      attribute("RxnAutonumberStart", CDATA, IMPLIED)
      attribute("RxnAutonumberStyle", CDATA, IMPLIED)
      attribute("ShowResidueID", ("yes", "no"), "no")
    }
  )

  element("colortable", children: child("color", many: true), attributes: attribute("id", CDATA, IMPLIED))
  element("color", attributes: {
    attribute("r", CDATA, REQUIRED)
    attribute("g", CDATA, REQUIRED)
    attribute("b", CDATA, REQUIRED)
  })

  element("fonttable", children: child("font", many: true))
  element("font", attributes: {
    attribute("charset", CDATA, REQUIRED)
    attribute("id", CDATA, REQUIRED)
    attribute("name", CDATA, REQUIRED)
  })

  element("page",
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
    },
    attributes: {
      attribute("alpha", CDATA, IMPLIED)
      attribute("bgalpha", CDATA, IMPLIED)
      attribute("bgcolor", CDATA, IMPLIED)
      attribute("BoundingBox", CDATA, IMPLIED)
      attribute("BoundsInParent", CDATA, IMPLIED)
      attribute("color", CDATA, IMPLIED)
      attribute("DrawingSpace", ("poster", "pages"), "pages")
      attribute("Footer", CDATA, IMPLIED)
      attribute("FooterPosition", CDATA, IMPLIED)
      attribute("Height", CDATA, IMPLIED)
      attribute("id", CDATA, IMPLIED)
      attribute("WidthPages", CDATA, "1")
      attribute("Header", CDATA, IMPLIED)
      attribute("HeaderPosition", CDATA, IMPLIED)
      attribute("HeightPages", CDATA, "1")
      attribute("PageDefinition", ("Undefined", "Center", "TL4", "IDTerm", "FlushLeft", "FlushRight", "Reaction1", "Reaction2", "MulticolumnTL4", "MulticolumnNonTL4", "UserDefined"), "Undefined")
      attribute("PageOverlap", CDATA, IMPLIED)
      attribute("PrintTrimMarks", ("yes", "no"), "no")
      attribute("SplitterPositions", CDATA, IMPLIED)
      attribute("Width", CDATA, IMPLIED)
      attribute("Z", CDATA, IMPLIED)
    }
  )

  // TODO: Group element

  element("fragment",
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
      attribute("Absolute", ("yes", "no"), "no")
      attribute("BoundingBox", CDATA, IMPLIED)
      attribute("ConnectionOrder", CDATA, IMPLIED)
      attribute("Formula", CDATA, IMPLIED)
      attribute("id", CDATA, IMPLIED)
      attribute("Relative", ("yes", "no"), "no")
      attribute("Racemic", ("yes", "no"), "no")
      attribute("SequenceType", ("Unknown", "Peptide", "Peptide1", "Peptide3", "DNA", "RNA"), "Unknown")
      attribute("Weight", CDATA, IMPLIED)
      attribute("Z", CDATA, IMPLIED)
    }
  )

  // TODO: t element

  // TODO: s element
  
  element("n", 
    children: {
      child("objecttag")
      child("annotation")
      child("t")
      child("fragment")
    },
    attributes: {
      attribute("AbnormalValence", ("yes", "no"), "no")
      attribute("AltGroupID", CDATA, IMPLIED)
      attribute("AS", CDATA, IMPLIED)
      attribute("AtomID", CDATA, IMPLIED)
      attribute("AtomNumber", CDATA, "6")
      attribute("Attachments", CDATA, IMPLIED)
      attribute("BondOrdering", CDATA, IMPLIED)
      attribute("Charge", CDATA, IMPLIED)
      attribute("color", CDATA, IMPLIED)
      attribute("Element", CDATA, IMPLIED)
      attribute("ElementList", CDATA, IMPLIED)
      attribute("EnhancedStereoGroupNum", CDATA, IMPLIED)
      attribute("EnhancedStereoType", CDATA, IMPLIED)
      attribute("ExternalConnectionType", ("Unspecified", "Diamond", "Star", "PolymerBead", "Wavy", "Residue", "Peptide", "DNA", "RNA", "Terminus", "Sulfide", "Nucleotide", "UnlinkedBranch"), "Unspecified")
      attribute("ExternalConnectionNum", CDATA, IMPLIED)
      attribute("alpha", CDATA, IMPLIED)
      attribute("Formula", CDATA, IMPLIED)
      attribute("FreeSites", CDATA, IMPLIED)
      attribute("Geometry", CDATA, IMPLIED)
      attribute("GenericList", CDATA, IMPLIED)
      attribute("GenericNickname", CDATA, IMPLIED)
      attribute("HDash", ("yes", "no"), "no")
      attribute("HDot", ("yes", "no"), "no")
      attribute("HideImplicitHydrogens", ("yes", "no"), "no")
      attribute("id", CDATA, IMPLIED)
      attribute("IgnoreWarnings", ("yes", "no"), "no")
      attribute("ImplicitHydrogens", ("yes", "no"), "no")
      attribute("Isotope", CDATA, IMPLIED)
      attribute("IsotopicAbundance", CDATA, IMPLIED)
      attribute("LabelDisplay", CDATA, IMPLIED)
      attribute("LabelFace", CDATA, IMPLIED)
      attribute("LabelFont", CDATA, IMPLIED)
      attribute("LabelSize", CDATA, IMPLIED)
      attribute("LineWidth", CDATA, IMPLIED)
      attribute("LinkCountHigh", CDATA, IMPLIED)
      attribute("LinkCountLow", CDATA, IMPLIED)
      attribute("MarginWidth", CDATA, IMPLIED)
      attribute("NeedsClean", ("yes", "no"), "no")
      attribute("NumHydrogens", CDATA, IMPLIED)
      attribute("NodeType", CDATA, IMPLIED)
      attribute("p", CDATA, IMPLIED)
      attribute("Radical", CDATA, IMPLIED)
      attribute("RingBondCount", CDATA, IMPLIED)
      attribute("RxnChange", ("yes", "no"), "no")
      attribute("RxnStereo", CDATA, IMPLIED)
      attribute("ShowAtomEnhancedStereo", CDATA, IMPLIED)
      attribute("ShowAtomID", ("yes", "no"), "no")
      attribute("ShowAtomNumber", CDATA, IMPLIED)
      attribute("ShowAtomQuery", ("yes", "no"), "no")
      attribute("ShowAtomStereo", ("yes", "no"), "no")
      attribute("ShowNonTerminalCarbonLabels", ("yes", "no"), "no")
      attribute("ShowTerminalCarbonLabels", ("yes", "no"), "no")
      attribute("SubstituentsExactly", CDATA, IMPLIED)
      attribute("SubstituentsUpTo", CDATA, IMPLIED)
      attribute("SupersededBy", CDATA, IMPLIED)
      attribute("Translation", CDATA, IMPLIED)
      attribute("UnsaturatedBonds", CDATA, IMPLIED)
      attribute("Visible", ("yes", "no"), "yes")
      attribute("Warning", CDATA, IMPLIED)
      attribute("xyz", CDATA, IMPLIED)
      attribute("Z", CDATA, IMPLIED)
    }
  )

  element("b",
    children: {
      child("objecttag")
      child("annotation")
    },
    attributes: {
      attribute("alpha", CDATA, IMPLIED)
      attribute("B", CDATA, REQUIRED)
      attribute("BeginAttach", CDATA, IMPLIED)
      attribute("BeginExternalNum", CDATA, IMPLIED)
      attribute("BoldWidth", CDATA, IMPLIED)
      attribute("BondCircularOrdering", CDATA, IMPLIED)
      attribute("BondLength", CDATA, IMPLIED)
      attribute("BondSpacing", CDATA, IMPLIED)
      attribute("BondSpacingAbs", CDATA, IMPLIED)
      attribute("BS", ("U", "N", "E", "Z"), "U")
      attribute("color", CDATA, IMPLIED)
      attribute("Connectivity", ("Linear", "Bridged", "Staggered", "Cyclic", "Unspecified"), "Unspecified")
      attribute("CrossingBonds", CDATA, IMPLIED)
      attribute("CrossingBondss", CDATA, IMPLIED)
      attribute("Display", ("Solid", "Dash", "Hash", "WedgedHashBegin", "WedgedHashEnd", "Bold", "WedgeBegin", "WedgeEnd", "Wavy", "HollowWedgeBegin", "HollowWedgeEnd", "WavyWedgeBegin", "WavyWedgeEnd", "Dot", "DashDot"), "Solid")
      attribute("Display2", ("Solid", "Dash", "Hash", "WedgedHashBegin", "WedgedHashEnd", "Bold", "WedgeBegin", "WedgeEnd", "Wavy", "HollowWedgeBegin", "HollowWedgeEnd", "WavyWedgeBegin", "WavyWedgeEnd", "Dot", "DashDot"), "Solid")
      attribute("DoublePosition", ("Center", "Right", "Left"), "Center")
      attribute("E", CDATA, REQUIRED)
      attribute("EndAttach", CDATA, IMPLIED)
      attribute("EndExternalNum", CDATA, IMPLIED)
      attribute("HashSpacing", CDATA, IMPLIED)
      attribute("id", CDATA, IMPLIED)
      attribute("IgnoreWarnings", ("yes", "no"), "no")
      attribute("LabelFace", CDATA, IMPLIED)
      attribute("LabelFont", CDATA, IMPLIED)
      attribute("LabelSize", CDATA, IMPLIED)
      attribute("LineWidth", CDATA, IMPLIED)
      attribute("MarginWidth", CDATA, IMPLIED)
      attribute("Order", CDATA, IMPLIED)
      attribute("RxnParticipation", ("Unspecified", "ReactionCenter", "MakeOrBreak", "ChangeType", "MakeAndChange", "NotReactionCenter", "NoChange", "Unmapped"), "Unspecified")
      attribute("ShowBondQuery", ("yes", "no"), "yes")
      attribute("ShowBondRxn", ("yes", "no"), "yes")
      attribute("ShowBondStereo", ("yes", "no"), "no")
      attribute("SupersededBy", CDATA, IMPLIED)
      attribute("Topology", ("Unspecified", "Ring", "Chain", "RingOrChain"), "Unspecified")
      attribute("Visible", ("yes", "no"), "yes")
      attribute("Warning", CDATA, IMPLIED)
      attribute("Z", CDATA, IMPLIED)

    }
  )

}

#let parse-attribute(input, type, decl) = {
  // TO DO: Better error or warning?
  if decl == REQUIRED and input == none {panic()}
  if std.type(type) == array {
    if input not in type {return decl} else {input}
  } else {
    input
  }
}

#let parse(xml, allowed-children: auto) = {
  if type(xml) == array {
    xml.map((entry)=>{
      if type(entry) == str {

      } else if entry.tag in schema { 
        decltype(entry.tag)
        for (attr, (type, decl)) in schema.at(entry.tag).attributes {
          (: (attr): parse-attribute(entry.attrs.at(attr, default: none), type, decl))
        }
        (: children: parse(entry.children, allowed-children: schema.at(entry.tag).children))
      }
    }).filter((x)=>x!=none)
  }
}