#import "lib.typ": *


// CV-specific typography scale
#let cv_styling = (
  header: (
    name: (
      font: fonts.sans,
      size: 28pt,
      weight: "medium",
    ),
    contact: (
      text: (
        size: 11pt,
      ),
      icon: (
        size: 11pt,
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
    gutter: 5pt,     // Space between title and line
    spacing: 1em,    // Space between sections
    gap: 1em,      // Gap between section heading and content
  ),
  subsection: (
    font: fonts.sans,
    size: 12pt,
    weight: "medium",
    gap: 0.5em,      // Gap between subsection heading and content
    spacing: 1.2em,  // Space between subsections
  ),
  entry: (
    size: 11pt,     // Reduced from 11.5pt
    title: (
      weight: "bold",
    ),
    subtitle: (
      size: 11pt,    // Only if different from base
      style: "italic",
    ),
    date: (
      size: 11pt,    // Only if different from base
    ),
    inset: (
      left: 0.5em,
      bottom: 0.1em,
    ),
    gap: 1em,        // Gap between entries
  )
)

// CV-specific section heading
#let cv_section(title, body) = {
  block(
    spacing: cv_styling.section.gap,
    {
      grid(
        gutter: cv_styling.section.gutter,
        text(
          font: cv_styling.section.font,
          size: cv_styling.section.size,
          weight: cv_styling.section.weight,
          fill: primary_color,
        )[#smallcaps(title)],
        // line(
        //   length: 100%,
        //   stroke: (
        //     paint: primary_color,
        //     thickness: 1pt,
        //     dash: "solid"
        //   )
        // )
      )
    }
  )
  body
}

#let long_line = line(
  length: 100%,
  stroke: (
    paint: primary_color,
    thickness: 1pt,
    dash: "solid"
  )
)

// New function to handle sections with gaps
#let cv_sections(sections) = {
  stack(
    spacing: cv_styling.section.spacing,
    long_line,
    ..sections.map(section => cv_section(section.title, section.body)).intersperse( long_line ),
    long_line
  )
}

// CV-specific subsection heading
#let cv_subsection(subsection) = {
  stack(
    spacing: cv_styling.subsection.gap,
    text(
      font: cv_styling.subsection.font,
      size: cv_styling.subsection.size,
      weight: cv_styling.subsection.weight,
      fill: primary_color.lighten(20%),
    )[#subsection.title],
    v(cv_styling.subsection.gap),
    subsection.body
  )
}

// CV-specific entry
#let cv_entry(body) = {
  set text(
    size: cv_styling.entry.size,
    font: fonts.body,
  )
  block(
    inset: cv_styling.entry.inset,
    body
  )
}

// CV-specific publication entry
#let cv_publication(authors, title, venue, year, doi: none) = {
  cv_entry[
    #set text(size: cv_styling.entry.size)
    #authors #h(0.2em) \
    #emph[#title] \
    #text(weight: "medium")[#venue] (#year) \
    #if doi != none [
      #text(fill: primary_color)[DOI: #doi]
    ]
  ]
}

// CV-specific date entry helper
#let cv_date_entry(title, subtitle: none, date, body) = {
  cv_entry[
    #text(..cv_styling.entry.title)[#title] 
    #if subtitle != none [
      #text(..cv_styling.entry.subtitle)[#subtitle]
    ]
    #h(1fr)
    #text(..cv_styling.entry.date)[#date]
    #v(cv_styling.entry.gap)
    #body
  ]
}

// CV-specific header
#let cv_header(name, contact_info) = {
  [
    #align(center, text(..cv_styling.header.name, name))
    #v(cv_styling.header.vertical_padding)
    #contact_info
    #v(cv_styling.header.vertical_padding)
  ]
}

// CV-specific icon function
#let cv_icon(name, color: shade_fg) = {
  text(
    font: fonts.icons,
    size: cv_styling.header.contact.icon.size,
    weight: "bold",
    fill: color,
    fa.at(name)
  )
}

// CV-specific contact box
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

// Function to handle a list of subsections
#let cv_subsections(subsections) = {
  stack(
    spacing: cv_styling.subsection.spacing,
    ..subsections.map(cv_subsection)
  )
}

// Function to handle a list of entries
#let cv_entries(entries) = {
  stack(
    spacing: cv_styling.entry.gap,
    ..entries
  )
} 