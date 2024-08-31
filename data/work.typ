#import "../libs.typ": *
#import "../chicv.typ": *

#let workList = (
  (
    company: "Luogu",
    link: iconlink("https://luogu.com", text: "luogu.com"),
    role: "Backend Team Leader, Remote, Part-Time",
    location: "Shanghai, China",
    time: "Jul, 2017 - Apr, 2023",
    content: [
      - Led and participated in the backend development of the biggest online-judge platform in China.
      - Designed and developed a back-end framework in PHP with dependency injection and container compilation.
      - Designed and led the development of several curial middlewares, including a distributed asynchronous task worker in Rust, a WebSocket server in Python.
      - While continuously introducing new features, progressively optimized and refactored the existing codebase, enabling scalability from tens of thousands to over a million users, and supported an annual judgment volume of fifty million.
    ]
  ),
)

#let work = {
  resume-content({
    multiLang(en: [== Work Experience], cn: [== 工作经历])
    let s = workList.map(w => {
      cventry(
          tl: [*#w.company*, #w.location],
          tr: w.link,
          bl: w.role,
          br: w.time
      )[#w.content]
    }).join()

    [#s]
  })
}


