#import "../lib_cv.typ": *
#import "../publications.typ": publications, labels_n_refs

#let authors_contributed_equally = text(size: 8pt, fill: shade_fg.lighten(40%))[#text(size:12pt, "*") Authors contributed equally]

#let publications_section = cv_section_list("PUBLICATIONS",
  (
    ..publications.keys().slice(0, -1).map((key) => cv_publication_entry(
      publications.at(key),
      labels_n_refs.at(key).label
    )),
    cv_publication_entry(
      publications.at(publications.keys().last()),
      labels_n_refs.at(publications.keys().last()).label
    )
    +v(0.5em)
    +authors_contributed_equally
    +v(-0.5em)
  )
)

