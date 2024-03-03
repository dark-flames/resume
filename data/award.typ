#import "../libs.typ": *
#import "../chicv.typ": *

#let awardList = (
  (
    name: "National Olympiad in Informatics in Provinces",
    detail: "First Prize",
    intro: "Programming contest held by China Computer Federation",
    date: "Nov, 2015",
    location: "Shandong, China",
    content: []
  ),
)

#let award = {
  multiLang(en: [== Honors and Awards])
  let s = awardList.map(a => {
    cventry(
        tl: [*#a.name*, #a.detail],
        tr: a.date,
        bl: a.intro,
        br: a.location
    )[#a.content]
  }).join()

  [#s]
}