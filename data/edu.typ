#import "../libs.typ": *
#import "../chicv.typ": *

#let eduList = (
  multiLang(
    en: (
      degree: "Master of Informatics",
      department: "Commucation and Computer Engineering",
      university: "Kyoto University",
      location: "Kyoto, Japan",
      time: " Apr, 2022 - Mar, 2024",
      extend: [Advisor: Atsushi Igarashi]
    )
  ),
  multiLang(
    en: (
      degree: "B.Eng.",
      department: "Computer Science",
      university: "Kumamoto University",
      location: "Kumamoto, Japan",
      time: " Oct, 2019 - March, 2022",
      extend: []
    )
  ),
  multiLang(
    en: (
      degree: "B.Eng.",
      department: "IoT Engineering",
      university: "Shandong University",
      location: "Qingdao, Shandong, China",
      time: " Sep, 2017 - June, 2021",
      extend: []
    )
  )
)

#let edu = {
  multiLang(en: [== Education], ja: [== 教育经历])
  let c = eduList.map(e => {
    cventry(
        tl: strong(e.university),
        tr: e.time,
        bl: [#e.degree in #e.department],
        br: [#e.location],
      )[#e.extend]
  }).join()
  [#c]
}
