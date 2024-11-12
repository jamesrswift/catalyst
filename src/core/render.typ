#import "/src/imports.typ": cetz

#let _el-type(el, type) = el.at("", default: none) == type

#let copy-recursive-optional( keys, dict, default: (:) ) = {
  let (key, ..remaining) = keys
  if remaining.len() == 0 {return dict.at(key, default: default)}
  let entry = dict.at(key, default: none)
  if entry == none {return default}
  return copy-recursive-optional( remaining, entry, default: (:) )
}

#let set-recursive-optional( parent, keys, value ) = {
  let curr = parent
  let ancestry = ()
  for key in keys {
    ancestry.push(curr)
    curr = curr.at(key, default: (:))
  }
  curr = value
  for (key, var) in keys.enumerate().rev() {
    curr = (
      ..ancestry.at(key),
      (var): curr
    )
  }
  return curr
}

#let contextualize-attributes(keys, attrs) = cetz.draw.set-ctx( ctx => {
  set-recursive-optional( 
    ctx, keys, cetz.util.merge-dictionary(
      copy-recursive-optional( keys, ctx ), 
      attrs
    )
  )
})

#import "handlers.typ"

#let handlers = dictionary(handlers)

#let render(element) = {
  assert(
    type(element) == dictionary, 
    message: "Expected dictionary, got " + type(element)
  )

  cetz.draw.scope({

    let (..attrs, children) = element

    contextualize-attributes(("catalyst", element.at("")), attrs)

    if "p" in attrs {cetz.draw.move-to(attrs.p)}

    for child in children {
      if type(child) == dictionary {render(child)}
    }

    if element.at("") in handlers {
      (handlers.at(element.at("")))(element)
    }

  })
}
