#import "chicv.typ": *
#import "libs.typ": *
#import "data.typ": *

#let resume(env) = [
  #show: chicv

  #name(env)

  #links(env)

  #edu(env)

  #interest(env)

  #research(env)

  #work(env)

  #openSource(env)

  #project(env)
  
  #if is-cv(env) {
    new-page(env)
  }

  #skill(env)

  #award(env)

  #pub(env)
]
