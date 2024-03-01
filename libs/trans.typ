#let EN = "en"
#let CN = "cn"
#let lang = EN

#let setLang(l) = {
  lang = l
}
#let multiLang(..c) = {
  c.named().at(lang)
}