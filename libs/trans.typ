#import "@preview/shiroa:0.1.0": is-web-target

#let multiLang(env, ..c) = {
  let lang = env.at("x-lang", default: "en")
  c.named().at(lang, default: c.named().at("en"))
}

#let header-font = (
  en : (
      "Avenir Next LT Pro",
      "Manrope"
  ),
  cn : (
      "Noto Sans Mono CJK SC",
      "Noto Sans Mono CJK",
      "Avenir Next LT Pro",
      "Manrope"
  )
)

#let text-font = (
  en : (
      "libertinus serif"
  ),
  cn : (
      "Source Han Serif SC",
      "libertinus serif"
  )
)

#let get-header-font(env) = {
  let lang = env.at("x-lang", default: "en")
  header-font.at(lang, default: header-font.at("en"))
}

#let get-text-font(env) = {
  let lang = env.at("x-lang", default: "en")
  text-font.at(lang, default: text-font.at("en"))
}