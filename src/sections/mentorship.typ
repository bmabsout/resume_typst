#import "../lib_cv.typ": *
#import "publications.typ": labels

#let mentorship = cv_section("Mentorship", {
  cv_entries((
    cv_entry(
      [*F1Tenth Racing Team* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2024],
      [Mentored a team of 11 students (Koneshka Bandyopadhyay, Muhammad Aseef Imran, Shahnawaz Fakir, Georgina Focia, Ruihang Liu, Hyunjin Jung, Jiawei Sun, Patrick Kuzdzal, Yann Arif, Jiyayi Shen) in developing an autonomous racing platform. Led the development of simulation environments, classic control algorithms, computer vision systems, and hardware integration. The team successfully competed and won second place in an official F1Tenth competition. We developed novel approaches to autonomous racing including obstacle avoidance and path planning algorithms, as well as Guassian-mixture-based control methods, and explored Gaussian-splatting based localization.]
    ),
    cv_entry(
      [*Unified Local-Cloud Decision-Making via Reinforcement Learning* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2023],
      [Mentored Kathakoli Sengupta and Sandesh Bharadwaj in developing UniLCD, a hybrid inference framework for local-cloud collaboration in mobile robotics. Guided the implementation of the complete control pipeline in CARLA simulator and guided the design of the reward structure for the reinforcement learning system following #labels.quadrotor.ref, contributing to a 35% performance improvement over baselines. Their work was accepted at ECCV 2024. #links(
        labeled("paper", link("https://unilcd.github.io/")[UniLCD]),
        labeled("Kathakoli (web)", link("https://diasengupta.github.io/")[diasengupta.github.io]),
        labeled("Sandesh (linkedin)", link("https://www.linkedin.com/in/sandeshbharadwaj97/")[bharadwaj97])
      )]
    ),
    cv_entry(
      [*RISE Program* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2022],
      [Mentored Abhinav Pomalapally in gradient-based optimization research, this work led to the population-based optimization paper. Provided recommendation letter leading to his admission to UC Berkeley. Led weekly reading groups on advanced topics in control theory and optimization. #links(labeled("linkedin", link("https://www.linkedin.com/in/apomalapally/")[apomalapally]))]
    ),
    cv_entry(
      [*Kilachand Honors College Keystone Project* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2024],
      [Advised Rithvik Doshi on embedded systems localization project. Implemented pedestrian detection system using ESP32 Bluetooth modules and integrated RTK-GPS for precise positioning. This project was part of the explorations that evolved into building SafeSteps, a startup focused on pedestrian safety. #links(labeled("website", link("https://doshir.dev/about/")[doshir.dev/about]))]
    ),
    cv_entry(
      [*BU Spark* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2023],
      [Supervised team of 5 students in building a 3d printed quadrotor which uses a jetson for onboard processing for research purposes. The quadrotor succesfully completed flight tests.]
    ),
    cv_entry(
      [*Zahera* #text(style: "italic", weight: "regular")[Software Engineering Lead] #h(1fr) 2021],
      [Mentored Shadi Shahin, Marwa Karaki, and Pierre Kamel in building an application with heavy image processing components. Guiding them on modern development practices, code quality, and system architecture. I Led technical training sessions and provided guidance on best practices in software development.]
    ),
    cv_entry(
      [*Scanman* #text(style: "italic", weight: "regular")[Founder] #h(1fr) 2022],
      [Mentored two developers in development on live real-time data processing, database design, and program architecture. Provided guidance on algorithm implementations, code optimization, and full-stack development.]
    ),
  ))
}) 