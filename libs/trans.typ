#import "@preview/shiroa:0.2.3": is-web-target

#let multiLang(env, ..c) = {
  let lang = env.at("x-lang", default: "en")
  c.named().at(lang, default: c.named().at("en"))
}

#let header-font = (
  en : (
      "Avenir Next LT Pro"
  ),
  cn : (
      "Noto Sans Mono CJK SC",
      "Noto Sans Mono CJK",
      "Avenir Next LT Pro"
  )
)

#let text-font = (
  en : (
      "libertinus serif"
  ),
  cn : (
      "Source Han Serif SC",
      "libertinus serif"
  )
)

#let get-header-font(env) = {
  let lang = env.at("x-lang", default: "en")
  header-font.at(lang, default: header-font.at("en"))
}

#let get-text-font(env) = {
  let lang = env.at("x-lang", default: "en")
  text-font.at(lang, default: text-font.at("en"))
}


#let trans-date(env, month, day, year) = {
  let en-month-names = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
  let lang = env.at("x-lang", default: "en")
  let month-name = multiLang(env, en: en-month-names.at(month - 1), cn: [#month 月])
  multiLang(env,
    en: [#month-name #day, #year],
    cn: [#year 年#month-name#day 日]
  )
}

#let trans-today(env) = {
   trans-date(env, datetime.today().month(), datetime.today().day(), datetime.today().year())
}