#import "lib_cv.typ": *

#set cite(style: "alphanumeric")

#let publications = (
  quadrotor: (
    authors: "Mabsout B.* and Mysore S.* and Saenko K. and Mancuso R.",
    title: [How to train your quadrotor: A framework for consistently smooth and responsive flight control via reinforcement learning],
    abstract: [
      We focus on the problem of reliably training Reinforcement Learning (RL) models (agents) for stable low-level control in embedded systems and test our methods on a high-performance, custom-built quadrotor platform. A common but often under-studied problem in developing RL agents for continuous control is that the control policies developed are not always smooth. This lack of smoothness can be a major problem when learning controllers as it can result in control instability and hardware failure.
      Issues of noisy control are further accentuated when training RL agents in simulation due to simulators ultimately being imperfect representations of reality—what is known as the reality gap. To combat issues of instability in RL agents, we propose a systematic framework, REinforcement-based transferable Agents through Learning (RE+AL), for designing simulated training environments that preserve the quality of trained agents when transferred to real platforms. RE+AL is an evolution of the Neuroflight infrastructure detailed in technical reports prepared by members of our research group. Neuroflight is a state-of-the-art framework for training RL agents for low-level attitude control. RE+AL improves and completes Neuroflight by solving a number of important limitations that hindered the deployment of Neuroflight to real hardware. We benchmark RE+AL on the NF1 racing quadrotor developed as part of Neuroflight. We demonstrate that RE+AL significantly mitigates the previously observed issues of smoothness in RL agents. Additionally, RE+AL is shown to consistently train agents that are flight capable and with minimal degradation in controller quality upon transfer. RE+AL agents also learn to perform better than a tuned PID controller, with better tracking errors, smoother control, and reduced power consumption. To the best of our knowledge, RE+AL agents are the first RL-based controllers trained in simulation to outperform a well-tuned PID controller on a real-world controls problem that is solvable with classical control.
    ],
    venue: "ACM Trans. Cyber-Phys. Syst., 5(4)",
    year: 2021,
    doi: link("https://doi.org/10.1145/3466618")[10.1145/3466618],
    citations: 28,
    extra_links: (
      ("website", link("https://cpslab.bu.edu/projects/httyq/")[cpslab.bu.edu/projects/httyq]),
    )
  ),
  caps: (
    authors: "Mabsout B.* and Mysore S.* and Saenko K. and Mancuso R.",
    title: [Regularizing Action Policies for Smooth Control with Reinforcement Learning],
    venue: "ICRA",
    year: "2021",
    doi: link("https://doi.org/10.1109/ICRA48506.2021.9561138")[10.1109/ICRA48506.2021.9561138],
    citations: 102,
    abstract: [
      A critical problem with the practical utility of controllers trained with deep Reinforcement Learning (RL) is the notable lack of smoothness in the actions learned by the RL policies. This trend often presents itself in the form of control signal oscillation and can result in poor control, high power consumption, and undue system wear. We introduce Conditioning for Action Policy Smoothness (CAPS), an effective yet intuitive regularization on action policies, which offers consistent improvement in the smoothness of the learned state-to-action mappings of neural network controllers, reflected in the elimination of high-frequency components in the control signal. Tested on a real system, improvements in controller smoothness on a quadrotor drone resulted in an almost 80% reduction in power consumption while consistently training flight-worthy controllers.
    ],
    extra_links: (
      ("website", link("http://cpslab.bu.edu/projects/caps/")[cpslab.bu.edu/projects/caps/]),
    )
  ),
  honey: (
    authors: "Mysore S. and Mabsout B. and Mancuso R. and Saenko K.",
    title: "Honey. I Shrunk The Actor: A Case Study on Preserving Performance with Smaller Actors in Actor-Critic Reinforcement Learning",
    abstract: [
      Actors and critics in actor-critic reinforcement learning algorithms are functionally separate, yet they often use the same network architectures. This case study explores the performance impact of network sizes when considering actor and critic architectures independently. By relaxing the assumption of architectural symmetry, it is often possible for smaller actors to achieve comparable policy performance to their symmetric counterparts. Our experiments show up to 99% reduction in the number of network weights with an average reduction of 77 % over multiple actor-critic algorithms on 9 independent tasks. Given that reducing actor complexity results in a direct reduction of run-time inference cost, we believe configurations of actors and critics are aspects of actor-critic design that deserve to be considered independently, particularly in resource-constrained applications or when deploying multiple actors simultaneously.
    ],
    venue: "IEEE CoG",
    year: "2021",
    doi: link("https://doi.org/10.1109/CoG52621.2021.9619008")[10.1109/CoG52621.2021.9619008],
    citations: 12,
    extra_links: ()
  ),
  thesis: (
    authors: "Mabsout B.",
    title: [Tree Shaping, a solution to the expression problem showcased via a compiler for a programming language named Puler],
    abstract: [
      We address the prevalent challenge of Algebraic Data Type duplication in compiler implementations, which results in increased effort, diminished functionality, and complications in synchronizing language constructs across the compiler. To investigate a novel design solution, we present Tree Shaping, a solution to the expression problem. We then implement an experimental compiler using Tree Shaping and examine its potential implications. This compiler processes programs written in PULER, an ML-based programming language that boasts distinct features such as unification rules for type mismatches. Contrary to traditional compilers that terminate and generate an error when encountering a type mismatch, PULER regards type mismatches as first-class citizens.
    ],
    venue: "Masters Thesis, Boston University",
    year: "2023",
    doi: link("https://hdl.handle.net/2144/49330")[hdl.handle.net/2144/49330],
    extra_links: (
      ("github", link("https://github.com/bmabsout/puler")[bmabsout/puler]),
    )
  ),
  fpl: (
    authors: "Mabsout B.* and Abdelgawad A.* and Mancuso R.",
    title: [Closing the Intent-to-Behavior Gap via Fulfillment Priority Logic],
    abstract: [
      Practitioners designing reinforcement learning policies face a fundamental challenge: translating intended behavioral objectives into representative reward functions. This challenge stems from behavioral intent requiring simultaneous achievement of multiple competing objectives, typically addressed through labor-intensive linear reward composition that yields brittle results. Consider the ubiquitous robotics scenario where performance maximization directly conflicts with energy conservation. Such competitive dynamics are resistant to simple linear reward combinations. In this paper, we present the concept of objective fulfillment upon which we build Fulfillment Priority Logic (FPL). FPL allows practitioners to define logical formula representing their intentions and priorities within multi-objective reinforcement learning. Our novel Balanced Policy Gradient algorithm leverages FPL specifications to achieve up to 500\% better sample efficiency compared to Soft Actor Critic. Notably, this work constitutes the first implementation of non-linear utility scalarization design, specifically for continuous control problems.
    ],
    venue: "IROS",
    year: "2025",
    doi: link("https://arxiv.org/abs/2503.05818")[2503.05818],
    extra_links: (
      ("github", link("https://github.com/bmabsout/FPL-IROS25")[bmabsout/FPL-IROS25]),
    )
  )
)

// Create labels dictionary with label and reference
#let labels_n_refs = {
  let pairs = publications.pairs().enumerate().map(((i, (key, _))) => {
    let number = [ [#(i + 1)] ]
    (key, (
      label: [#number#label(key)],
      ref: link(label(key), number)
    ))
  })
  let result = (:)
  for (key, value) in pairs {
    result.insert(key, value)
  }
  result
}
