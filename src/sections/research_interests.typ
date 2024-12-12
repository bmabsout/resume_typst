#import "../lib_cv.typ": *
#import "../lists.typ": research

#let research_interests = cv_section("RESEARCH INTERESTS", [
  #set text(size: cv_styling.entry.size)
  #set par(justify: true, leading: cv_styling.spacing.paragraph)
  My research focuses on enabling roboticists to *faithfully* translate high-level objectives into *robust* learned behaviors, particularly for _resource-constrained_ robotic systems. By combining programming languages and machine learning techniques, I develop methods to synthesize controllers that perform *reliably* in real-world environments. My work emphasizes principled _adaptation_ and _sim-to-real_ transfer approaches to ensure learned controllers maintain their intended behavior when deployed.
  #v(cv_styling.spacing.element)
  #cv_subsection((
    title: [My topics of interest include:],
    body: [#research.interests.join([#h(1fr)#diamond()#h(1fr)])]
  ))
]) 