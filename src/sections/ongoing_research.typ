#import "../lib_cv.typ": *

#let ongoing_research = cv_section_list("ONGOING RESEARCH", 
  (
    cv_entry(
      entry_heading( l: [Anchored Learning for On-the-Fly Adaptation], r: [submitted] ),
      [A novel strategy for enhancing the robustness of reinforcement learning agents in crossing the sim-to-real gap. Our method maximizes multiple Q-values across domains, ensuring high performance in both simulation and reality, achieving a near-50% reduction in power consumption while maintaining controllable, stable flight #links(labeled("arXiv", link("https://arxiv.org/abs/2301.06987")[2301.06987]), labeled("github", link("https://github.com/bmabsout/AnchoredActorCritic")[bmabsout/AnchoredActorCritic]))]
    ),
    cv_entry(
      entry_heading( l: [Expressive Reinforcement Learning via Algebraic Q-Value Scalarization (AQS)], r: [submitting] ),
      [We introduce *AQS*, a novel domain-specific language for specifying policy behavior. *AQS* generalizes linear utilities by employing the power-mean as a logical operator over normalized Q-values. By specifying how different policy objectives interact, users can intuitively design policy losses #links(labeled("github", link("https://github.com/bmabsout/AQS")[bmabsout/AQS]))
      ]
    ),
    cv_entry(
      entry_heading( l: [Scrap Your Schedules with PopDescent], r: [submitted] ),
      [A population-based hyperparameter optimization method which adaptively controls hyperparameter selection via a normalized fitness function. The method combines the exploration benefits of evolutionary algorithms with the exploitation of gradient descent, outperforming the use of schedules by up to 18% #links(labeled("arXiv", link("https://arxiv.org/abs/2310.14671")[2310.14671]))]
    ),
    cv_entry(
      entry_heading( l: [Adaptive Lyapunov-based controller learning], r: [ongoing] ),
      [We construct learned controllers using quickly converging learned bounded Lyapunov functions for maintaining stability under multiple complex dynamical systems at the same time. This technique is then used to take advantage of learned dynamics as well as idealized models, improving the probability of stable and high-performance control when deployed in the real world #links(labeled("github", link("https://github.com/bmabsout/SystemDescent")[bmabsout/SystemDescent]))]
    ),
    cv_entry(
      entry_heading( l: [Risk-aware path planning using 2D-Gaussian mixtures], r: [ongoing] ),
      [In order to maximize the safety and performance of autonomous vehicles, we propose a risk-aware path planning framework that uses 2D-Gaussian mixtures. We propose an efficient method for computing the risk of trajectories allowing for real-time sampling and optimization on computationally constrained F1tenth vehicles #links(labeled("github", link("https://github.com/bmabsout/gaussian_racer_jax/tree/webgpu")[bmabsout/gaussian_racer_jax]))]
    ),
  ))