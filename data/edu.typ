#import "../libs.typ": *
#import "../chicv.typ": *

#let eduList(env) = (
  multiLang(
    env,
    en: (
      degree: "Master of Informatics",
      department: "Communication and Computer Engineering",
      university: "Kyoto University",
      location: "Kyoto, Japan",
      time: " Apr, 2022 - Mar, 2024",
      // GPA	3.31 /4.3
      extend: [Advisor: Atsushi Igarashi]
    )
  ),
  multiLang(
    env,
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
    env,
    en: (
      degree: "B.Eng.",
      department: "IoT Engineering",
      university: "Shandong University",
      location: "Qingdao, Shandong, China",
      time: " Sep, 2017 - June, 2021",
      // GPA	3.93 /5.0
      extend: []
    )
  )
)

#let edu(env) = {
  multiLang(env, en: [== Education], ja: [== 教育经历])
  let c = eduList(env).map(e => {
    cventry(
        tl: strong(e.university),
        tr: e.time,
        bl: [*#e.degree* in #e.department],
        br: [#e.location],
      )[#e.extend]
  }).join()
  [#c]
}
