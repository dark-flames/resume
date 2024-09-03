#import "../libs.typ": *

#let interest(env) = {
  
  cv-content(env, {
    multiLang(env, en: [== Research Interests])
    [
      - _Implementing dependently typed programming languages_, focusing on elaboration and pattern matching.
      - Investigating _semantic models and methods of dependent type theories_, including categorical semantics, normalization-by-evaluation, and logical relations.
      - Exploring the _integration of dependent types with other type systems_, such as gradual typing and effect systems.
    ]
  })
}
