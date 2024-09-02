#import "../libs.typ": *

#let interest(env) = {
  
  cv-content(env, {
    multiLang(env, en: [== Research Interests])
    [
      - *Implementing dependently typed programming languages*, focusing on elaboration and pattern matching.
      - Investigating *semantic models and methods of dependent type theories*, including categorical semantics, normalization-by-evaluation, and logical relations.
      - Exploring the *integration of dependent types with other type systems*, such as gradual typing and effect systems.
    ]
  })
}
