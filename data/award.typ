#import "../libs.typ": *
#import "../chicv.typ": *

#let awardList(env) = (
  (
    name: multiLang(
      env,
      en: "National Olympiad in Informatics in Provinces",
      cn: "全国青少年信息学奥林匹克联赛"
    ),
    detail: multiLang(
      env,
      en: "First Prize",
      cn: "一等奖"
    ),
    intro: multiLang(
      env,
      en: "Awarded for outstanding performance in the National Olympiad in Informatics in Provinces.",
      cn: ""
    ),
    date: multiLang(
      env,
      en: "Nov, 2015",
      cn: "2015年11月，中国，山东省"
    ),
    location: multiLang(
      env,
      en: "Shandong, China",
      cn: ""
    ),
    content: []
  ),
)

#let award(env) = {
  resume-content(env, {
    multiLang(env, en: [== Honors and Awards], cn: [== 荣誉与奖项])
    let s = awardList(env).map(a => {
      cventry(
          tl: multiLang(env, 
            en: [*#a.name*, #a.detail],
            cn: [*#a.name*，#a.detail]
          ),
          tr: a.date,
          bl: a.intro,
          br: a.location
      )[#a.content]
    }).join()

    [#s]
  })
}