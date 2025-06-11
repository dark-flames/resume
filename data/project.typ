#import "../libs.typ": *
#import "../chicv.typ": *

#let projectList(env) = (
  (
    name: "yukino",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/yukino-dev", icon: github, text: "yukino-dev"),
    intro: multiLang(env, 
      en: "A type-driven and high-performance ORM framework in Rust",
      cn: "本科毕业设计，Rust 实现的类型驱动高性能 ORM 框架"
    ),
    content: multiLang(env, 
      en: [
      - Derived SQL operations from simple Rust code based on a monadic structure.
      - Developed a functional query builder that delegates its type-checking to the type system of Rust.
      - Provided a zero-cost abstraction that ensures both efficiency and type safety.
    ],
      cn: [
      - 基于单子结构和惰性求值从简单的 Rust 代码构建 SQL 操作。
      - 开发了一个函数式的查询构建器，利用 Rust 的类型系统对 SQL 进行检查。
      - 提供了零成本抽象的数据库接口，兼顾效率和安全。
    ]),
  ),(
    name: "otus-formal",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/otus-formal", icon: github, text: "otus-formal"),
    intro: multiLang(env, 
      en: "Normalization by Evaluation for Martin-Löf Type Theory in Agda (WIP)",
      cn: "Agda 实现的 Martin-Löf 类型论的语义正规化（NbE）证明（WIP）"
    ),
    content: [],
  ),
  (
    name: "toy-dt-cpp",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/top-dt-cpp", icon: github, text: "top-dt-cpp"),
    intro: multiLang(env, 
      en: "A simple dependently typed language implementation in C++",
      cn: "C++ 实现的简单依值类型语言"
    ),
    content: [],
  ),
  (
    name: "quote-data",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/quote-data", icon: github, text: "quote-data"),
    intro: multiLang(env, 
      en: "A tokenization library for procedural macros in Rust",
      cn: "为 Rust 过程宏提供的序列化库"
    ),
    content: [],
  ),
  (
    name: "annotation-rs",
    cv-content: true,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/annotation-rs", icon: github, text: "annotation-rs"),
    intro: multiLang(env, 
      en: "Compile-time annotation parser for Rust",
      cn: "Rust 实现的编译时注解解析和处理库"
    ),
    content: [],
  ),
  (
    name: "derivation-resolver",
    cv-content: true,
    resume-content: false,
    link: iconlink("https://github.com/dark-flames/derivation-resolver", icon: github, text: "derivation-resolver"),
    intro: multiLang(env, 
      en: "Derivation tree resolver for STLC and System F in Rust",
      cn: "Rust 实现的 STLC 和 System F 的推导树求解器"
    ),
    content: [],
  ),
  (
    name: "riscv-cpu",
    cv-content: false,
    resume-content: true,
    link: iconlink("https://github.com/dark-flames/RISCV-CPU", icon: github, text: "RISCV-CPU"),
    intro: multiLang(env, 
      en: "Assignment project, a 5 stage pipelined RISC-V CPU in Verilog",
      cn: "课程作业项目，Verilog 实现的 5 级流水线 RISC-V CPU"
    ),
    content: [],
  ),
)

#let project(env) = {
  multiLang(env, en: [== Personal Projects], cn: [== 个人项目])
  let content = if(not show-cv-content(env)) {
    projectList(env).filter(i => not i.cv-content or i.resume-content)
  } else {
    projectList(env)
  }

  if(not show-resume-content(env)) {
    content.filter(i => not i.resume-content or i.cv-content)
  } else {
    content
  }.map(i => {
    cventry(
        tl: multiLang(env, 
          en: [*#i.name*, #i.intro],
          cn: [*#i.name*，#i.intro]
        ),
        tr: i.link,
      )[#i.content]
  }).join()
}