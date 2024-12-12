#import "../lib_cv.typ": *
#import "../publications.typ": publications, labels


#let publications_section = cv_section("PUBLICATIONS", {
  stack(
    stack(
      spacing: cv_styling.spacing.element,
      ..publications.pairs().map(((key, _)) => {
        cv_publication_entry(
          publications: publications,
          labels: labels,
          key: key
        )
      })
    ),
    v(0.8em),
    [#text(size: 8pt, fill: shade_fg.lighten(40%))[#text(size:12pt, "*") Authors contributed equally]]
  )
}) 