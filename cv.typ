#import "lib_cv.typ": *

// Document settings
#set page(
  margin: (x: 2.5cm, y: 2.5cm),
  paper: "us-letter",
)

#set text(
  font: fonts.body,
)
// make sure there's no vertical spacing between objects
#set block(spacing: 0em)


// Add link styling
#show link: underline
// Header section with contact info
#v(-2em)
#cv_header(
  "Bassel El Mabsout",
  cv_contact_box((
    (icon: "phone", text: "+1 (857) 939-8769"),
    (icon: "location", text: "Boston, MA, USA"),
    (icon: "email", text: link("mailto:bmabsout@bu.edu")),
    (icon: "globe", text: link("https://bmabsout.com")),
    (icon: "github", text: link("https://github.com/bmabsout")),
    (icon: "scholar", text: link("https://scholar.google.com/citations?user=Rxv9W98AAAAJ")[Google Scholar (Rxv9W98)])
  ))
)

// Education Section
#cv_sections((
  (
    title: "EDUCATION",
    body: {
      cv_entries((
        cv_entry[
          *Ph.D. in Computer Science* #h(1fr) 2018 -- Present \
          _Boston University_ \
          Dissertation: "Tree Shaping, a solution to the expression problem showcased via a compiler for a programming language named Puler" \
          Advisor: Dr. [Advisor Name]
        ],
        cv_entry[
          *B.S. in Computer Science* #h(1fr) 2012 -- 2015 \
          _American University of Beirut_
        ]
      ))
    }
  ),
  (
    title: "RESEARCH INTERESTS",
    body: {
      cv_entry[
        - Reinforcement Learning and Control Systems
        - Safety-critical Controller Learning
        - Multi-objective Optimization
        - State Estimation and Computer Vision
        - Programming Language Theory
      ]
    }
  ),
  (
    title: "PUBLICATIONS",
    body: {
      cv_subsections((
        (
          title: "Peer-Reviewed Journal Articles",
          body: cv_entry[
            Mabsout B.*, Mysore S.*, Saenko K., Mancuso R. (2021) \
            "How to train your quadrotor: A framework for consistently smooth and responsive flight control via reinforcement learning" \
            *ACM Trans. Cyber-Phys. Syst., 5(4)* \
            DOI: [add DOI]
          ]
        ),
        (
          title: "Other Publications",
          body: cv_entry[
            Mabsout B. (2023) \
            "Tree Shaping, a solution to the expression problem showcased via a compiler for a programming language named Puler" \
            *Masters Thesis, Boston University*
          ]
        )
      ))
    }
  ),
  (
    title: "ONGOING RESEARCH",
    body: {
      cv_entries((
        cv_entry[
          *Population Descent* #h(1fr) Submitted \
          A natural-selection based Memetic algorithm which adaptively controls hyperparameter selection via a normalized fitness function -- PREPRINT
        ],
        cv_entry[
          *Sim2Real Adaptation via Anchored Learning* #h(1fr) Submitting \
          Anchors allow for adapting RL-based controllers on the fly while mitigating the issue of catastrophic forgetting. Our method does so by finding controllers which satisfy performance conditions both in simulation and reality -- PREPRINT
        ],
        cv_entry[
          *Safety-critical controller learning* #h(1fr) Ongoing \
          We construct learned bounded Lyapunov functions for maintaining safety under a differential equation and on residual dynamics. Adapting controllers to improve the probability of safety and performance in the real world -- SOURCE
        ],
        cv_entry[
          *State-estimation using Gaussian splatting* #h(1fr) Ongoing \
          The pose of a quadrotor is estimated by combining Gaussian splatting with an onboard camera feed. Estimation occurs in real-time on the embedded system
        ],
        cv_entry[
          *Multi-objective RL via generalized-mean scalarization* #h(1fr) Ongoing \
          We use the generalized-mean for scalarizing a normalized multi-Q-value function forming a continuous specification in a multi-objective RL setting
        ]
      ))
    }
  ),
  (
    title: "RESEARCH EXPERIENCE",
    body: {
      cv_entries((
        cv_entry[
          *Graduate Research Assistant* #h(1fr) 2018 -- Present \
          _Boston University_ \
          - Developed novel reinforcement learning algorithms for quadrotor control
          - Created frameworks for safety-critical controller learning
          - Implemented state estimation using Gaussian splatting
        ],
        cv_entry[
          *Research Assistant* #h(1fr) 2016 -- 2018 \
          _American University of Beirut_ \
          - Developed _neural-swarm_, a collection of experimental optimization algorithms
          - Implemented decentralized swarm control systems
        ]
      ))
    }
  ),
  (
    title: "TEACHING EXPERIENCE",
    body: {
      cv_entries((
        cv_entry[
          *Course Instructor - CS 654* #h(1fr) 2023 \
          Boston University \
          - Created and supervised projects for 24 students
          - Mentored students in modeling and controlling AmazingBall System
          - Developed curriculum focusing on minimizing sim2real gap
        ],
        cv_entry[
          *Research Mentor* #h(1fr) 2021 -- Present \
          _RISE Program_: Mentored undergraduate researcher in gradient-based optimization \
          _BU Spark_: Supervised team of 5 students in quadrotor research project \
          _Efficient RL_: Guided graduate students in power-efficient reinforcement learning
        ]
      ))
    }
  ),
  (
    title: "GRANTS & AWARDS",
    body: {
      // Add your grants and awards here
    }
  ),
  (
    title: "SERVICE & LEADERSHIP",
    body: {
      cv_subsections((
        (
          title: "Peer Review",
          body: cv_entry[
            - Reviewer for ICLR, ICRA, ROBOT, EMSOFT, COG, DATE, ECRTS, RTSS, TJCA
          ]
        ),
        (
          title: "Academic Service",
          body: cv_entry[
            - [Add department/university service]
          ]
        )
      ))
    }
  ),
  (
    title: "PROJECTS",
    body: {
      cv_entries((
        cv_entry[
          *Stochastic dynamics learning* #h(1fr) BU/MIT \
          Achieving safer learned model-based control requires accurate models, given most real-world systems are stochastic, we built Generative Adversarial Networks which modeling the distribution of the system's trajectories -- SOURCE
        ],
        cv_entry[
          *Honda Ridesharing* #h(1fr) SAIL \
          In collaboration with BU's SAIL and Honda, we worked on privacy preserving (using MPC) preferential ride-sharing. My responsibilities included defining optimization constraints so users with similar preferences get pooled together
        ],
        cv_entry[
          *Seizure Prediction* #h(1fr) Machine learning -- CS542 \
          A Kaggle competition project which accurately predicted seizure activity in epileptic patients. Utilizing machine learning techniques, we achieved the highest score with a significant margin (AUC score of 0.92) -- PREPRINT
        ],
        cv_entry[
          *Finding a NASH-ε Equilibrium* #h(1fr) Complexity Theory -- CS535 \
          This term paper simplifies an existing proof of the complexity class specifying the run-time of finding approximate Nash equilibria -- PREPRINT
        ],
        cv_entry[
          *Haskell Blog* #h(1fr) Personal Blog \
          I created a Haskell blog hosted on IPFS about programming language concepts such as automatic differentiation and dependently typed vector construction which garnered some interest and was featured on Haskell News
        ]
      ))
    }
  ),
  (
    title: "TECHNICAL SKILLS",
    body: {
      cv_entry[
        *Programming Languages* _(by familiarity)_: Haskell, Nix, Python, Typescript, Java, C, Processing, Javascript, Coq, SQL, Bash, C++, Elm, C\#, F\#, ATS, Lean, GLSL, WGSL, Clojure, Matlab
        
        *Frameworks & Libraries:* Tensorflow, Pytorch, Keras, Numpy, Scipy, Pandas, Jax, Spinning Up, Pybullet, Gurobi, React-Native, Megaparsec, Extension-Schemes, Polysemy, Firebase
        
        *Tools:* Git, Nix, GNU utils, Makefiles, LaTeX, HTML, CSS, Markdown, XML, Typst, Soldering
      ]
    }
  )
)) 