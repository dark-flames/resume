#import "fontawesome.typ": *
#import "@preview/shiroa:0.2.3": is-pdf-target, is-web-target, get-page-width

#let main-color() = {
  if is-web-target() {
    import "@preview/typst-apollo:0.1.0": pages
    import pages: main-color
    main-color
  } else {
    black
  }
}

#let dash-color() = {
  if is-web-target() {
    import "@preview/typst-apollo:0.1.0": pages
    import pages: dash-color
    dash-color
  } else {
    gray
  }
}

#let chiline() = {
  v(-3pt);
  line(length: 100%, stroke: dash-color());
  v(-10pt)
}

#let iconlink(
  uri, text: "", icon: link-icon) = {
  if text != "" {
    link(uri)[#fa[#icon] #text]
  } else {
    link(uri)[#fa[#icon]]
  }
}

#let cventry(
  tl: lorem(2),
  tr: "2333/23 - 2333/23",
  bl: "",
  br: "",
  content
) = {
  block(
    inset: (left: 0pt),
    tl + h(1fr) + tr +
    linebreak() +
    if bl != "" or br != "" {
      bl + h(1fr) + br + linebreak()
    } +
    if content != "" {
      content
    }
  )
}

#let cvitem(
  tl: lorem(2),
  tr: "2333/23 - 2333/23",
  bl: "",
  br: ""
) = {
  block(
    inset: (left: 0pt),
    tl + h(1fr) + tr +
    linebreak() +
    if bl != "" or br != "" {
      bl + h(1fr) + br
    }
  )
}

#let chicv(
  header-font : (
    "Avenir Next LT Pro", // original chi-cv font
    "Manrope"
  ),
  text-font : (
    "libertinus serif"
  ),
  text-size: 11pt,
  body
) = {
  set par(justify: true)
  set text(fill: main-color())
  
  show heading.where(
    level: 1
  ): set text(
    size: 22pt,
    font: header-font,
    weight: "light",
  )

  show heading.where(
    level: 2
  ): it => text(
    size: if is-web-target() { 15pt } else { 14pt },
    font: header-font,
    weight: "light",
    block(
      chiline() + it,
    )
  )
  set list(indent: 0pt)
  set text(size: text-size, font: text-font) if is-web-target()
  set text(font: text-font) if is-pdf-target()

  show link: it => underline(offset: 2pt, it)
  set page(
    margin: (x: 0.9cm, y: 1.3cm),
  ) if is-pdf-target()
  
  set page(
    margin: (
      // reserved beautiful top margin
      top: 20pt,
      // reserved for our heading style.
      // Typst is setting the page's bottom to the baseline of the last line of text. So bad.
      bottom: 0.5em,
      // remove rest margins.
      rest: 0pt,
    ),
    numbering: none,
    number-align: center,
    width: get-page-width(),
    height: auto,
  ) if is-web-target()

  body
}

#let today() = {
  let month = (
    "January", "February", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December",
  ).at(datetime.today().month() - 1);
  let day = datetime.today().day();
  let year = datetime.today().year();
  [#month #day, #year]
}
