#import "../libs.typ": *
#import "../chicv.typ": *

#let researchList(env) = (
  (
    title: "A Cast Calculus for Implementing Gradual Dependent Types",
    intro: multiLang(env, en: "Master's Thesis", cn: "硕士论文"),
    time: multiLang(env, en: "Jan, 2023 - Feb, 2024", cn: "2023年1月 - 2024年2月"),
    advisor: multiLang(env, en: "Prof. Atsushi Igarashi and Prof. Taro Sekiyama", cn: "Atsushi Igarashi 教授和 Taro Sekiyama  教授"),
    group: multiLang(env, en: "Kyoto University", cn: "京都大学"),
    location: multiLang(env, en: "Kyoto, Japan", cn: "日本，京都府"),
    content: resume-and-others(env, 
      multiLang(env , 
        en : [
          - Proposed a novel approach to implementing gradual dependent types soundly and efficiently for introducing dependent types into general-purpose programming languages. 
          - Introduced a cast calculus as the core language based on dependent pattern matching and pattern unification.
          - Implemented a prototype of the cast calculus in Haskell.
          - Presented a short paper#cite(<PGTT>) at SRC\@SPLASH 2023, delivering both a talk and a poster presentation.
        ],
        cn : [
          - 提出了一种渐进依值类型的实现方法，可以正确高效的将依值类型引入通用编程语言。
          - 基于依值模式匹配和模式归一化 （pattern unification）实现了核心语言的类型转换。
          - 使用 Haskell 实现了原型语言的类型检查与解释器。
          - 在 SRC\@SPLASH 2023 上发表了一篇短论文#cite(<PGTT>)，进行了演讲和海报展示。
        ]
      ), multiLang(env,
        en : [
          - Proposed a novel approach to the consistent and efficient implementation of gradual dependent types, which introduced modality into the type system and combined static elaboration with runtime pattern unification.
          - Implemented a prototype of the cast calculus in Haskell.
          - Presented a short paper#cite(<PGTT>) at SRC\@SPLASH 2023, delivering both a talk and a poster presentation.
        ],
        cn : [
          - 提出了一种兼顾逻辑一致性和效率的渐进依值类型实现方法：在类型系统中引入了模态并组合使用静态繁饰与动态模式归一化 （pattern unification）。
          - 使用 Haskell 实现了原型语言的类型检查与解释器。
          - 在 SRC\@SPLASH 2023 上发表了一篇短论文#cite(<PGTT>)，进行了演讲和海报展示。
        ]
      ))
  ),
)

#let research(env) = {
  multiLang(env, en: [== Research Experience], cn: [== 科研经历])
  let c = researchList(env).map(i => {
    cventry(
        tl: multiLang(env, 
          en: [*#i.title*, #i.intro],
          cn: [*#i.title*，#i.intro]
        ),
        tr: i.time,
        bl: multiLang(env, en: [#i.group, advised by #i.advisor], cn: [#i.group，指导教授： #i.advisor]),
        br: i.location,
      )[#i.content]
  }).join()

  [#c]
}