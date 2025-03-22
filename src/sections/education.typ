#import "../lib_cv.typ": *

#let education = cv_section_list("EDUCATION",
  (
    cv_entry(
      entry_heading(
        l: [Ph.D. candidate in Computer Science],
        m: [Boston University],
        r: [2018 -- august 2025]
      ),
      [Advisor: Renato Mancuso, GPA: 3.9/4.0 \
      Depth exam: _Control Theory and Embedded Systems_ #h(1fr) #smallcaps(lower([passed 2022]))\
      #h(cv_styling.insets.inner.left)_Committee: \[Renato Mancuso#diamond()Rich West#diamond()Kate Saenko\]_\
      Prospectus: _Minimizing the Intent-To-Reality Gap_ #h(1fr) #smallcaps(lower([passed 2025]))\
      #h(cv_styling.insets.inner.left)_Committee: \[Renato Mancuso#diamond()Kate Saenko#diamond()Sabrina Neuman#diamond()Bingzhuo Zhong\]_]
    ),
    cv_entry(
      entry_heading(
        l: [M.S. in Computer Science],
        m: [Boston University],
        r: [2023]
      ),
      [Thesis: _Tree Shaping, a solution to the expression problem_\
      #h(cv_styling.insets.inner.left)_Committee: \[Marco Gaboardi#diamond()Renato Mancuso\]_]
    ),
    cv_entry(
      entry_heading(
        l: [B.S. in Computer Science],
        m: [American University of Beirut],
        r: [2012 -- 2015]
      ),
      []
    )
  )
)