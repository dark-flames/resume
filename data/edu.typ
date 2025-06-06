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
      extend: [Advisor: Prof. Atsushi Igarashi]
    ),
    cn: (
      degree: "硕士",
      department: "通信与计算机工程",
      university: "京都大学",
      location: "日本，京都府，京都市",
      time: "2022年4月 - 2024年3月",
      extend: [导师：Atsushi Igarashi 教授]
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
    ),
    cn: (
      degree: "本科",
      department: "计算机科学",
      university: "熊本大学",
      location: "日本，熊本县，熊本市",
      time: "2019年10月 - 2022年3月",
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
    ),
    cn: (
      degree: "本科",
      department: "信息科学与工程学院，物联网工程",
      university: "山东大学",
      location: "中国，山东省，青岛市",
      time: "2017年9月 - 2021年6月",
      extend: []
    )
  )
)

#let edu(env) = {
  multiLang(env, en: [== Education], cn: [== 教育经历])
  let c = eduList(env).map(e => {
    cventry(
        tl: strong(e.university),
        tr: e.time,
        bl: multiLang(
          env,
          en: [*#e.degree* in #e.department],
          cn: [#e.degree, #e.department]
        ),
        br: [#e.location],
      )[#e.extend]
  }).join()
  [#c]
}
