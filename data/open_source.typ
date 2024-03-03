#import "../libs.typ": *
#import "../chicv.typ": *

#let openSourceList = (
  (
    name: "Aya Prover",
    link: iconlink("https://github.com/aya-prover/aya-dev", icon: github, text: "aya-dev"),
    intro: "Practical implementation of a dependent type system",
    content:[
      - Overhauled records to support dependent types.
      - Helped with some bugs and refactorings in primitive definitions.
    ]
  ),
)

#let openSource = {
  multiLang(en: [== OpenSource Contributions], cn: [== 开源贡献])
  let c = openSourceList.map(i => {
    cventry(
        tl: [*#i.name*, #i.intro],
        tr: i.link,
    )[#i.content]
  }).join()

  [#c]
}