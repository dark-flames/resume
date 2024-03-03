#import "../config.typ": lang

#let multiLang(..c) = {
  c.named().at(lang)
}