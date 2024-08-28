#import "@preview/shiroa:0.1.0": is-web-target

#let multiLang(..c) = {
  if is-web-target() {
    c.named().at("en")
  } else {
    import "../config.typ": lang
    c.named().at(lang)
  }
}