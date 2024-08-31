#import "@preview/shiroa:0.1.0": is-web-target

#let multiLang(env, ..c) = {
  if is-web-target() {
    c.named().at("en")
  } else {
    let lang = env.at("x-lang", default: "en")
    c.named().at(lang)
  }
}