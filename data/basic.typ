#import "../libs.typ": *
#import "../chicv.typ": *

#let name(env) = {
  multiLang(
    env,
    en: [= Zhan Shi],
    cn: [= 施展],
  )
}

#let linkList = (
  [#fa[#envelope] #link("mailto:darkf1ames@pm.me")[darkf1ames\@pm.me]],
  [#fa[#github] #link("https://github.com/dark-flames")[github.com/dark-flames]],
  [#fa[#telegram] #link("https://t.me/Dark_flames")[t.me/Dark_flames]],
  [#fa[#link-icon]#link("https://dark-flames.com")[dark-flames.com]]
)

#let links(env) = {
  linkList.join([ | ])
}