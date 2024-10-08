#import "../libs.typ": *
#import "../chicv.typ": *

#let workList(env) = (
  (
    company: "Luogu",
    link: iconlink("https://luogu.com", text: "luogu.com"),
    role: "Backend Team Leader, Remote, Part-Time",
    location: "Shanghai, China",
    time: "Jul, 2017 - Apr, 2023",
    content: cv-and-others(env, [
      - Led and participated in the backend development of the biggest online-judge platform in China.
      - Designed and developed a backend framework in PHP with dependency injection and container compilation.
      - Optimized and refactored the existing codebase progressively while continuously introducing new features, enabling scalability from tens of thousands to over a million users, and supporting an annual judgment volume of fifty million.
    ], [
      - Led and participated in the backend development of the biggest online-judge platform in China.
      - Designed and developed a backend framework in PHP with dependency injection and container compilation.
      - Designed and led the development of several curial middlewares, including a distributed asynchronous task worker in Rust, a WebSocket server in Python.
      - Optimized and refactored the existing codebase progressively while continuously introducing new features, enabling scalability from tens of thousands to over a million users, and supporting an annual judgment volume of fifty million.
    ])
  ),
)

#let work(env) = {
  multiLang(env,en: [== Work Experience], cn: [== 工作经历])
  let s = workList(env).map(w => {
    cventry(
        tl: [*#w.company*, #w.location],
        tr: w.link,
        bl: w.role,
        br: w.time
    )[#w.content]
  }).join()

  [#s]
}


