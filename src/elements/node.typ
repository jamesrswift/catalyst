#import "/src/imports.typ": cetz
#import "/src/core/element.typ": element, child, CDATA, IMPLIED
#import "/src/core/attribute.typ"

#let element = element("n", 
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


#let render(element) = {
  // if element.children.len() > 0 {
  // // cetz.draw.rect(..element.BoundingBox, fill: white, stroke: none)
  //   cetz.draw.circle((),name: element.id, radius: 4, fill: white, stroke: none)
  // } else {
    cetz.draw.anchor(element.id, ())
  // }
}
