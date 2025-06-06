#import "../libs.typ": *
#import "../chicv.typ": *

#let openSourceList(env) = (
  (
    name: "Aya Prover",
    link: iconlink("https://github.com/aya-prover/aya-dev", icon: github, text: "aya-dev"),
    intro: multiLang(env,
      en: "Practical implementation of a dependent type system",
      cn: "实用的依值类型系统实现",
    ),
    content: multiLang(env,
      en : [
        - Overhauled records to support dependent types.
        - Helped with some bugs and refactorings in primitive definitions.
        - Add new features for pattern matching.
      ],
      cn : [
        - 重构记录以支持依值类型。
        - 重构并修复了一些原始构造中的错误。
        - 为模式匹配实现了新的功能。
      ]
    )
  ),
)

#let openSource(env) = {
  multiLang(env, en: [== OpenSource Contributions], cn: [== 开源贡献])
  let c = openSourceList(env).map(i => {
    cventry(
        tl: [*#i.name*, #i.intro],
        tr: i.link,
    )[#i.content]
  }).join()

  [#c]
}