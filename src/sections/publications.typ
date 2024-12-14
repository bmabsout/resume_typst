#import "../lib_cv.typ": *
#import "../publications.typ": publications, labels


#let publications_section = cv_section_list("PUBLICATIONS",
  (
    ..publications.pairs().map(((key, _)) => {
      cv_publication_entry(
        publications: publications,
        labels: labels,
        key: key
      )
    }),
    v(01em),
    text(size: 8pt, fill: shade_fg.lighten(40%))[#text(size:12pt, "*") Authors contributed equally]
  )
) 