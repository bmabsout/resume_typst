#import "../lib_cv.typ": *

#let education = cv_section_list("EDUCATION",
  (
    cv_entry(
      entry_heading(
        l: [Ph.D. in Computer Science],
        m: [Boston University],
        r: [2018 -- 2025]
      ),
      [Advisor: Renato Mancuso \
      Dissertation: _Minimizing the Intent-to-Reality Gap in Robot Learning: A Fulfillment-Centric Perspective_\
      #h(cv_styling.insets.inner.left)_Committee: \[Renato Mancuso#diamond()Kate Saenko#diamond()Sabrina Neuman#diamond()Bingzhuo Zhong\]_
      #links(labeled("dissertation", link("https://github.com/bmabsout/Thesis/blob/main/thesis.pdf")[github.com/bmabsout/Thesis]), labeled("qualifiers survey paper", link("https://arxiv.org/abs/2501.01432")[2501.01432]))]
    ),
    cv_entry(
      entry_heading(
        l: [M.S. in Computer Science],
        m: [Boston University],
        r: [2023]
      ),
      [Thesis: _Tree Shaping, a solution to the expression problem_\
      #h(cv_styling.insets.inner.left)_Committee: \[Marco Gaboardi#diamond()Renato Mancuso\]_
      #links(labeled("thesis", link("https://hdl.handle.net/2144/49330")[hdl.handle.net/2144/49330]))]
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