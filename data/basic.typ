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
  (
    en-only: false,
    content: [#fa[#envelope] #link("mailto:darkf1ames@pm.me")[darkf1ames\@pm.me]]
  ),(
    en-only: false,
    content: [#fa[#github] #link("https://github.com/dark-flames")[github.com/dark-flames]]
  ),(
    en-only: true,
    content: [#fa[#telegram] #link("https://t.me/Dark_flames")[t.me/Dark_flames]]
  ),(
    en-only: false,
    content: [#fa[#link-icon]#link("https://dark-flames.com")[dark-flames.com]]
  )
)

#let links(env) = {
  linkList.filter(i => is-cn(env) and not i.en-only).map(i => i.content).join([ | ])
}