#import "../libs.typ": *
#import "../chicv.typ": *

#let skillList = (
  (
    title: "Programming Languages ",
    content: [
      - Proficient in both Object-Oriented Programming and Functional Programming, experienced in meta-programming. Able to work effectively with any programming language.
      - Highly proficient in Agda, Haskell, PHP, Python, Rust.
      - Comfortable with C/C++, Coq, Java, JavaScript, OCaml, TypeScript.
    ]
  ),
  (
    title: "Type Theory",
    content: [familiar with variants dependent type theories, their semantics, and relevant proofs, interested in normalization-by-evaluation, gradual typing, and effect systems, and also have experience with formal verification.]
  ),
  (
    title: "Compiler",
    content: [understand variants compiler architectures, familiar with compiler frontend, especially in type checking. Also have experience in parser generator and DSL design.]
  ),
  (
    title: "Web Development",
    content: [
      *7 years* of experience in full-stack web development:
      - Backend: proficient in various backend frameworks in PHP, Python, and Rust, including Symfony, Laravel, Django, and Actix. Familiar with message queues and asynchronous programming. Also experienced in backend framework design.
      - Frontend: experienced with Vue.
      - Database: knowledgeable in MySQL, PostgreSQL, Redis, and Elasticsearch with a strong background in database design and optimization.
      - DevOps: skilled in Docker, proficient in CI/CD practices, and experienced with cloud services.
    ]
  ),
  (
    title: "Development Tools",
    content: [can adapt to any editors/OSs, usually use JetBrains IDEs and VSCode under Ubuntu, familiar with git and docker, and have experience with team collaboration tools like GitHub and Slack.]
  ),
  (
    title: "Languages",
    content: [Chinese: native speaker, English: fluent, Japanese: business]
  ),
)

#let skill = {
  multiLang(en: [== Skills], ja: [== 技能])
  let s = skillList.map(s => {
    [- *#s.title:* #s.content]
  }).join()

  [#s]
}

