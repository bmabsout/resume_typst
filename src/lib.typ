#let primary_color = rgb(112, 17, 18)  // headings color
#let shade_color = rgb(250, 242, 243)  // FAF2F3 for contact box
#let shade_fg = rgb(112, 17, 18)      // 701112 for contact text
#let shade_line = rgb(224, 184, 189)  // E0B8BD for box border

#let fonts = (
  body: "EB Garamond",
  sans: "Libertinus Sans",
  icons: "Font Awesome 5 Free"
)

#let text-styles = (
  regular: (
    font: fonts.body,
    size: 10pt,
    weight: "regular"
  ),
  bold: (
    font: fonts.body,
    weight: 700
  ),
  heading: (
    font: fonts.sans,
    size: 10pt,
    weight: "regular"
  ),
  icon: (
    font: fonts.icons,
    size: 9pt,
    weight: "bold"
  )
)

#let bold(content) = text(..text-styles.bold)[#content]
#let fa = (
  phone: "\u{f095}",      // fa-phone
  location: "\u{f3c5}",   // fa-map-marker-alt
  email: "\u{f0e0}",      // fa-envelope
  globe: "\u{f0ac}",      // fa-globe
  github: "\u{f09b}",     // fa-github
  scholar: "\u{f19d}"     // fa-graduation-cap
)

#let icon(name, color: shade_fg) = {
  text(
    ..text-styles.icon,
    fill: color,
    fa.at(name)
  )
}

#let section_heading(title) = block[
  #set text(..text-styles.heading)
  #v(0.1em)
  #text(primary_color, smallcaps(title))
  #v(-7pt)
  #line(length: 100%, stroke: 0.7pt)
  #v(0.2em)
]

#let contact_column(items) = {
  let icon_width = 1.6em
  grid(
    columns: (icon_width, auto),
    rows: (auto, auto, auto),
    gutter: 0.4em,
    ..items.map(item => (
      align(center)[#icon(item.icon)],
      [#text(fill: shade_fg, size: 10pt)[#item.text]]
    )).flatten()
  )
}

#let contact_info_box(left_items, right_items) = {
  rect(
    width: 100%,
    fill: shade_color,
    radius: 2pt,
    inset: 8pt,
    [
      #grid(
        columns: (1fr, 1fr),
        gutter: 1em,
        contact_column(left_items),
        contact_column(right_items)
      )
    ]
  )
}

#let header_section(name, contact_info) = {
  grid(
    columns: (55%, 45%),
    gutter: 1.2em,
    align(left + bottom)[
      #text(font: fonts.sans, size: 24pt)[#name]
    ],
    contact_info
  )
}

#let entry(title, subtitle: none, date: none, description) = stack(
  spacing: 0.5em,
  {
    grid(
      columns: (1fr, auto),
      [#bold(title) #if subtitle != none [ #h(0.5em) #emph[#subtitle]]], 
      [#text(size: 9pt)[#if date != none {date}]]
    )
  },
  pad(
    left: 0.2cm,
    description
  )
)

#let publication(authors, title, venue, year) = block(spacing: 0.65em)[
  #(authors.split(" and ")
    .map(name => {
      if name.contains("Mabsout") {
        [#bold(name)]
      } else {
        [#name]
      }
    })
    .join(", "))
  . #title. #text(style: "italic")[#venue] #year
]

#let skill_group(categories, items) = {
  let column_width = 20%
  let default-style = (
    size: 7pt,
    weight: "regular",
    font: fonts.body
  )
  
  grid(
    columns: (column_width, 1fr),
    gutter: 0.8em,
    {
      align(right)[
        #stack(
          spacing: 0.25em,
          ..categories.map(cat => 
            if type(cat) == "content" { cat } else { text(..default-style)[#smallcaps(cat)] }
          )
        )
      ]
    },
    align(left)[
      #text(size: 9pt)[
        #items.split(", ").join(" • ")
      ]
    ]
  )
}

#let section_list(sections, spacing: 0.3em) = {
  stack(
    spacing: spacing,
    ..sections.map(section => {
      stack(
        spacing: 0.65em,
        section_heading(section.title),
        section.content
      )
    })
  )
}

#let education_entry(degree, date, institution) = block[
  #grid(
    columns: (1fr, auto),
    [#bold(degree)],
    [#text(size: 9pt)[#date]]
  )
  #pad(left: 0.3cm)[#institution]
]

#let mentorship_entry(title, description) = block[
  #bold(title) #description
]

#show strong: it => text(
  font: fonts.body,
  weight: 700
)[#it]

#let diamond(spacing: 0.4em) = {
  h(spacing)
  box(
    baseline: -10%,
    rotate(
      45deg,
      rect(
        width: 0.4em,
        height: 0.4em,
        radius: 0.15em,
        fill: shade_color,
        stroke: 0.1em + shade_line
      )
    ),
  )
  h(spacing)
}
