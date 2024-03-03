#import "../config.typ": version

#let multiVersion(..v) = {
  v.named().at(version)
}