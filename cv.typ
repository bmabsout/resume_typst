#import "lib_cv.typ": *

// Document settings
#set page(
  margin: (x: 2.5cm, y: 2.5cm),
  paper: "us-letter",
)

#set text(
  font: fonts.body,
  size: 11pt,
  fill: rgb(43, 43, 43),
)

// Header section with contact info
#cv_header(
  "Bassel El Mabsout",
  cv_contact_box((
    (icon: "phone", text: "+1 (857) 939-8769"),
    (icon: "email", text: "bmabsout@bu.edu"),
    (icon: "globe", text: "bmabsout.com"),
    (icon: "location", text: "Boston, MA, USA"),
    (icon: "github", text: "github.com/bmabsout"),
    (icon: "scholar", text: "Google Scholar")
  ))
)

// Education Section
#cv_sections((
  (
    title: "EDUCATION",
    content: {
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
    content: {
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
    content: {
      cv_subsections((
        (
          title: "Peer-Reviewed Journal Articles",
          content: cv_entry[
            Mabsout B.*, Mysore S.*, Saenko K., Mancuso R. (2021) \
            "How to train your quadrotor: A framework for consistently smooth and responsive flight control via reinforcement learning" \
            *ACM Transactions on Cyber-Physical Systems, 5(4)* \
            DOI: [add DOI]
          ]
        ),
        (
          title: "Conference Proceedings",
          content: {
            cv_entries((
              cv_entry[
                Mabsout B.*, Mysore S.*, Saenko K., Mancuso R. (2021) \
                "Regularizing Action Policies for Smooth Control with Reinforcement Learning" \
                *International Conference on Robotics and Automation (ICRA)* \
                DOI: [add DOI]
              ],
              cv_entry[
                Mysore S., Mabsout B., Mancuso R., Saenko K. (2021) \
                "Honey. I Shrunk The Actor: A Case Study on Preserving Performance with Smaller Actors in Actor-Critic RL" \
                *IEEE Conference on Games (CoG)* \
                DOI: [add DOI]
              ]
            ))
          }
        )
      ))
    }
  ),
  (
    title: "RESEARCH EXPERIENCE",
    content: {
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
          - Developed neural-swarm optimization algorithms
          - Implemented decentralized swarm control systems
        ]
      ))
    }
  ),
  (
    title: "TEACHING EXPERIENCE",
    content: {
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
    content: {
      // Add your grants and awards here
    }
  ),
  (
    title: "SERVICE & LEADERSHIP",
    content: {
      cv_subsections((
        (
          title: "Peer Review",
          content: cv_entry[
            - Reviewer for ICRA, ROBOT, TJCA, EMSOFT, COG, DATE, ECRTS, RTSS
          ]
        ),
        (
          title: "Academic Service",
          content: cv_entry[
            - [Add department/university service]
          ]
        )
      ))
    }
  ),
  (
    title: "PROJECTS",
    content: {
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
    content: {
      cv_entry[
        *Programming Languages:* Haskell, Nix, Python, Java, C, Processing, (Java,Type)script, Coq, SQL, Bash, C++
        
        *Frameworks & Libraries:* Tensorflow, Pytorch, Keras, Numpy, Scipy, Pandas, Spinning Up, Pybullet, Gurobi
        
        *Tools:* Git, Nix, GNU utils, Makefiles, LaTeX
      ]
    }
  )
)) 