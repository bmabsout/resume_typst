#import "../lib_cv.typ": *
#import "publications.typ": labels

#let press_releases = cv_section("PRESS RELEASES", {
  stack(
    spacing: cv_styling.spacing.element,
    cv_subsection((
      title: "Presentations",
      body: cv_entries((
        cv_entry(
          [*Wallenberg AI, Autonomous Systems and Software Program* #h(1fr) #link("https://wasp-sweden.org/")["wasp-sweden.org"] #h(0.5em) 2023],
          [Presented my research to the WASP group on increasing controller robustness and reducing power consumption on complex robots]
        ),
        cv_entry(
          [*Galois Inc.* #h(1fr) #link("https://galois.com/blog/2023/07/achieving-robustness-in-learned-control/")["Achieving Robustness in Learned Control"] #h(0.5em) 2023],
          [Presented work on combining formal verification with reinforcement learning for control, exploring the challenges of defining and proving specifications for learned controllers while maintaining performance and robustness.]
        ),
        cv_entry(
          [*BU AIR* #h(1fr) #link("https://www.bu.edu/hic/centers-initiatives-labs/air/")["bu.edu/hic/centers-initiatives-labs/air"] #h(0.5em) 2022],
          [Presented findings on reward design #labels.quadrotor.ref and minimizing actuation #labels.caps.ref for real world RL-based control]
        ),
        cv_entry(
          [*BU Systems Seminar* #h(1fr) 2022],
          [Presented my PhD journey around efficient reinforcement learning and embedded systems]
        ),
        cv_entry(
          [*Honda Research Institute* #h(1fr) #link("https://honda-ri.de/institute")["honda-ri.de/institute"] #h(0.5em) 2021],
          [Presented work on privacy-preserving ridesharing using secure multi-party computation (MPC), focusing on optimization constraints for pooling users with similar preferences, and presented methodology for n-dimensional similarity matching using the Hilbert space-filling curve]
        ),
        cv_entry(
          [*ICRA* #h(1fr) 2021],
          [Presented my paper on regularizing action policies for smooth control]
        ),
        cv_entry(
          [*CoG* #h(1fr) 2021],
          [Presented work on minimizing actor sizes for real-time control in actor-critic RL]
        ),
      ))
    )),
    cv_subsection((
      title: "News Articles",
      body: grid(
        columns: (auto, 1fr, auto),
        gutter: 1em,
        row-gutter: 0.5em,
        [*Haskell Weekly*], align(left)[#link("https://haskellweekly.news/issue/82.html")["Issue 82"]], [2017],
        [*BU Hub Innovation Center*], align(left)[#link("https://www.bu.edu/hic/2021/03/17/simplifying-machine-learning-for-drone-flight-control/")["Simplifying Machine Learning for Drone Flight Control"]], [2021],
      )
    ))
  )
}) 