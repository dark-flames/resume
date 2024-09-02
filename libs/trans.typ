#import "@preview/shiroa:0.1.0": is-web-target

#let multiLang(env, ..c) = {
  let lang = env.at("x-lang", default: "en")
  c.named().at(lang)
}