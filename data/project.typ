#import "../libs.typ": *
#import "../chicv.typ": *

#let projectList = (
  (
    name: "iroha",
    link: iconlink("https://github.com/dark-flames/Iroha", icon: github, text: "iroha"),
    intro: "A tokenization library for Rust",
    content: [],
  ),
  (
    name: "annotation-rs",
    link: iconlink("https://github.com/dark-flames/annotation-rs", icon: github, text: "annotation-rs"),
    intro: "Compile-time annotation parser for Rust",
    content: [],
  ),
)

#let project = {
  multiLang(en: [== Personal Project], cn: [== 个人项目])
  let c = projectList.map(i => {
    cventry(
        tl: [*#i.name*, #i.intro],
        tr: i.link,
      )[#i.content]
  }).join()

  [#c]
}