#import "src/lib_cv.typ": primary_color, long_line, diamond

#set document(title: "Research Statement - Bassel El Mabsout")

#set page(
  width: 8.5in,
  height: 11in,
  margin: (x: 1in, y: 1in),
)

#set block(
  // spacing: 0.5em,
)

#set text(
  font: "Libertinus Serif",
  size: 10.5pt,
)

#show heading.where(level: 1): it => [
  #long_line
  #set text(fill: primary_color, weight: "bold", size: 13pt)
  #it
  #v(0.5em)
]

#show heading.where(level: 2): it => [
  #set text(fill: primary_color.lighten(20%), weight: "medium", size: 13pt)
  #it
]

#set par(
  justify: true,
  leading: 0.8em,
)

#v(-3em)
// Title
#align(center)[
  #text(size: 16pt, weight: "bold", fill: primary_color)[Bassel El Mabsout#diamond()Research Statement]
]

= Research Vision
Current methodologies in robotics severely limit our abilities to create capable and efficient robots, even without practical computational constraints. Evidenced by the fact that even advanced robots still struggle with seemingly simple tasks like opening doors or achieving reliable locomotion. Even when seemingly working in simulation, they often fail to generalize when deployed in the real world. The challenge isn't just bridging simulation and reality—it's that our fundamental approaches to specifying and learning robotic behaviors are inherently inefficient and brittle. Modern control theory techniques which include learning, while powerful, often require roboticists to engage in the complex and error-prone task of designing objective functions that faithfully capture desired behaviors. My research aims to transform the field by developing principled methods that enable the *faithful translation of high-level objectives into robust learned behaviors*. Through my work combining programming languages, machine learning, and embedded systems, I develop techniques encompassing the entire robotic control stack, guiding practitioners in overcoming core limitations in robot controller design and implementation. This agenda introduces new foundations that make better use of available computational resources, enabling a new generation of robots that can achieve sophisticated capabilities while maintaining efficiency, and reliability in the real world.

= Research Trajectory
My research program has made significant contributions to reliable and efficient robotic control, with over 100 citations across my publications demonstrating substantial impact in the field:

1. *Reliable Flight Control via Reinforcement Learning:* I developed a technique for composing reward functions that better captures the semantics of desired behaviors. I also developed a systematic framework (RE+AL) for learning controllers in simulated environments that preserves controller quality when transferred to real platforms. This work, published in ACM TCPS, demonstrated the first RL-based controllers trained in simulation to outperform well-tuned PID controllers on real racing quadrotors.

2. *Action Policy Smoothness:* Through my ICRA publication on CAPS (Conditioning for Action Policy Smoothness), I introduced a general regularization technique that mitigates a wide-spread issue in RL, namely the issue of unbounded action frequencies that cause numerous hardware failures upon deployment (shown in @caps_fig). When applied to real world control, this method achieved an 80% reduction in power consumption while maintaining reliable performance. This work has become a cornerstone reference in the field of efficient reinforcement learning, with adoptions in aerial, ground, and even underwater robots.

3. *Resource-Efficient Neural Architectures:* Published in IEEE CoG, we demonstrated that actor networks in reinforcement learning can be dramatically reduced in size (up to 99% reduction in weights) while maintaining satisfactory performance on common benchmark tasks. This breakthrough enables the deployment of learned controllers on heavily resource-constrained platforms.

#pagebreak()
= Current work


4. *Sim-to-Real Adaptation:* By taking into account our capabilities in simulation and our limitations in reality, I've rethought how to frame the sim-to-real adaptation of RL policies as a multi-objective optimization problem. Without careful treatment of this issue, I've observed massive catastrophic forgetting problems in RL policies. Using what I term "anchor critics", the work shows that such issues can be completely mitigated. Additionally, we've released SWANNFlight firmware, an open-source platform that enables researchers to test adaptation techniques on real robots.

5. *Expressive Reinforcement Learning:* I'm addressing fundamental limitations in how roboticists specify desired behaviors through Algebraic Q-Value Scalarization (*AQS*). This novel domain-specific language generalizes traditional linear reward composition by using the power-mean as a logical operator over normalized Q-values. This increases the expressiveness of policy specification. When integrated with our new Balanced Policy Gradient algorithm, AQS achieves up to 600% improvement in sample efficiency compared to state-of-the-art methods like Soft Actor Critic, while significantly reducing policy variability.

5. *Adaptive Lyapunov-based controller learning:* I am constructing quickly converging learned controllers using bounded Lyapunov functions (shown in @lyapunov_fig). These controllers maintain stability across multiple complex dynamical systems simultaneously by leveraging both learned dynamics and idealized models. This approach significantly improves the likelihood of achieving stable, high-performance control when deployed in the real world.

#grid(
    columns: 2,
    gutter: 1em,
    [#figure(
      image("figs/caps.png", height: 6cm, fit: "contain"),
      caption: text(size: 10pt)[CAPS regularization significantly reduces control signal oscillations while maintaining performance, leading to 80% power reduction on real quadrotors.]
    ) <caps_fig>],
    [#figure(
      image("figs/lyapunov.png", height: 6cm, fit: "contain"),
      caption: text(size: 10pt)[Quickly learned family of Lyapunov functions for a pendulum enabling stable control across multiple set points, improving sim-to-real transfer.]
    ) <lyapunov_fig>]
  )

= Future Research Program

*Efficient Control for Resource-Constrained Robots:* Advance the state-of-the-art in neural network control for under-instrumented limbed robots by developing HW/SW architectures for energy-efficient control and runtime adaptation techniques. The goal is to enable a new class of cost- and power-efficient robots that can operate reliably in resource-limited environments.

*Sustainable Robotics:* Explore the intersection of eco-friendly robotics and efficient computing by designing power-aware neural networks that maximize efficiency while integrating formal safety bounds with energy-efficient control. This research direction aims to make robotics more environmentally sustainable without compromising performance or safety.

*Certified Survivability:* Develop methods for certifiably safe and robust neural network-based controllers that can adapt to substantial system damages while maintaining safety guarantees. These controllers will transfer learned behaviors across different robot configurations while providing formal verification of their behavior, ensuring reliability even under extreme conditions.

*Long-term Vision (5+ years)*
My long-term research agenda aims to revolutionize how we develop and deploy reliable robotic systems through two main thrusts:

*Theoretical Foundations:* I will establish new theoretical foundations for provably safe adaptation in robotic systems, focusing on resource-aware learning and control. This work will develop frameworks for intuitive specification of robotic behaviors while enabling formal verification of learned behaviors, bridging the gap between theory and practice in robot learning.

*Real-world Impact:* I will drive the adoption of reliable robotic systems through the development of open-source tools and frameworks, fostering industry collaborations for practical deployment, and creating educational resources for the next generation of roboticists. This approach ensures that theoretical advances translate into practical benefits for society.

= Broader Impacts
I am committed to broader impacts through education, mentorship, and technology transfer:

*Educational Impact*
My teaching experience spans core computer science courses at Boston University, including Distributed Systems, Embedded Systems, and Data Science. I've developed innovative teaching materials like the PyBullet simulation environment for teaching control fundamentals, creating practical, industry-relevant projects that bridge theoretical concepts with real-world applications.

*Student Mentorship*
My mentorship experience includes leading the F1Tenth Racing Team to second place in competition and guiding graduate students to publications at top venues like ECCV 2024. Through programs like RISE, Kilachand Honors College, and BU Spark, I've supervised successful projects and mentored students who have advanced to prestigious institutions like UC Berkeley.

*Industry and Technology Transfer*
I bridge academia and industry through open-source tools and frameworks used in both research and practical applications. My experience creating startup ventures demonstrates the commercial viability of research concepts, while collaborations with industry partners ensure real-world impact of robotic systems.

*Diversity and Inclusion*
My commitment to fostering an inclusive research environment is demonstrated through concrete actions. I've done an introductory presentation for robotics and reinforcement learning for AI4ALL, a program specifically designed to encourage high school girls to pursue AI careers. Through the F1Tenth Racing Team, I've actively mentored students from all sorts of backgrounds, ensuring they gain hands-on experience with autonomous systems. These efforts have successfully supported students in advancing to prestigious institutions and research roles.