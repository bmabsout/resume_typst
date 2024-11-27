#import "lib.typ": *

// Main document settings
#set page(
  margin: (x: 1.15cm, y: 0.5cm),
  paper: "us-letter",
)

#set text(
  font: fonts.body,
  size: 10pt,
  fill: rgb(43, 43, 43),
)

// Document heading - outside columns
#header_section(
  "Bassel El Mabsout",
  contact_info_box(
    (
      (icon: "phone", text: "+1 (857) 939-8769"),
      (icon: "location", text: "Boston, MA, USA"),
      (icon: "email", text: "bmabsout@bu.edu")
    ),
    (
      (icon: "globe", text: "bmabsout.com"),
      (icon: "github", text: "github.com/bmabsout"),
      (icon: "scholar", text: "Google Scholar")
    )
  )
)

#v(0.1em)

// Use grid instead of columns for different widths
#grid(
  columns: (55%, 45%),
  gutter: 1.2em,
  // Left column content
  section_list(
    (
      // First half of sections
      (
        title: "PUBLICATIONS",
        content: stack(
          spacing: 0.65em,
          publication(
            "Mabsout B.*, Mysore S.*, Saenko K., Mancuso R.",
            "How to train your quadrotor: A framework for consistently smooth and responsive flight control via reinforcement learning",
            "ACM Trans. Cyber-Phys. Syst., 5(4)",
            "2021"
          ),
          publication(
            "Mabsout B.*, Mysore S.*, Saenko K., Mancuso R.",
            "Regularizing Action Policies for Smooth Control with Reinforcement Learning",
            "ICRA",
            "2021"
          ),
          publication(
            "Mysore S., Mabsout B., Mancuso R., Saenko K.",
            "Honey. I Shrunk The Actor: A Case Study on Preserving Performance with Smaller Actors in Actor-Critic RL",
            "IEEE Conference on Games (CoG)",
            "2021"
          ),
          publication(
            "Mabsout B.",
            "Tree Shaping, a solution to the expression problem showcased via a compiler for a programming language named Puler",
            "Masters Thesis, Boston University",
            "2023"
          )
        )
      ),
      (
        title: "ONGOING RESEARCH",
        content: stack(
          spacing: 0.65em,
          entry(
            "Population Descent",
            subtitle: none,
            date: "Submitted",
            [A natural-selection based Memetic algorithm which adaptively controls hyperparameter selection via a normalized fitness function -- PREPRINT]
          ),
          entry(
            "Sim2Real Adaptation via Anchored Learning",
            subtitle: none,
            date: "Submitting",
            [Anchors allow for adapting RL-based controllers on the fly while mitigating the issue of catastrophic forgetting. Our method does so by finding controllers which satisfy performance conditions both in simulation and reality -- PREPRINT]
          ),
          entry(
            "Safety-critical controller learning",
            subtitle: none,
            date: "Ongoing",
            [We construct learned bounded Lyapunov functions for maintaining safety under a differential equation and on residual dynamics. Adapting controllers to improve the probability of safety and performance in the real world -- SOURCE]
          ),
          entry(
            "State-estimation using Gaussian splatting",
            subtitle: none,
            date: "Ongoing",
            [The pose of a quadrotor is estimated by combining Gaussian splatting with an onboard camera feed. Estimation occurs in real-time on the embedded system]
          ),
          entry(
            "Multi-objective RL via generalized-mean scalarization",
            subtitle: none,
            date: "Ongoing",
            [We use the generalized-mean for scalarizing a normalized multi-Q-value function forming a continuous specification in a multi-objective RL setting]
          )
        )
      ),
      (
        title: "PROJECTS",
        content: stack(
          spacing: 0.65em,
          entry(
            "Stochastic dynamics learning",
            subtitle: "BU/MIT",
            date: none,
            [Achieving safer learned model-based control requires accurate models, given most real-world systems are stochastic, we built Generative Adversarial Networks which modeling the distribution of the system's trajectories -- SOURCE]
          ),
          entry(
            "Honda Ridesharing",
            subtitle: "SAIL",
            date: none,
            [In collaboration with BU's SAIL and Honda, we worked on privacy preserving (using MPC) preferential ride-sharing. My responsibilities included defining optimization constraints so users with similar preferences get pooled together]
          ),
          entry(
            "Seizure Prediction",
            subtitle: "Machine learning -- CS542",
            date: none,
            [A Kaggle competition project which accurately predicted seizure activity in epileptic patients. Utilizing machine learning techniques, we achieved the highest score with a significant margin (AUC score of 0.92) -- PREPRINT]
          ),
          entry(
            "Finding a NASH-ε Equilibrium",
            subtitle: "Complexity Theory -- CS535",
            date: none,
            [This term paper simplifies an existing proof of the complexity class specifying the run-time of finding approximate Nash equilibria -- PREPRINT]
          ),
          entry(
            "Haskell Blog",
            subtitle: "Personal Blog",
            date: none,
            [I created a Haskell blog hosted on IPFS about programming language concepts such as automatic differentiation and dependently typed vector construction which garnered some interest and was featured on Haskell News]
          )
        )
      )
    ),
    spacing: 0.8em
  ),
  // Right column content
  section_list(
    (
      // Second half of sections
      (
        title: "EDUCATION",
        content: stack(
          spacing: 0.65em,
          education_entry(
            "MS & PhD",
            "09/2018 --",
            "Boston University"
          ),
          education_entry(
            "BS",
            "09/2012 -- 05/2015",
            "American University of Beirut"
          )
        )
      ),
      (
        title: "MENTORSHIP EXPERIENCE",
        content: stack(
          spacing: 0.65em,
          mentorship_entry(
            "RISE",
            [ -- Mentored Abhinav Pomalapally via the RISE program performing research in Gradient-based optimization. This work led to his acceptance to UC Berkeley and produced a paper.]
          ),
          mentorship_entry(
            "BU Spark",
            [ -- Mentored five students in building a quadrotor for control research. This project evolved into the Gaussian Splatting research work.]
          ),
          mentorship_entry(
            "CS 654",
            [ -- Created projects for 24 students mentoring them in work that led to research contributions. They modeled and controlled an AmazingBall System while minimizing the sim2real gap]
          ),
          mentorship_entry(
            "Efficient RL",
            [ -- Mentored two graduate students in performing power-efficent RL for pedestrian collision avoidance in Carla-sim, balancing cloud and local computation]
          )
        )
      ),
      (
        title: "WORK EXPERIENCE",
        content: stack(
          spacing: 0.65em,
          entry(
            "Scanman",
            subtitle: "Freelancer",
            date: "12/2020 --",
            [Created Scanman, a barcode based inventory tracker acquired by Meathouse to solve long-standing supply chain inefficiencies]
          ),
          entry(
            "Zahera",
            subtitle: "Cofounder - CTO",
            date: "07/2018 -- 09/2022",
            [Zahera is an app-based photo printing service currently installed on > 15000 devices. I worked on designing the products, building and improving the technologies used, and managing 2 developers]
          ),
          entry(
            "AUB",
            subtitle: "Researcher",
            date: "06/2016 -- 08/2018",
            [I wrote neural-swarm, a collection of experimental optimization algorithms for learning decentralized swarm control in Haskell]
          ),
          entry(
            "CCC",
            subtitle: "Software Developer",
            date: "05/2015 -- 05/2017",
            [I worked on the core team of C3D, a leading 3D-based construction project control application. I implemented several key features, optimizations, and bug fixes in the Java based application]
          )
        )
      ),
      (
        title: "SKILLS",
        content: stack(
          spacing: 0.5em,
          skill_group(
            (
              "PROGRAMMING",
              "LANGUAGES",
              text(
                size: 6pt,
                style: "italic",
                fill: rgb("#000000a8")
              )[(by familiarity)]
            ),
            "Haskell, Nix, Python, Java, C, Processing, (Java,Type)script, Coq, SQL, Bash, C++, Elm, C#, F#, ATS, Lean, GLSL, Clojure, Matlab"
          ),
          skill_group(
            ("FRAMEWORKS", "& LIBRARIES"),
            "Tensorflow, Pytorch, Keras, Numpy, Scipy, Pandas, Spinning Up, Pybullet, Gurobi, React-Native, Expo, Megaparsec, Extension-Schemes, Polysemy, Firebase"
          ),
          skill_group(
            ("MARKUP",),
            "LaTeX, HTML, CSS, Markdown, XML"
          ),
          skill_group(
            ("TOOLS",),
            "Git, Nix, GNU utils, Makefiles, Soldering"
          )
        )
      ),
      (
        title: "MISC",
        content: stack(
          spacing: 0.5em,
          skill_group(
            ("PEER REVIEWED", "VENUES"),
            "ICRA, ROBOT, TJCA, EMSOFT, COG, DATE, ECRTS, RTSS"
          ),
          skill_group(
            ("PRESENTATIONS",),
            "WASP, Galois, BU AIR, BU Systems Seminar, HRI-EU, ICRA 2021, and CoG 2021"
          ),
          skill_group(
            ("NATIONALITIES",),
            "Lebanese and Portuguese"
          )
        )
      )
    ),
    spacing: 0.8em
  )
)

