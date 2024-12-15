#import "../lib_cv.typ": *

#let selected_projects = cv_section_list("SELECTED PROJECTS",
  (
    cv_entry(
      [*Stochastic dynamics learning* #h(1fr) BU/MIT],
      [Achieving safer learned model-based control requires accurate models, given most real-world systems are stochastic, we built Generative Adversarial Networks which modeling the distribution of the system's trajectories
      #links(labeled("github", link("https://github.com/bmabsout/swirls/blob/96a0e53925c371faa41f20f24e1f882317c4889e/Swirls.ipynb")[bmabsout/swirls]), labeled("github", link("https://github.com/bmabsout/SystemDescent")[bmabsout/SystemDescent]))]
    ),
    cv_entry(
      [*Honda Ridesharing* #h(1fr) SAIL],
      [In collaboration with BU's SAIL and Honda, we worked on privacy preserving (using #link("https://en.wikipedia.org/wiki/Secure_multi-party_computation")[MPC]) preferential ride-sharing. My responsibilities included defining optimization constraints so users with similar preferences get pooled together]
    ),
    cv_entry(
      [*Seizure Prediction* #h(1fr) Machine learning -- CS542],
      [A #link("https://www.kaggle.com/c/melbourne-university-seizure-prediction")[Kaggle competition] project which accurately predicted seizure activity in epileptic patients. Utilizing machine learning techniques, we achieved the highest score with a significant margin (AUC score of 0.92), our model was tested by the competition's organizers and was found to be the best performing model.
      #links(labeled("preprint", link("https://docs.google.com/document/d/1HKi8kLao7C9xCpgz8D72Tq4v4K4DaJnUqhu_5EK97O0/edit?usp=sharing")[tinyurl.com/seizure-prediction]))]
    ),
    cv_entry(
      [*Simplifying the complexity of computing a Nash-#text(size: 14pt,sym.epsilon) equilibrium* #h(1fr) Complexity Theory -- CS535],
      [We simplify an existing proof of the complexity class specifying the run-time of finding Nash-#text(size: 14pt,sym.epsilon) equilibria
      #links(labeled("preprint", link("https://github.com/bmabsout/Nash-complexity/blob/main/NashComplexity.pdf")[tinyurl.com/nash-complexity]))]
    ),
    cv_entry(
      [*Haskell Blog* #h(1fr) Personal Blog],
      [I created a programming languages focused blog exploring geometry, automatic differentiation, and dependently typed vector construction. The blog garnered #link("https://news.ycombinator.com/item?id=15769035")[interest] and was featured on #link("https://haskellweekly.news/issue/82.html")[Haskell Weekly]
      #links(labeled("blog", link("https://bmabsout.com/blog")[bmabsout.com/blog]))]
    )
  )
)