#import "../libs.typ": *

#let interest(env) = {
  cv-content(env, {
    multiLang(env, en: [== Research Interests], cn: [== 研究兴趣])
    multiLang(env, en : [
      - _Dependent type theory_ and _modal type theory_.
      - _Implementation of dependently typed programming languages_ , focusing on features such as pattern matching.
      - _Semantic models of type theories_, especially categorical semantics, leveraging categorical perspectives to grasp the essence of new language features quickly.
      - _Semantics-based approaches for programming languages_, such as normalization-by-evaluation and logical relations.
      - _Dependent version of practical type systems_, such as gradual typing and effect systems.
    ], cn: [
      - 依值类型论和模态类型论
      - 依值类型语言的实现，主要关注繁饰（elaboration）和模式匹配。
      - 类型论的语义模型，尤其是范畴语义，可以利用范畴视角快速掌握新语言特性。
      - 基于语义的编程语言研究方法，如语义正规性（normalization by evaluation）和 logical relation。
      - 各种实用类型系统的依值类型改进，比如渐进类型（gradual typing）和效应类型 （effect type）。
    ])
  })
}
