#import "chicv.typ": *
#import "libs.typ": *
#import "data.typ": *

#let resume(env) = [
  #show: chicv.with(
    header-font: get-header-font(env),
    text-font: get-text-font(env)
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
]
