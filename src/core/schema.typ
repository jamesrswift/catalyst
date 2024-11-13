#import "element.typ"
#import "attribute.typ" as attribute: parse, parse

#import "/src/elements/bond.typ"
#import "/src/elements/CDXML.typ"
#import "/src/elements/fragment.typ"
#import "/src/elements/group.typ"
#import "/src/elements/node.typ"
#import "/src/elements/page.typ"

#let definition = {
  CDXML.element
  element.colortable
  element.color
  element.fonttable
  element.font
  page.element
  group.element
  fragment.element
  element.t
  element.s
  node.element
  bond.element
}

#let decltype(type) = (: "": type)

#let parse(xml, allowed-children: definition.CDXML.children) = {
  if type(xml) == array {
    xml.map((entry)=>{
      if type(entry) == str {
        if allowed-children == str {return entry}
        return
      } else if entry.tag in definition { 
        decltype(entry.tag)
        for (attr, attr-def) in definition.at(entry.tag).attributes {
          (: (attr): attribute.parse(entry.attrs.at(attr, default: none), attr-def))
        }
        if allowed-children.len() > 0{
          (: children: parse(entry.children, allowed-children: definition.at(entry.tag).children))
        }
        
      }
    }).filter((x)=>x!=none)
  }
}