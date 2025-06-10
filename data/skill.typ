#import "../libs.typ": *
#import "../chicv.typ": *

#let skillList(env) = (
  (
    title: multiLang(env, en: [Programming Languages], cn: [编程语言]),
    cv-content: true,
    content: multiLang(
      env,
      en: [Not limited to any specific language, especially experienced in Agda, Haskell, PHP, Python, Rust, comfortable with C/C++, Java, JavaScript, OCaml, TypeScript. Skilled in metaprogramming, code generation, and type-driven development.],
      cn: [可以使用任何编程语言进行工作，精通 Agda、Haskell、PHP、Python、Rust，熟悉 C/C++的Java、JavaScript、OCaml、TypeScript （排名均不分先后）。擅长元编程、代码生成与类型驱动开发。]
    )
  ),
  (
    title: multiLang(env, en: [Type Theory], cn: [类型论]),
    cv-content: true,
    content: multiLang(
      env,
      en: [familiar with various dependent type theories, modal type theories and their semantics, familiar with Agda, and have experience with formal verification.],
      cn: [熟悉各种依值类型论、模态类型论和他们的语义模型，具有形式化验证的经验，熟练使用 Agda 等定理证明器。]
    )
  ),
  (
    title: multiLang(env, en: [Compiler], cn: [编译器]),
    cv-content: true,
    content: multiLang(env, 
    en: [understand various compiler architectures, familiar with compiler frontend, especially in type checking. Also have experience in parser generator and DSL design.
    ], 
    cn: [了解主流编程语言的设计，理解各种编译器架构，熟悉编译器前端，尤其是类型检查和静态分析。擅长使用各种 parser 生成器，具有 DSL 以及编程语言工具链的设计与实现经验。])
  ),
  (
    title: multiLang(env, en: [Web Development], cn: [Web 开发]),
    cv-content: true,
    content: cv-and-others(
      env,
      multiLang(env,
        en :[*7 years* of experience in full-stack web development, proficient in backend development, databases, and DevOps practices.],
        cn : [*7年*全栈 Web 开发经验，精通后端开发、数据库和 DevOps 实践。
      ]), multiLang(env,
        en: [*7 years* of experience in full-stack web development:
          - _Backend_: proficient in various backend frameworks in PHP, Python, and Rust, including Symfony, Laravel, Django, and Actix. Familiar with message queues and asynchronous programming. Also experienced in backend framework design.
          - _Frontend_: experienced with React and Vue.js.
          - _Database_: knowledgeable in MySQL, PostgreSQL, Redis, and Elasticsearch with a strong background in database design and optimization.
          - _DevOps_: skilled in Docker, proficient in CI/CD practices, and experienced with cloud services.],
        cn: [*7年*全栈 Web 开发经验：
          - _后端_：精通 PHP、Python 和 Rust 的各种后端开发框架，包括 Symfony、Laravel、Django 和 Actix，可以快速上手并使用任意其它框架。熟悉消息队列和异步编程，并有后端架构设计经验。
          - _前端_：熟悉 React 和 Vue.js。
          - _数据库_：精通 MySQL、PostgreSQL、Redis 和 Elasticsearch 等数据库，具有丰富的数据库设计和优化经验。
          - _DevOps_：熟悉使用 Docker 和各种 CI/CD 配置，并有云服务使用、网络和存储配置、服务器运维方面的经验。]
      )
    )
  ),
  (
    title: multiLang(env, en: [Development Tools], cn: [开发工具]),
    cv-content: false,
    content: multiLang(env,
      en: [can adapt to any editors/OSs, usually use JetBrains IDEs and VSCode under macOS, familiar with git and docker, and have experience with team collaboration tools like GitHub and Slack.], 
      cn: [能适应任何编辑器与操作系统，通常在 macOS 下使用 JetBrains IDE 和 VSCode，熟悉 git 和 docker，并有使用 GitHub 和 Slack 等团队协作工具的经验。]
    )
  ),
  (
    title: multiLang(env, en: [Languages], cn: [语言]),
    cv-content: true,
    content: multiLang(env, 
      en: [Chinese: native, English: advanced, Japanese: intermediate.], 
      cn: [汉语：母语；英语：高级；日语：中级。]
    )
  ),
)

#let skill(env) = {
  multiLang(env, en: [== Skills], cn: [== 技能])
  if(is-cv(env)) {
    skillList(env).filter(s => s.cv-content)
  } else {
    skillList(env)
  }.map(s => multiLang(env,
    en: [- *#s.title:* #s.content],
    cn: [- *#s.title：*#s.content]
  )).join()
}

