#import "src/lib_cv.typ": primary_color, long_line, diamond

#set document(title: "Research Statement - Bassel El Mabsout")

#set page(
  width: 8.5in,
  height: 11in,
  margin: (x: 1in, y: 1in),
)

#set text(
  font: "Libertinus Serif",
  size: 12pt,
)

#show heading.where(level: 1): it => [
  #long_line
  #v(-0.3em)
  #set text(fill: primary_color, weight: "bold", size: 12pt)
  #it
  #v(0.3em)
]

#set par(
  justify: true,
  leading: 0.6em,
)

#set cite(style: "the-institution-of-engineering-and-technology")

#v(-3em)
// Title
#align(center)[
  #text(size: 13pt, weight: "bold", fill: primary_color)[Bassel El Mabsout#diamond()Research Statement]
]
#v(-0.6em)
= Research Vision
Current methodologies in robot learning face two critical challenges that limit the capabilities of cyberphysical systems: expressing intentions as learning objectives (the intent-to-behavior gap) and maintaining controller behavior when moving from simulation to reality (the sim-to-real gap). These challenges are particularly acute in resource-constrained systems, where failures can lead to damage and where computational efficiency is paramount. My research introduces principled foundations for bridging these gaps through structured objective specification. By combining insights from programming languages, machine learning, and embedded systems, I enable practitioners to directly express their intentions while ensuring learned behaviors remains robust and efficient when deployed on real platforms—demonstrated through applications ranging from general-purpose robot control to state-of-the-art performance on racing quadrotors.
#v(-0.7em)
= Research Impact and Current Work

*Foundational Sim-to-Real Transfer:* In RE+AL @real, my first research paper demonstrated the first RL-based controllers to consistently outperform well-tuned PID controllers on real racing quadrotors. Building on this, my recent work on anchor critics @anchor allows for on-the-fly NN optimization, achieving near-50% power reduction while preventing catastrophic forgetting.

*Reliable Real-World Deployment:* In CAPS~@caps, a general power optimization technique, I demonstrated 80% power reduction while maintaining performance on real robots. This work has become a cornerstone reference in efficient reinforcement learning garnering over 80 citations.

*Efficient Control for Resource-Constrained Robots:* By breaking actor-critic symmetry~@honey, neural network controllers can be dramatically reduced in size (up to 99% reduction in number of parameters) with similar performance. Enabling deployment on resource-constrained platforms.

#v(-0.7em)
= Future Research Program and Impact
My research agenda focuses on establishing Expressive Reinforcement Learning as a new subfield dedicated to faithfully translating high-level objectives into robust robot behaviors. I am developing Algebraic Policy Specification (APS)~@aps, a novel domain-specific language that generalizes traditional reward composition to enable direct expression of complex behavioral objectives. Initial results show a 600% improvement in sample efficiency compared to state-of-the-art methods. In the short term (2-5 years), I will create frameworks for composable reward specifications that generalize across different robotics domains while maintaining computational efficiency. Long-term, this work will establish theoretical foundations for a new generation of robot learning systems that can faithfully translate high-level intentions into reliable behaviors.

I am committed to open-source development and have released: a firmware for live adaptation on real robots @swannflight, algorithms for Lyapunov-based stable control @system_descent and stochastic dynamics learning @swirls, and software for risk-aware planning @gaussian_racer. Through these contributions and active mentorship of students in robotics research, including leading 11 students to second place in F1Tenth racing and mentoring graduate students to publication at ECCV 2024 @unilcd, I aim to foster an environment where advances in robot learning translate directly to practical impact.

#pagebreak()
#bibliography("research_statement.bib")
