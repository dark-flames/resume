#import "../libs.typ": *
#import "../chicv.typ": *

#let projectList = (
  (
    name: "yukino",
    link: iconlink("https://github.com/dark-flames/yukino-dev", icon: github, text: "yukino-dev"),
    intro: "A type-driven and high-performance ORM framework in Rust",
    content: [
      - Derives SQL operations from simple Rust code based on a monadic structure.
      - Provides a functional query builder that delegates its type-checking to the type system of Rust (makes heavy use of type-level computation).
      - The abstraction is type-safe but zero-cost, ensures both efficiency and type safety.
    ],
  ),
  (
    name: "iroha",
    link: iconlink("https://github.com/dark-flames/Iroha", icon: github, text: "iroha"),
    intro: "A tokenization library for procedural macros in Rust",
    content: [],
  ),
  (
    name: "annotation-rs",
    link: iconlink("https://github.com/dark-flames/annotation-rs", icon: github, text: "annotation-rs"),
    intro: "Compile-time annotation parser for Rust",
    content: [],
  ),
  (
    name: "ty-ops",
    link: iconlink("https://github.com/dark-flames/ty-ops", icon: github, text: "ty-ops"),
    intro: "Type-level simply typed lambda calculus in Rust",
    content: [],
  ),
  (
    name: "derivation-resolver",
    link: iconlink("https://github.com/dark-flames/derivation-resolver", icon: github, text: "derivation-resolver"),
    intro: "Derivation tree resolver for STLC and System F in Rust",
    content: [],
  )
)

#let project = {
  multiLang(en: [== Personal Projects], cn: [== 个人项目])
  let c = projectList.map(i => {
    cventry(
        tl: [*#i.name*, #i.intro],
        tr: i.link,
      )[#i.content]
  }).join()

  [#c]
}