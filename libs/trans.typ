#import "@preview/shiroa:0.1.0": is-web-target

#let multiLang(..c) = {
  if is-web-target() {
    c.named().at("en")
  } else {
    let lang = sys.inputs.at("x-lang", default: "en")
    c.named().at(lang)
  }
}