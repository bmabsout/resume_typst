#import "../lib_cv.typ": *

#let selected_projects = cv_section("SELECTED PROJECTS", {
  cv_entries((
    cv_entry(
      [*Stochastic dynamics learning* #h(1fr) BU/MIT],
      [Achieving safer learned model-based control requires accurate models, given most real-world systems are stochastic, we built Generative Adversarial Networks which modeling the distribution of the system's trajectories -- SOURCE]
    ),
    cv_entry(
      [*Honda Ridesharing* #h(1fr) SAIL],
      [In collaboration with BU's SAIL and Honda, we worked on privacy preserving (using MPC) preferential ride-sharing. My responsibilities included defining optimization constraints so users with similar preferences get pooled together]
    ),
    cv_entry(
      [*Seizure Prediction* #h(1fr) Machine learning -- CS542],
      [A Kaggle competition project which accurately predicted seizure activity in epileptic patients. Utilizing machine learning techniques, we achieved the highest score with a significant margin (AUC score of 0.92) -- PREPRINT]
    ),
    cv_entry(
      [*Finding a NASH-ε Equilibrium* #h(1fr) Complexity Theory -- CS535],
      [This term paper simplifies an existing proof of the complexity class specifying the run-time of finding approximate Nash equilibria -- PREPRINT]
    ),
    cv_entry(
      [*Haskell Blog* #h(1fr) Personal Blog],
      [I created a Haskell blog hosted on IPFS about programming language concepts such as automatic differentiation and dependently typed vector construction which garnered some interest and was featured on Haskell News]
    )
  ))
}) 