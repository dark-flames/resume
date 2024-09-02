#import "../libs.typ": *
#import "../chicv.typ": *

#let skillList(env) = (
  (
    title: "Programming Languages",
    cv-content: true,
    content: [
      Not limited to any specific language, especially experienced in Agda, C/C++, Haskell, PHP, Python, Rust, comfortable with Coq, Java, JavaScript, OCaml, TypeScript.
    ]
  ),
  (
    title: "Type Theory",
    cv-content: true,
    content: [familiar with various dependent type theories and their semantics, and have experience with formal verification.]
  ),
  (
    title: "Compiler",
    cv-content: true,
    content: [understand various compiler architectures, familiar with compiler frontend, especially in type checking. Also have experience in parser generator and DSL design.]
  ),
  (
    title: "Web Development",
    cv-content: true,
    content: cv-and-others(
      env,
      [
        *7 years* of experience in full-stack web development, proficient in backend development, databases, and DevOps practices.
      ], [
        *7 years* of experience in full-stack web development:
        - Backend: proficient in various backend frameworks in PHP, Python, and Rust, including Symfony, Laravel, Django, and Actix. Familiar with message queues and asynchronous programming. Also experienced in backend framework design.
        - Frontend: experienced with Vue.
        - Database: knowledgeable in MySQL, PostgreSQL, Redis, and Elasticsearch with a strong background in database design and optimization.
        - DevOps: skilled in Docker, proficient in CI/CD practices, and experienced with cloud services.
      ]
    )
  ),
  (
    title: "Development Tools",
    cv-content: false,
    content: [can adapt to any editors/OSs, usually use JetBrains IDEs and VSCode under Ubuntu, familiar with git and docker, and have experience with team collaboration tools like GitHub and Slack.]
  ),
  (
    title: "Languages",
    cv-content: true,
    content: [Chinese: native, English: advanced, Japanese: intermediate]
  ),
)

#let skill(env) = {
  multiLang(env, en: [== Skills], ja: [== 技能])
  if(is-cv(env)) {
    skillList(env).filter(s => s.cv-content)
  } else {
    skillList(env)
  }.map(s => {
    [- *#s.title:* #s.content]
  }).join()
}

