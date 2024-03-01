#let Full = "full"
#let Short = "short"

#let version = Full

#let setVersion(v) = {
  version = v
}

#let multiVersion(..v) = {
  v.named().at(version)
}