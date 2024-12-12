#import "../lib_cv.typ": *
#import "publications.typ": publications

#let mentorship = cv_section("Mentorship", {
  cv_entries((
    cv_entry(
      [*RISE Program* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2021 -- Present],
      [Mentored Abhinav Pomalapally in gradient-based optimization research, this work led to the population-based optimization paper. Provided recommendation letter leading to his admission to UC Berkeley. Led weekly reading groups on advanced topics in control theory and optimization. #links(labeled("linkedin", link("https://www.linkedin.com/in/apomalapally/")[apomalapally]))]
    ),
    cv_entry(
      [*Kilachand Honors College Keystone Project* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2023],
      [Advised Rithvik Doshi on embedded systems localization project. Implemented pedestrian detection system using ESP32 Bluetooth modules and integrated RTK-GPS for precise positioning. This project was part of the explorations that evolved into building SafeSteps, a startup focused on pedestrian safety. #links(labeled("website", link("https://doshir.dev/about/")[doshir.dev/about]))]
    ),
    cv_entry(
      [*Efficient RL* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2021 -- 2022],
      [Mentored Kathakoli Sengupta and Sandesh Bharadwaj in developing efficient reinforcement learning algorithms. Their work led to a paper accepted at ECCV 2024 titled "UniLCD: Unified Language-Conditioned Detection with Multimodal Queries" where I received an acknowledgement. #links(
        labeled("paper", link("https://unilcd.github.io/")[UniLCD]),
        labeled("Kathakoli (web)", link("https://diasengupta.github.io/")[diasengupta.github.io]),
        labeled("Sandesh (linkedin)", link("https://www.linkedin.com/in/sandeshbharadwaj97/")[bharadwaj97])
      )]
    ),
    cv_entry(
      [*BU Spark* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2022 -- 2023],
      [Supervised team of 5 students in building a 3d printed quadrotor which uses a jetson for onboard processing for research purposes. The quadrotor succesfully completed flight tests.]
    ),
  ))
}) 