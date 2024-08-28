#import "@preview/shiroa:0.1.0": is-web-target

#let multiVersion(..v) = {
  v.named().at(version)
  if is-web-target() {
    v.named().at("full")
  } else {
    import "../config.typ": version
    v.named().at(version)
  }
}