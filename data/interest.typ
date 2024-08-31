#import "../libs.typ": *

#let interest = (
  (
    title: "Dependent Type Theory",
    content: [
      - Implementation of dependently typed programming languages, focusing on dependent elaboration and dependent pattern matching.
      - Exploring semantic models and methods for dependent type theories, including categorical semantics, normalization-by-evaluation, and logical relations.
      - Improving the usability of dependently typed programming languages to extend the power of dependent types into general programming.
      - Investigating the integration of dependent types with other type systems, such as gradual typing and effect systems.
    ]
  ),
)

#let interest = {
  
  cv-content({
    multiLang(en: [== Research Interests])
    
    let i = interest.map(s => {
      [*#s.title:* #s.content]
    }).join()

    [#i]
  })
}
