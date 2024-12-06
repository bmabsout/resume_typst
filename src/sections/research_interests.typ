#import "../lib_cv.typ": *
#import "../lists.typ": research

#let research_interests = cv_section("RESEARCH INTERESTS", [
  #set text(size: cv_styling.entry.size)
  #set par(justify: true, leading: cv_styling.spacing.paragraph)
  Empowering roboticists to *faithfully* translate high-level intent into *reliable* robot behaviors on _resource-constrained_ systems. I develop tools combining programming languages and machine learning to synthesize controllers meant for the real world. Through carefully designed _adaptation_ methods and a principled approach to _sim-to-real_ transfer, my work ensures learned controllers remain *robust* when deployed.
  #v(cv_styling.spacing.element)
  #cv_subsection((
    title: [My topics of interest include:],
    body: [#research.interests.join([ #diamond() ])]
  ))
]) 