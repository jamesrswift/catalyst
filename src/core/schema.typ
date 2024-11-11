#import "element.typ"
#import "attribute.typ" as attribute: parse, parse

#let definition = {
  element.CDXML
  element.colortable
  element.color
}

#let decltype(type) = (: "": type)

#let parse(xml, allowed-children: definition.CDXML.children) = {
  if type(xml) == array {
    xml.map((entry)=>{
      if type(entry) == str {

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