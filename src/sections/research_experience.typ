#import "../lib_cv.typ": *

#let research_experience = cv_section("RESEARCH EXPERIENCE", {
  cv_entries((
    cv_entry(
      [*Graduate Research Assistant* #h(1fr) 2018 -- Present],
      [_Boston University_ \
      - Developed novel reinforcement learning algorithms for quadrotor control
      - Created frameworks for safety-critical controller learning
      - Implemented state estimation using Gaussian splatting]
    ),
    cv_entry(
      [*Research Assistant* #h(1fr) 2016 -- 2018],
      [_American University of Beirut_ \
      - Developed _neural-swarm_, a collection of experimental optimization algorithms
      - Implemented decentralized swarm control systems]
    )
  ))
}) 