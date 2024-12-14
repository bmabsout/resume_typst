#import "../lib_cv.typ": *
#import "../lists.typ": research

#let research_interests = cv_section_list("RESEARCH INTERESTS",
  (
    par(leading: cv_styling.spacing.paragraph)[My research focuses on enabling roboticists to *faithfully* translate high-level objectives into *robust* learned behaviors, particularly for _resource-constrained_ robotic systems. By combining programming languages and machine learning techniques, I develop methods to synthesize controllers that perform *reliably* in real-world environments. My work emphasizes principled _adaptation_ and _sim-to-real_ transfer approaches to ensure learned controllers maintain their intended behavior when deployed.],
    cv_subsections_list(
      [My topics of interest include:],
      ([#research.interests.join([#h(1fr)#diamond()#h(1fr)])],)
    ))
  )
) 