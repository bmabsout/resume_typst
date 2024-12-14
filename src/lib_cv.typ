#import "lib.typ": *
#import "@preview/cetz:0.2.0"
#import "@preview/fontawesome:0.1.0": *

// Document-wide settings
#set text(font: fonts.body)

// Global styling configuration
#let cv_styling = (
  spacing: (
    section: 1.2em,     // Spacing between sections (largest)
    element: 1.2em,     // Spacing between entries/subsections (medium)
    paragraph: 0.6em,   // Spacing between lines in paragraphs (smallest)
  ),
  insets: (
    section: (left: 1.2em, top: 1.2em),
    inner: (left: 0.8em, top: 0.8em),
  ),
  
  header: (
    name: (
      font: fonts.sans,
      size: 28pt,
      weight: "medium",
    ),
    contact: (
      text: (size: 12pt),
      icon: (
        size: 12pt,
        width: 1.6em,
      ),
      box: (
        gutter: 0.8em,
        inset: 12pt,
      ),
    ),
    vertical_padding: 2em,
  ),
  
  section: (
    font: fonts.sans,
    size: 13pt,
    weight: "bold",
  ),
  
  subsection: (
    font: fonts.sans,
    size: 12pt,
    weight: "medium",
  ),
  
  entry: (
    size: 11pt,
    heading: (weight: "bold"),
  )
)

// Basic utility functions
#let labeled(label, content) = {
  [#text(weight: 600)[#label:] #content]
}

#let links(..items) = {
  [\ #items.pos().join([#diamond()])]
}

// Basic building blocks
#let cv_stack(..children) = {
  stack(
    spacing: cv_styling.spacing.element,
    ..children.pos()
  )
}

#let titled_list(
  title,
  items,
  inset,
  spacing,
) = {
  set block(spacing: 0em)
  
  // Only title and first item are unbreakable
  block(breakable: false)[
    #title
    #if items != () {
      pad(..inset)[#items.at(0)]
    }
  ]
  
  // Rest of items can break
  if items.len() > 1 {
    v(spacing)
    pad(
      left: inset.left,
      stack(
        spacing: spacing,
        ..items.slice(1)
      )
    )
  }
}


#let cv_titled_block(title, content, inset: none) = {
  set block(
    spacing: 0em,
    breakable: false
  )
  set par(leading: 0em)
  stack(
    spacing: 0em,
    title,
    block(
      inset: inset,
      content
    )
  )
}

// Line separator for sections
#let long_line = line(
  length: 100%,
  stroke: (
    paint: primary_color,
    thickness: 1pt,
    dash: "solid"
  )
)

#let cv_section_list(title, items) = {
    titled_list(
      text(
      font: cv_styling.section.font,
      size: cv_styling.section.size,
      weight: cv_styling.section.weight,
      fill: primary_color,
    )[#smallcaps(title)],
      items,
      cv_styling.insets.section,
      cv_styling.spacing.element
    )
}

#let cv_sections(..sections) = {
  stack(
    spacing: cv_styling.spacing.section,
    // long_line,
    ..sections.pos().intersperse(long_line),
    // long_line
  )
}

#let cv_subsection(subsection) = {
  cv_titled_block(
    text(
      font: cv_styling.subsection.font,
      size: cv_styling.subsection.size,
      weight: cv_styling.subsection.weight,
      fill: primary_color.lighten(20%),
    )[#subsection.title],
      par(leading: cv_styling.spacing.paragraph)[
      #subsection.body
    ],
    inset: cv_styling.insets.inner
  )
}

#let cv_subsections(subsections) = {
  stack(
    spacing: cv_styling.spacing.element,
    ..subsections.map(cv_subsection)
  )
}

#let cv_subsections_list(title, subsections) = {
  titled_list(
    text(
      font: cv_styling.subsection.font,
      size: cv_styling.subsection.size,
      weight: cv_styling.subsection.weight,
      fill: primary_color.lighten(20%),
    )[#title],
    subsections,
    cv_styling.insets.inner,
    cv_styling.spacing.element
  )
}

#let cv_entry(heading, body) = {
  set text(
    size: cv_styling.entry.size,
    font: fonts.body,
  )
  
  cv_titled_block(
    text(weight: cv_styling.entry.heading.weight, heading),
    par(leading: cv_styling.spacing.paragraph)[
      #body
    ],
    inset: if body != [] { cv_styling.insets.inner } else { (left: 0em, top: 0em) }
  )
}

#let cv_entries(entries) = {
  stack(
    spacing: cv_styling.spacing.element,
    ..entries.map(entry => block(breakable: false, entry))
  )
}

// Publication-specific components
#let cv_publication_entry(
  publications: none,
  labels: none,
  key: none,
) = {// this can probably rewritten to ignore label length, instead of using grid
  let pub = publications.at(key)
  let lab = labels.at(key)
  
  grid(
    columns: (auto, 1fr),
    gutter: 1em,
    [#lab.label],
    block(
      breakable: false,
      stack(
        spacing: cv_styling.spacing.paragraph,
        [
        #(pub.authors.split(" and ")
          .map(name => {
            if name.contains("Mabsout") {
              [*#name*]
            } else {
              name
            }
          })
          .join([#diamond()]))
        #h(1fr)
        *#(if (pub.at("citations", default:0) != 0) [#smallcaps[*(\#citations: #pub.citations) *]])#pub.year*
      ],
      par(leading: cv_styling.spacing.paragraph)[
        #emph[#pub.title]
        #links(
          labeled(pub.venue, pub.doi),
          ..pub.extra_links.map((x) => labeled(..x))
        )
      ],
    )
    )
  )
}

// Contact-specific components
#let cv_icon(name, color: shade_fg) = {
  text(
    font: fonts.icons,
    size: cv_styling.header.contact.icon.size,
    weight: "bold",
    fill: color,
    fa.at(name)
  )
}

#let cv_contact_column(items) = {
  grid(
    columns: (cv_styling.header.contact.icon.width, auto),
    rows: (auto, auto),
    gutter: cv_styling.header.contact.box.gutter,
    ..items.map(item => (
      align(center)[#cv_icon(item.icon)],
      align(left)[#text(fill: shade_fg, size: cv_styling.header.contact.text.size)[#item.text]]
    )).flatten()
  )
}

#let cv_contact_box(items) = {
  block(
    width: 100%,
    fill: shade_color,
    radius: 4pt,
    inset: cv_styling.header.contact.box.inset,
    grid(
      columns: (auto, auto, auto),
      gutter: 1fr,
      cv_contact_column(items.slice(0, 2)),
      cv_contact_column(items.slice(2, 4)),
      cv_contact_column(items.slice(4, 6))
    )
  )
}

#let cv_header(name, contact_info) = {
  [
    #stack(
      align(left, text(..cv_styling.header.name, name)),
      align(bottom+right, text(size: 15pt, [Last updated: #datetime.today().display("[month repr:long] [day], [year]")], style: "italic", font: fonts.body)),
      dir: ltr
    )
    #v(cv_styling.header.vertical_padding)
    #contact_info
    // #v(cv_styling.header.vertical_padding)
  ]
}
  