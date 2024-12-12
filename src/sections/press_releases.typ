#import "../lib_cv.typ": *

#let press_releases = cv_section("Press Releases",
  cv_entries((
    cv_entry(
      [*BU Hub Innovation Center* #h(1fr) #link("https://www.bu.edu/hic/2021/03/17/simplifying-machine-learning-for-drone-flight-control/")["Simplifying Machine Learning for Drone Flight Control"] #h(0.5em) 2021],
      []
    ),
    cv_entry(
      [*WASP Summer School* #h(1fr) 2023],
      [Presented research on reinforcement learning for quadrotor control]
    ),
    cv_entry(
      [*Galois Inc.* #h(1fr) 2023],
      [Presented work on formal verification of learned controllers]
    ),
    cv_entry(
      [*BU AIR* #h(1fr) 2022],
      [Presented research on quadrotor control and sim2real adaptation]
    ),
    cv_entry(
      [*BU Systems Seminar* #h(1fr) 2022],
      [Presented work on efficient reinforcement learning for embedded systems]
    ),
    cv_entry(
      [*HRI-EU* #h(1fr) 2021],
      [Presented research on smooth control via reinforcement learning]
    ),
    cv_entry(
      [*ICRA* #h(1fr) 2021],
      [Presented paper on regularizing action policies for smooth control]
    ),
    cv_entry(
      [*CoG* #h(1fr) 2021],
      [Presented work on actor size reduction in actor-critic RL]
    )
  ))
) 