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


#let contact_box = rect.with(
  fill: shade_color,
  stroke: (paint: shade_line, thickness: 0.5pt),
  inset: 8pt,
  radius: 2pt,
  width: 3.5in
)

#let entry(title, subtitle: none, date: none, description) = stack(
  spacing: 0.5em,
  {
    // Title row with grid
    grid(
      columns: (1fr, auto),
      [#bold(title) #if subtitle != none [ #h(0.5em) #emph[#subtitle]]], 
      [#text(size: 9pt)[#if date != none {date}]]
    )
  },
  // Description
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

#let contact_info_box(left_items, right_items) = {
  let icon_width = 1.2em
  contact_box[
    #grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      {
        grid(
          columns: (icon_width, 1fr),
          rows: (auto, auto, auto),
          gutter: 0.3em,
          ..left_items.map(item => (
            align(center)[#icon(item.icon)],
            align(left)[#text(fill: shade_fg, size: 9pt)[#item.text]]
          )).flatten()
        )
      },
      {
        grid(
          columns: (icon_width, 1fr),
          rows: (auto, auto, auto),
          gutter: 0.3em,
          ..right_items.map(item => (
            align(center)[#icon(item.icon)],
            align(left)[#text(fill: shade_fg, size: 9pt)[#item.text]]
          )).flatten()
        )
      }
    )
  ]
}

#let header_section(name, contact_info) = {
  grid(
    columns: (55%, 45%),  // Match the main content's column proportions
    gutter: 1.2em,        // Match the main content's gutter
    align(left + bottom)[
      #text(font: fonts.sans, size: 24pt)[#name]
    ],
    contact_info
  )
}

#show strong: it => text(
  font: fonts.body,
  weight: 700
)[#it]