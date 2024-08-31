#import "@preview/shiroa:0.1.0": is-web-target

#let multiVersion(..v) = {
  if is-web-target() {
    v.named().at("cv")
  } else {
    v.named().at(get-version())
  }
}

#let get-version() = {
  if is-web-target() {
    "cv"
  } else {
    sys.inputs.at("x-version", default: "resume")
  }
}

#let is-full() = {
  let version = sys.inputs.at("x-version", default: "full");
  version == "full"
}

#let is-cv() = {
  let version = sys.inputs.at("x-version", default: "full");
  version == "cv"
}

#let is-resume() = {
  let version = sys.inputs.at("x-version", default: "full");
  version == "resume"
}

#let show-cv-content() = {
  is-cv() or is-full()
}

#let show-resume-content() = {
  is-resume() or is-full()
}

#let cv-content(content) = {
  if show-cv-content()  {
    content
  } else {
    []
  }
}

#let resume-content(content) = {
  if show-resume-content()  {
    content
  } else {
    []
  }
}

#let cv-and-others(cv-content, others-content) = {
  if is-cv() {
    cv-content
  } else {
    others-content
  }
}

#let resume-and-others(resume-content, others-content) = {
  if is-resume() {
    resume-content
  } else {
    others-content
  }
}