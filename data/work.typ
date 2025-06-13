#import "../libs.typ": *
#import "../chicv.typ": *

#let workList(env) = (
  (
    company: multiLang(env, en : "Luogu", cn : "上海洛谷网络科技有限公司"),
    link: iconlink("https://www.luogu.com.cn", text : "luogu.com.cn"),
    role: multiLang(env, en : "Backend Team Leader, Remote, Part-Time", cn : "后端开发组组长，远程，兼职"),
    location: multiLang(env, en : "Shanghai, China", cn : "中国，上海"),
    time: multiLang(env, en : "Jul, 2017 - Apr, 2023", cn : "2017年7月 - 2023年4月"),
    content: cv-and-others(env, multiLang(env, en : [
        - Led and participated in the backend development of the biggest online-judge platform in China.
        - Designed and developed a backend framework in PHP with dependency injection and container compilation.
        - Optimized and refactored the existing codebase progressively while continuously introducing new features, enabling scalability from tens of thousands to over a million users, and supporting an annual judgment volume of fifty million.
      ], cn : [
        - 参与并领导了中国最大的在线评测平台的后端开发。
        - 设计并开发了具有依赖注入和容器编译功能的 PHP 后端框架。
        - 在不断引入新功能的同时，逐步优化和重构现有代码库，使平台可扩展性从数万用户增加到超过百万用户，并支持每年五千万次的评测量。
      ]
    ), multiLang(env, en : [
        - Led and participated in the backend development of the biggest online-judge platform in China.
        - Designed and developed a backend framework in PHP with dependency injection and container compilation.
        - Designed and led the development of several curial middlewares, including a distributed asynchronous task worker in Rust, a WebSocket server in Python.
        - Optimized and refactored the existing codebase progressively while continuously introducing new features, enabling scalability from tens of thousands to over a million users, and supporting an annual judgment volume of fifty million.
      ], cn : [
        - 参与并领导了中国最大的在线评测平台的后端开发。
        - 设计并开发了具有依赖注入和预热编译功能的 PHP 后端框架。
        - 设计并领导开发了多个关键中间件，包括用 Rust 开发的分布式异步任务工作器和用 Python 开发的 WebSocket 推送服务器。
        - 在不断引入新功能的同时，逐步优化和重构已有代码库，使平台性能支撑用户数从数万增长至百万，并支持每年超过五千万次的评测。
      ]
    ))
  ),
)

#let work(env) = {
  multiLang(env,en: [== Work Experience], cn: [== 工作经历])
  let s = workList(env).map(w => {
    cventry(
        tl: multiLang(env,
          en: [*#w.company*, #w.location],
          cn: [*#w.company*，#w.location]
        ),
        tr: w.link,
        bl: w.role,
        br: w.time
    )[#w.content]
  }).join()

  [#s]
}


