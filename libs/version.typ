#import "@preview/shiroa:0.1.0": is-web-target, is-pdf-target

#let get-version(env) = {
  env.at("x-version", default: "full")
}

#let multiVersion(env, ..v) = {
  v.named().at(get-version(env,))
}

#let is-full(env) = {
  get-version(env) == "full"
}

#let is-cv(env) = {
  get-version(env) == "cv"
}

#let is-resume(env) = {
  get-version(env) == "resume"
}

#let show-cv-content(env) = {
  is-cv(env) or is-full(env)
}

#let show-resume-content(env) = {
  is-resume(env) or is-full(env)
}

#let cv-content(env, content) = {
  if show-cv-content(env)  {
    content
  } else {
    []
  }
}

#let resume-content(env, content) = {
  if show-resume-content(env)  {
    content
  } else {
    []
  }
}

#let cv-and-others(env, cv-content, others-content) = {
  if is-cv(env) {
    cv-content
  } else {
    others-content
  }
}

#let resume-and-others(env, resume-content, others-content) = {
  if is-resume(env) {
    resume-content
  } else {
    others-content
  }
}

#let new-page(env) = {
  if is-pdf-target() {
    pagebreak()
  } else {
    []
  }
}