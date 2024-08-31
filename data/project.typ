#import "../libs.typ": *
#import "../chicv.typ": *

#let projectList = (
  (
    name: "yukino",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/yukino-dev", icon: github, text: "yukino-dev"),
    intro: "A type-driven and high-performance ORM framework in Rust",
    content: [
      - Derives SQL operations from simple Rust code based on a monadic structure.
      - Provides a functional query builder that delegates its type-checking to the type system of Rust (makes heavy use of type-level computation).
      - The abstraction is type-safe but zero-cost, ensures both efficiency and type safety.
    ],
  ),
  (
    name: "toy-dt-cpp",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/top-dt-cpp", icon: github, text: "top-dt-cpp"),
    intro: "A toy dependently typed language implementation in C++",
    content: [],
  ),
  (
    name: "quote-data",
    cv-content: false,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/quote-data", icon: github, text: "quote-data"),
    intro: "A tokenization library for procedural macros in Rust",
    content: [],
  ),
  (
    name: "annotation-rs",
    cv-content: false,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/annotation-rs", icon: github, text: "annotation-rs"),
    intro: "Compile-time annotation parser for Rust",
    content: [],
  ),
  (
    name: "derivation-resolver",
    cv-content: true,
    resume-content: false,
    link: iconlink("https://github.com/dark-flames/derivation-resolver", icon: github, text: "derivation-resolver"),
    intro: "Derivation tree resolver for STLC and System F in Rust",
    content: [],
  ),
  (
    name: "riscv-cpu",
    cv-content: false,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/RISCV-CPU", icon: github, text: "RISCV-CPU"),
    intro: "Assignment project, a pipelined RISC-V CPU in Verilog",
    content: [],
  ),
)

#let project = {
  multiLang(en: [== Personal Projects], cn: [== 个人项目])
  let content = if(not show-cv-content()) {
    projectList.filter(i => not i.cv-content or i.resume-content)
  } else {
    projectList
  }

  if(not show-resume-content()) {
    content.filter(i => not i.resume-content or i.cv-content)
  } else {
    content
  }.map(i => {
    cventry(
        tl: [*#i.name*, #i.intro],
        tr: i.link,
      )[#i.content]
  }).join()
}