// RESUME: the one-page, two-column resume: a name beside a contact panel,
// small-caps section titles over a hairline, dense entries.

#import "@local/typst-design:0.1.0": palette, as-text, faces, diamond as _diamond, fa

#let resume-style(
  primary: palette.primary,
  shade: palette.mark-fill,
  shade-line: palette.mark-line,
  ink: palette.ink,
  body: faces.garamond,
  sans: faces.libertinus-sans,
  icons: faces.icons,
  size: 10pt,
  owner: none,
) = (
  colors: (primary: primary, link: as-text(primary), shade: shade, shade-fg: as-text(primary), shade-line: shade-line, ink: ink),
  fonts: (body: body, sans: sans, icons: icons),
  size: size,
  owner: owner,
  text-styles: (
    regular: (font: body, size: size, weight: "regular"),
    bold: (font: body, weight: 700),
    heading: (font: sans, size: size, weight: "regular"),
    icon: (font: icons, size: 9pt, weight: "bold"),
  ),
)

#let resume-kit(style) = {
  let ts = style.text-styles
  let bold(content) = text(..ts.bold)[#content]
  let icon(name, color: style.colors.shade-fg) = text(..ts.icon, fill: color, fa.at(name))
  let diamond = _diamond.with(fill: style.colors.shade, stroke: 0.1em + style.colors.shade-line)

  let section-heading(title) = block[
    #set text(..ts.heading)
    #v(0.1em)
    #text(style.colors.primary, smallcaps(title))
    #v(-7pt)
    #line(length: 100%, stroke: 0.7pt)
    #v(0.2em)
  ]

  let contact-column(items) = grid(
    columns: (1.6em, auto),
    rows: (auto, auto, auto),
    gutter: 0.4em,
    ..items.map(item => (
      align(center)[#icon(item.icon)],
      [#text(fill: style.colors.shade-fg, size: style.size)[#item.text]],
    )).flatten()
  )

  let contact-info-box(left-items, right-items) = rect(
    width: 100%,
    fill: style.colors.shade,
    radius: 2pt,
    inset: 8pt,
    [
      #grid(
        columns: (1fr, 1fr),
        gutter: 1em,
        contact-column(left-items),
        contact-column(right-items),
      )
    ],
  )

  let header-section(name, contact-info) = grid(
    columns: (55%, 45%),
    gutter: 1.2em,
    align(left + bottom)[
      #text(font: style.fonts.sans, size: 24pt)[#name]
    ],
    contact-info,
  )

  let entry(title, subtitle: none, date: none, description) = stack(
    spacing: 0.5em,
    {
      grid(
        columns: (1fr, auto),
        [#bold(title) #if subtitle != none [ #h(0.5em) #emph[#subtitle]]],
        [#text(size: 9pt)[#if date != none { date }]],
      )
    },
    pad(left: 0.2cm, description),
  )

  let publication(authors, title, venue, year) = block(spacing: 0.65em)[
    #(authors.split(" and ").map(name => if style.owner != none and name.contains(style.owner) { [#bold(name)] } else { [#name] }).join(", "))
    . #title. #text(style: "italic")[#venue] #year
  ]

  let skill-group(categories, items) = {
    let default-style = (size: 7pt, weight: "regular", font: style.fonts.body)
    grid(
      columns: (20%, 1fr),
      gutter: 0.8em,
      align(right)[
        #stack(spacing: 0.25em, ..categories.map(cat => text(..default-style)[#smallcaps(cat)]))
      ],
      align(left)[
        #text(size: 9pt)[
          #items.split(", ").join(" • ")
        ]
      ],
    )
  }

  let section-list(sections, spacing: 0.3em) = stack(
    spacing: spacing,
    ..sections.map(section => stack(spacing: 0.65em, section-heading(section.title), section.content)),
  )

  let education-entry(degree, date, institution) = block[
    #grid(
      columns: (1fr, auto),
      [#bold(degree)],
      [#text(size: 9pt)[#date]],
    )
    #pad(left: 0.3cm)[#institution]
  ]

  let mentorship-entry(title, description) = block[
    #bold(title) #description
  ]

  (
    style: style,
    bold: bold,
    icon: icon,
    diamond: diamond,
    section-heading: section-heading,
    contact-column: contact-column,
    contact-info-box: contact-info-box,
    header-section: header-section,
    entry: entry,
    publication: publication,
    skill-group: skill-group,
    section-list: section-list,
    education-entry: education-entry,
    mentorship-entry: mentorship-entry,
  )
}

/// The resume page: US letter, tight margins, 10pt body in near-black.
#let resume-page(body, style: resume-style(), title: none) = {
  set document(title: title) if title != none
  set page(margin: (x: 1.15cm, y: 0.5cm), paper: "us-letter")
  set text(font: style.fonts.body, size: style.size, fill: style.colors.ink)
  body
}
