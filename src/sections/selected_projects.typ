#import "../lib_cv.typ": *

#let selected_projects = cv_section_list("SELECTED PROJECTS",
  (
    cv_entry(
      entry_heading(l:[Control Theory Survey], r:[depth exam -- bu]),
      [This survey explores the landscape of safe robot learning, investigating methods that balance high-performance control with rigorous safety constraints. By examining classical control techniques, learning-based approaches, and embedded system design, the research seeks to understand how robotic systems can be developed to prevent hazardous states while maintaining optimal performance.
      #links(labeled("arxiv", link("https://arxiv.org/abs/2501.01432")[2501.01432]))]
    ),
    cv_entry(
      entry_heading(l:[Stochastic dynamics learning], r:[bu/mit]),
      [Achieving safer learned model-based control requires accurate models, given most real-world systems are stochastic, I built Generative Adversarial Networks modeling the distribution of a system's trajectories.
      #links(labeled("github", link("https://github.com/bmabsout/swirls/blob/96a0e53925c371faa41f20f24e1f882317c4889e/Swirls.ipynb")[bmabsout/swirls]), labeled("github", link("https://github.com/bmabsout/SystemDescent")[bmabsout/SystemDescent]))]
    ),
    cv_entry(
      entry_heading(l:[Honda Ridesharing], r:[sail]),
      [In collaboration with BU's SAIL and Honda, we worked on privacy preserving (using #link("https://en.wikipedia.org/wiki/Secure_multi-party_computation")[MPC]) preferential ride-sharing. My responsibilities included defining optimization constraints so users with similar preferences get pooled together]
    ),
    cv_entry(
      entry_heading(l:[Seizure Prediction], r:[machine learning -- cs542]),
      [A #link("https://www.kaggle.com/c/melbourne-university-seizure-prediction")[Kaggle competition] project which accurately predicted seizure activity in epileptic patients. Utilizing machine learning techniques, we achieved the highest score with a significant margin (AUC score of 0.92), our model was tested by the competition's organizers and was found to be the best performing model.
      #links(labeled("preprint", link("https://docs.google.com/document/d/1HKi8kLao7C9xCpgz8D72Tq4v4K4DaJnUqhu_5EK97O0/edit?usp=sharing")[tinyurl.com/seizure-prediction]))]
    ),
    cv_entry(
      entry_heading(l:[Simplifying Nash-#text(size: 14pt,sym.epsilon) equilibrium complexity], r:[complexity theory -- cs535]),
      [We simplify an existing proof of the complexity class specifying the run-time of finding Nash-#text(size: 14pt,sym.epsilon) equilibria
      #links(labeled("preprint", link("https://github.com/bmabsout/Nash-complexity/blob/main/NashComplexity.pdf")[tinyurl.com/nash-complexity]))]
    ),
    cv_entry(
      entry_heading(l:[Haskell Blog], r:[personal blog]),
      [I created a programming languages focused blog exploring geometry, automatic differentiation, and dependently typed vector construction. The blog garnered #link("https://news.ycombinator.com/item?id=15769035")[interest] and was featured on #link("https://haskellweekly.news/issue/82.html")[Haskell Weekly]
      #links(labeled("blog", link("https://bmabsout.com/blog")[bmabsout.com/blog]))]
    )
  )
)