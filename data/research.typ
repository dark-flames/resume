#import "../libs.typ": *
#import "../chicv.typ": *

#let researchList = (
  (
    title: "A Cast Calculus for Implementing Gradual Dependent Types",
    intro: "Master's Thesis",
    time: "Jan, 2023 - Feb, 2024",
    advisor: "Prof. Atsushi Igarashi and Prof. Taro Sekiyama",
    group: "Kyoto University",
    location: "Kyoto, Japan",
    content: [
      - Proposed a novel approach to implementing gradual dependent types soundly and efficiently for introducing dependent types into general-purpose programming languages.
      - Introduced a cast calculus as the core language base on dependent pattern matching and pattern unification.
      - Implemented a prototype of the cast calculus in Haskell.
      - Presented a short paper#cite(<PGTT>) at SRC\@SPLASH 2023, giving a talk and a poster presentation.
    ]
  ),
)

#let research = {
  multiLang(en: [== Research Experience], cn: [== 科研经历])
  let c = researchList.map(i => {
    cventry(
        tl: [*#i.title*, #i.intro],
        tr: i.time,
        bl: [#i.group, advised by #i.advisor],
        br: i.location,
      )[#i.content]
  }).join()

  [#c]
}