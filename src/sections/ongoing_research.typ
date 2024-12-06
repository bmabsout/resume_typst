#import "../lib_cv.typ": *

#let ongoing_research = cv_section("ONGOING RESEARCH", {
  cv_entries((
    cv_entry(
      [*Population Descent* #h(1fr) Submitted],
      [A natural-selection based Memetic algorithm which adaptively controls hyperparameter selection via a normalized fitness function -- PREPRINT]
    ),
    cv_entry(
      [*Sim2Real Adaptation via Anchored Learning* #h(1fr) Submitting],
      [Anchors allow for adapting RL-based controllers on the fly while mitigating the issue of catastrophic forgetting. Our method does so by finding controllers which satisfy performance conditions both in simulation and reality -- PREPRINT]
    ),
    cv_entry(
      [*Safety-critical controller learning* #h(1fr) Ongoing],
      [We construct learned bounded Lyapunov functions for maintaining safety under a differential equation and on residual dynamics. Adapting controllers to improve the probability of safety and performance in the real world -- SOURCE]
    ),
    cv_entry(
      [*State-estimation using Gaussian splatting* #h(1fr) Ongoing],
      [The pose of a quadrotor is estimated by combining Gaussian splatting with an onboard camera feed. Estimation occurs in real-time on the embedded system]
    ),
    cv_entry(
      [*Multi-objective RL via generalized-mean scalarization* #h(1fr) Ongoing],
      [We use the generalized-mean for scalarizing a normalized multi-Q-value function forming a continuous specification in a multi-objective RL setting]
    )
  ))
}) 