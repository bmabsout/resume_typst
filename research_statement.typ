#import "src/lib_cv.typ": primary_color, long_line, diamond

#set document(title: "Research Statement - Bassel El Mabsout")

#set page(
  width: 8.5in,
  height: 11in,
  margin: (x: 0.8in, y: 0.5in),
)

#set block(
  // spacing: 0.5em,
)

#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#show heading.where(level: 1): it => [
  #long_line
  #set text(fill: primary_color, weight: "bold", size: 13pt)
  #it
  #v(0.5em)
]


#set par(
  justify: true,
  leading: 0.8em,
)

#v(-1em)
// Title
#align(center)[
  #text(size: 16pt, weight: "bold", fill: primary_color)[Bassel El Mabsout#diamond()Research Statement]
]

= Research Vision
Current methodologies in robotics severely limit our abilities to create capable and efficient robots, even without practical computational constraints. Evidenced by the fact that even advanced robots still struggle with seemingly simple tasks like opening doors or achieving reliable locomotion. Even when seemingly working in simulation, they often fail to generalize when deployed in the real world. The challenge isn't just bridging simulation and reality—it's that our fundamental approaches to specifying and learning robotic behaviors are inherently inefficient and brittle. Modern control theory techniques which include learning, while powerful, often require roboticists to engage in the complex and error-prone task of designing objective functions that faithfully capture desired behaviors. My research aims to transform the field by developing principled methods that enable the *faithful translation of high-level objectives into robust learned behaviors*. Through my work combining programming languages, machine learning, and embedded systems, I develop techniques that help practitioners overcome these core limitations in robot design and implementation. This agenda introduces new foundations that make better use of available computational resources, enabling a new generation of robots that can achieve sophisticated capabilities while maintaining efficiency, and reliability in the real world.

= Research Trajectory
My research program has made significant contributions to reliable and efficient robotic control, with over 100 citations across my publications demonstrating substantial impact in the field:

1. *Reliable Flight Control via Reinforcement Learning:* I developed a systematic framework (RE+AL) for designing simulated training environments that preserve controller quality when transferred to real platforms. We also introduced a technique for composing reward functions that have influenced the design of many subsequent works. This work, published in ACM TCPS, demonstrated the first RL-based controllers trained in simulation to outperform well-tuned PID controllers on real racing quadrotors, while achieving better tracking errors and reduced power consumption.

2. *Action Policy Smoothness:* Through my ICRA publication on CAPS (Conditioning for Action Policy Smoothness), I introduced a general regularization technique that significantly improves the smoothness of learned controllers. When applied to quadrotor control, this method achieved an 80% reduction in power consumption while maintaining reliable flight performance. This work has become a cornerstone reference in the field of efficient reinforcement learning, with adoptions in aerial, aquatic, ground, and even soft robots.

3. *Resource-Efficient Neural Architectures:* Published in IEEE CoG, we demonstrated that actor networks in reinforcement learning can be dramatically reduced in size (up to 99% reduction in weights) while maintaining satisfactory performance. This breakthrough enables the deployment of learned controllers on heavily resource-constrained platforms.

Building on this notion of robust learning under resource constraints, my current work extends into several other directions:

4. *Anchored Learning for Real-World Adaptation:* I've developed "anchor critics," a novel strategy that fundamentally rethinks how we adapt RL agents to real-world scenarios. While traditional fine-tuning approaches often lead to catastrophic forgetting—where policies maintain performance on common scenarios but fail in critical edge cases—our method ensures robust performance across both simulation and reality by maximizing multiple Q-values across domains. When applied to racing quadrotors, this approach achieves a near-50% reduction in power consumption while maintaining stable flight, demonstrating its effectiveness in bridging the sim-to-real gap. Additionally, we've released firmware, an open-source platform that enables researchers to test adaptation techniques on real robots.

5. *Expressive Reinforcement Learning:* I'm addressing fundamental limitations in how roboticists specify desired behaviors through Algebraic Q-Value Scalarization (*AQS*). This novel domain-specific language generalizes traditional linear reward composition by using power-means as logical operators over normalized Q-values, making policy specification more intuitive and robust. When integrated with our new Balanced Policy Gradient algorithm, AQS achieves up to 600% improvement in sample efficiency compared to state-of-the-art methods like Soft Actor Critic, while significantly reducing policy variability.

#figure(
  grid(
    columns: 2,
    gutter: 1em,
    [Figure 1: Anchored Learning results showing 50% power reduction while maintaining performance],
    [Figure 2: AQS policy specification example demonstrating intuitive behavior composition]
  ),
  caption: [
    *Key Results:* Left: Performance comparison of Anchored Learning vs. baselines in sim-to-real transfer.
    Right: Example of AQS policy specification showing composition of multiple objectives.
  ]
)

*Past Achievements*
My research journey began at the American University of Beirut, where I first explored the intersection of neural networks and swarm control systems. As a researcher there, I developed neural-swarm, a pioneering collection of experimental optimization algorithms for learning decentralized swarm control systems. This early work laid the foundation for my current research in robust learning for robotic systems.

During my doctoral studies at Boston University under Dr. Renato Mancuso, I've focused on bridging the gap between high-level objectives and reliable robotic behavior. My work has produced several key contributions:

1. Development of novel optimization techniques that significantly improve the reliability of learned controllers
2. Creation of new programming abstractions for specifying robot behaviors
3. Advancement of methods for ensuring stability in learned control systems

In parallel with my academic research, I've demonstrated the practical application of my work through successful entrepreneurial ventures. As a founder and technical leader, I've developed and deployed complex systems that showcase the real-world impact of principled software design and optimization techniques.

= Future Research Program
*Short-term Goals (2-5 years)*
Building on my current research achievements, I plan to pursue several interconnected research directions, supported by specific funding opportunities:

1. *Efficient Control for Resource-Constrained Robots:* I will advance the state-of-the-art in neural network control for under-instrumented limbed robots, focusing on:
   - Developing HW/SW architectures for energy-efficient control (Year 1-2, NSF CPS)
   - Creating efficient learned runtime adaptation techniques for constrained platforms (Year 2-3, DARPA YFA)
   - Enabling a new class of cost- and power-efficient robots (Year 3-4, Industry partnerships)

2. *Sustainable Robotics:* I will explore the intersection of eco-friendly robotics and efficient computing through:
   - Development of solar-powered UAV systems for sustainable agriculture (Year 1-2, USDA-NIFA)
   - Design of power-aware neural networks that maximize efficiency (Year 2-3, DOE ARPA-E)
   - Integration of formal safety bounds with energy-efficient control (Year 3-4, NSF CAREER)

3. *Certified Survivability:* I will develop methods for certifiably safe and robust neural network-based controllers that can:
   - Adapt to substantial system damages while maintaining safety guarantees (Year 1-2, ONR)
   - Transfer learned behaviors across different robot configurations (Year 2-3, NASA STTR)
   - Provide formal verification of controller behavior (Year 3-4, Industry collaboration)

*Long-term Vision (5+ years)*
My long-term research agenda aims to revolutionize how we develop and deploy reliable robotic systems:

1. *Framework Development:* Create a comprehensive framework that seamlessly integrates:
   - Data ownership and privacy concerns in robotic systems
   - Efficient processing of ML workloads on resource-constrained platforms
   - Secure execution guarantees for robotic applications

2. *Theoretical Foundations:* Establish new theoretical foundations for:
   - Provably safe adaptation in robotic systems
   - Resource-aware learning and control
   - Formal verification of learned behaviors

3. *Real-world Impact:* Drive the adoption of reliable robotic systems through:
   - Development of open-source tools and frameworks
   - Industry collaborations for practical deployment
   - Creation of educational resources for the next generation of roboticists


= Integration with Institution
[...]

= Broader Impacts
My research program is deeply committed to broader impacts through education, mentorship, and technology transfer:

*Educational Impact*
I have extensive experience in teaching and mentoring, having:
- Led courses in Distributed Systems, Embedded Systems, and Data Science at Boston University
- Developed innovative teaching materials, including a PyBullet simulation environment for teaching control fundamentals
- Created practical, industry-relevant projects that bridge theoretical concepts with real-world applications

*Student Mentorship*
I've successfully mentored diverse groups of students in various contexts:
- Led the F1Tenth Racing Team of 11 students to second place in competition, developing novel approaches to autonomous racing
- Guided graduate students in research leading to publications at top venues (e.g., ECCV 2024)
- Supervised multiple successful projects through programs like RISE, Kilachand Honors College, and BU Spark
- Mentored students who have gone on to prestigious institutions like UC Berkeley

*Industry and Technology Transfer*
My work bridges academia and industry through:
- Development of open-source tools and frameworks used in both research and practical applications
- Creation of startup ventures that demonstrate the commercial viability of research concepts
- Collaboration with industry partners on real-world applications of robotic systems

*Diversity and Inclusion*
I am committed to fostering an inclusive research environment by:
- Mentoring students from diverse backgrounds and supporting their career development
- Creating accessible educational resources that democratize robotics education
- Designing projects that encourage participation from students with varied technical backgrounds

Through these activities, I aim to not only advance the field of robotics technically but also to build a diverse and skilled community of future roboticists.