// STATEMENT: a research or teaching statement, or a letter. One justified
// serif column, sections in the primary over a capsule rule, a centered title
// joined to the author's name by a diamond.

#import "@local/typst-design:0.1.0": palette, faces, capsule-rule, diamond as _diamond

/// "Name ◆ Title", centered and bold in the primary.
#let title-line(author, title, size: 16pt, primary: palette.primary, diamond: _diamond) = align(center)[
  #text(size: size, weight: "bold", fill: primary)[#author#diamond()#title]
]

/// The page. `heading-size` sets both section levels, and level 2 is the
/// `secondary` (the ramp's heading-2 sample) at medium weight. `rule` is drawn above each
/// level-1 section.
#let statement(
  body,
  title: none,
  author: none,
  document-title: auto,
  font: faces.libertinus,
  size: 11pt,
  leading: 0.8em,
  heading-size: 13pt,
  title-size: 16pt,
  primary: palette.primary,
  secondary: palette.secondary,
  rule: capsule-rule(paint: palette.rule),
  diamond: _diamond,
  margin: (x: 1in, y: 1in),
  lift: -3em,
) = {
  let doc-title = if document-title == auto and title != none and author != none [#title - #author] else if document-title != auto { document-title }
  set document(title: doc-title) if doc-title != none
  set page(width: 8.5in, height: 11in, margin: margin)
  set text(font: font, size: size)
  show heading.where(level: 1): it => [
    #rule
    #set text(fill: primary, weight: "bold", size: heading-size)
    #it
    #v(0.5em)
  ]
  show heading.where(level: 2): it => [
    #set text(fill: secondary, weight: "medium", size: heading-size)
    #it
  ]
  set par(justify: true, leading: leading)
  if title != none {
    v(lift)
    title-line(author, title, size: title-size, primary: primary, diamond: diamond)
  }
  body
}
