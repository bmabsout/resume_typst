#import "../lib_cv.typ": *
#import "../lists.typ": skills

#let join_with_diamonds(items) = {
  for i in range(items.len()) {
    [#items.at(i)]
    if i != items.len() - 1 [#h(0.3em)#diamond()#h(0.3em)]
  }
}

#let format_subcategory((name, items)) = (
  text(weight: "bold")[#smallcaps(name)],
  join_with_diamonds(items)
)

#let format_category((title, items)) = {
  cv_subsection((
    title: title,
    body: grid(
      columns: (auto, 1fr),
      gutter: 1em,
      row-gutter: 0.5em,
      ..items.pairs()
        .map(format_subcategory)
        .flatten()
    )
  ))
}

#let technical_skills_section = cv_section("TECHNICAL SKILLS", {
  stack(
    spacing: cv_styling.spacing.element,
    format_category((
      [Programming Languages],
      skills.languages
    )),
    format_category((
      [Frameworks & Libraries],
      skills.frameworks
    )),
    format_category((
      [Tools],
      skills.tools
    ))
  )
}) 