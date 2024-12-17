#import "lib.typ": *
#import "@preview/cetz:0.2.0"
#import "@preview/fontawesome:0.1.0": *

// Document-wide settings
#set text(font: fonts.body)

// Global styling configuration
#let cv_styling = (
  spacing: (
    section: 1.2em,     // Spacing between sections (largest)
    element: 1em,     // Spacing between entries/subsections (medium)
    paragraph: 0.6em,   // Spacing between lines in paragraphs (smallest)
  ),
  insets: (
    section: (left: 1.2em, top: 1.2em),
    inner: (left: 1em, top: 0.8em),
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
    fill: primary_color,
    font: fonts.sans,
    size: 13pt,
    weight: "bold",
  ),
  
  subsection: (
    fill: primary_color.lighten(20%),
    font: fonts.sans,
    size: 13pt,
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

#let emphasis(content) = {
  text(style: "italic", weight: "medium")[#content]
}

#let links(..items) = {
  [\ #h(-cv_styling.insets.inner.left/2)#items.pos().join([#diamond()])]
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
    paint: shade_line.lighten(50%),
    thickness: 3pt,
    dash: ("dot", 6pt),
    cap: "round",
  )
)

#let stack_unbreakable(first, last, spacing, inset, children) = {
  block(breakable: false)[#first#block(inset: inset)[#children.first()]]
  v(spacing, weak:true)
  children.slice(1, -1).map(child => block(inset: (left: inset.left))[#child]).intersperse(v(spacing, weak:true)).reduce((x,y) => x+y)
  v(spacing, weak:true)
  block(breakable: false)[#block(inset: (left: inset.left))[#children.last()]#last]
}

#let cv_section_list(title, items) = {
  // long_line+v(1fr, weak:true)+v(cv_styling.spacing.section)
  stack_unbreakable(
    {long_line
    v(cv_styling.spacing.section)
    text(..cv_styling.section, upper(title))
    },
    v(cv_styling.spacing.section)+long_line,
    cv_styling.spacing.section,
    cv_styling.insets.section,
    items
  )
  // v(1fr, weak:true)+
}

#let cv_sections(..sections) = {
  // stack(..sections)
  (..sections.pos()).reduce((x,y) => x+y)
  v(100fr)
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

#let cv_subsections_list(title, subsections) = {
  titled_list(
    text(..cv_styling.subsection, title),
    subsections,
    cv_styling.insets.inner,
    cv_styling.spacing.element
  )
}

#let entry_heading(l:none, m:none, r:none) = {
  text(weight: cv_styling.entry.heading.weight, l)
  h(0.5em)
  text(style: "italic", m)
  h(1fr)
  smallcaps(lower(r))
}

#let cv_entry(heading, body) = {
  set text(
    size: cv_styling.entry.size,
    font: fonts.body,
  )
  
  cv_titled_block(
    heading,
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
  publication,
  label,
) = {// this can probably rewritten to ignore label length, instead of using grid
  grid(
    columns: (auto, 1fr),
    gutter: 1em,
    [#label],
    block(
      breakable: false,
      stack(
        spacing: cv_styling.spacing.paragraph,
        [
        #(publication.authors.split(" and ")
          .map(name => {
            if name.contains("Mabsout") {
              [*#name*]
            } else {
              name
            }
          })
          .join([#diamond()]))
        #h(1fr)
        #smallcaps([#(if (publication.at("citations", default:0) != 0) [#smallcaps[(citations: #publication.citations) ]])#publication.year])
      ],
      par(leading: cv_styling.spacing.paragraph)[
        #block(inset: (left: cv_styling.insets.inner.left))[#emph[#publication.title]
        #links(
          labeled(publication.venue, publication.doi),
          ..publication.extra_links.map((x) => labeled(..x))
        )
        ]
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
  