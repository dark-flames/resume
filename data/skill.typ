#import "../libs.typ": *
#import "../chicv.typ": *

#let skillList(env) = (
  (
    title: "Programming Languages",
    cv-content: true,
    content: cv-and-others(
      env,
      [
        Agda, C/C++, Coq, Java, JavaScript, Haskell, OCaml, PHP, Python, TypeScript, Rust. Able to work effectively with any programming language.
      ], [
        - Proficient in both Object-Oriented Programming and Functional Programming, experienced in meta-programming. Able to work effectively with any programming language.
        - Highly proficient in Agda, C/C++, Haskell, PHP, Python, Rust.
        - Comfortable with Coq, Java, JavaScript, OCaml, TypeScript.
      ]
    )
  ),
  (
    title: "Type Theory",
    cv-content: false,
    content: [familiar with variants dependent type theories, their semantics, and relevant proofs, interested in normalization-by-evaluation, gradual typing, and effect systems, and also have experience with formal verification.]
  ),
  (
    title: "Compiler",
    cv-content: true,
    content: [understand variants compiler architectures, familiar with compiler frontend, especially in type checking. Also have experience in parser generator and DSL design.]
  ),
  (
    title: "Web Development",
    cv-content: true,
    content: cv-and-others(
      env,
      [
        *7 years* of experience in full-stack web development, proficient in backend and frontend development, database design, and optimization, and DevOps practices.
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

