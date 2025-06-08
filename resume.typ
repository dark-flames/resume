#import "chicv.typ": *
#import "libs.typ": *
#import "data.typ": *

#let resume(env) = [
  #show: chicv.with(
    header-font: get-header-font(env),
    text-font: get-text-font(env),
    text-size: if is-web-target() { 
      if is-cn(env) { 13pt } else { 14pt }
     } else { 11pt }
  )

  #name(env)

  #links(env)

  #edu(env)

  #interest(env)

  #research(env)

  #work(env)

  #openSource(env)

  #project(env)

  #if is-resume(env) {
    new-page(env)
  }

  #skill(env)

  #award(env)

  #pub(env)

  #align(right, text(fill: gray)[#multiLang(env, en: [Last Updated on], cn: "更新时间：") #trans-today(env)])
]
