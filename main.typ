#let primary_color = rgb(112, 17, 18)  // headings color
#let shade_color = rgb(250, 242, 243)  // FAF2F3 for contact box
#let shade_fg = rgb(112, 17, 18)      // 701112 for contact text
#let shade_line = rgb(224, 184, 189)  // E0B8BD for box border

#let section_heading(title) = block[
  #set text(font: "EB Garamond")
  #v(0.3em)
  #text(primary_color, weight: "regular", smallcaps(title))
  #v(-3pt)
  #line(length: 100%, stroke: 0.7pt)
  #v(0.2em)
]

// Main document settings
#set page(
  margin: (x: 0.5cm, y: 1.15cm),
  paper: "us-letter",
)

#set text(
  font: "EB Garamond",
  size: 10pt,
  fill: rgb(43, 43, 43)
)

// Contact information box styling
#let contact_box = rect.with(
  fill: shade_color,
  stroke: (paint: shade_line, thickness: 0.5pt),
  inset: 8pt,
  radius: 2pt,
  width: 3.5in
)

// Document heading
#grid(
  columns: (1fr, auto),
  gutter: 2em,
  align(left)[
    #text(17pt, weight: "bold")[Bassel El Mabsout]
  ],
  align(right)[
    #contact_box[
      #grid(
        columns: (auto, auto),
        gutter: 1em,
        [
          #text(fill: shade_fg, size: 9pt)[
            +1 (857) 939-8769 \
            Boston, MA, USA \
            bmabsout\@bu.edu
          ]
        ],
        [
          #text(fill: shade_fg, size: 9pt)[
            bmabsout.com \
            github.com/bmabsout \
            Google Scholar
          ]
        ]
      )
    ]
  ]
)

#v(0.8em)

#let publication(authors, title, venue, year) = block(spacing: 0.65em)[
  #(authors.split(" and ")
    .map(name => {
      if name.contains("Mabsout") {
        [#text(weight: "bold")[#name]]
      } else {
        [#name]
      }
    })
    .join(", "))
  . #title. #text(style: "italic")[#venue] #year
]

#columns(2, gutter: 1.2em)[
  // Left column
  #section_heading("PUBLICATIONS")
  #set par(leading: 0.65em)
  
  #publication(
    "Mabsout B.*, Mysore S.*, Saenko K., Mancuso R.",
    "How to train your quadrotor: A framework for consistently smooth and responsive flight control via reinforcement learning",
    "ACM Trans. Cyber-Phys. Syst., 5(4)",
    "2021a"
  )

  #v(0.3em)
  #publication(
    "Mabsout B.*, Mysore S.*, Saenko K., Mancuso R.",
    "Regularizing Action Policies for Smooth Control with Reinforcement Learning",
    "ICRA",
    "2021b"
  )

  #v(0.3em)
  #publication(
    "Mysore S., Mabsout B., Mancuso R., Saenko K.",
    "Honey. I Shrunk The Actor: A Case Study on Preserving Performance with Smaller Actors in Actor-Critic RL",
    "IEEE Conference on Games (CoG)",
    "2021"
  )

  #v(0.3em)
  #publication(
    "Mabsout B.",
    "Tree Shaping, a solution to the expression problem showcased via a compiler for a programming language named Puler",
    "Masters Thesis, Boston University",
    "2023"
  )

  #v(0.3em)
  #section_heading("ONGOING RESEARCH")
  *Population Descent* #h(1fr) Submitted \
  A natural-selection based Memetic algorithm which adaptively controls hyperparameter selection via a normalized fitness function -- PREPRINT

  #let research_entry(status, title, description) = block(spacing: 0.65em)[
    #grid(
      columns: (1fr, auto),
      [#text(weight: "bold")[#title]], 
      [#text(size: 9pt)[#status]]
    )
    #pad(left: 0.3cm, top: 0.1em)[#description]
  ]

  #research_entry(
    "Submitted",
    "Population Descent",
    [A natural-selection based Memetic algorithm which adaptively controls hyperparameter selection via a normalized fitness function -- PREPRINT]
  )

  #v(0.3em)
  #research_entry(
    "Submitting",
    "Sim2Real Adaptation via Anchored Learning",
    [Anchors allow for adapting RL-based controllers on the fly while mitigating the issue of catastrophic forgetting. Our method does so by finding controllers which satisfy performance conditions both in simulation and reality -- PREPRINT]
  )

  #v(0.3em)
  #research_entry(
    "Ongoing",
    "Safety-critical controller learning",
    [We construct learned bounded Lyapunov functions for maintaining safety under a differential equation and on residual dynamics. Adapting controllers to improve the probability of safety and performance in the real world -- SOURCE]
  )

  #v(0.3em)
  #research_entry(
    "Ongoing",
    "State-estimation using Gaussian splatting",
    [The pose of a quadrotor is estimated by combining Gaussian splatting with an onboard camera feed. Estimation occurs in real-time on the embedded system]
  )

  #v(0.3em)
  #research_entry(
    "Ongoing",
    "Multi-objective RL via generalized-mean scalarization",
    [We use the generalized-mean for scalarizing a normalized multi-Q-value function forming a continuous specification in a multi-objective RL setting]
  )

  #v(0.3em)
  #section_heading("PROJECTS")

  #let project_entry(title, subtitle, description) = block(spacing: 0.65em)[
    #grid(
      columns: (1fr, auto),
      [#text(weight: "bold")[#title]], 
      [#text(style: "italic", size: 9pt)[#subtitle]]
    )
    #pad(left: 0.3cm, top: 0.1em)[#description]
  ]

  #project_entry(
    "Stochastic dynamics learning",
    "BU/MIT",
    [Achieving safer learned model-based control requires accurate models, given most real-world systems are stochastic, we built Generative Adversarial Networks which modeling the distribution of the system's trajectories -- SOURCE]
  )

  #v(0.3em)
  #project_entry(
    "Honda Ridesharing",
    "SAIL",
    [In collaboration with BU's SAIL and Honda, we worked on privacy preserving (using MPC) preferential ride-sharing. My responsibilities included defining optimization constraints so users with similar preferences get pooled together]
  )

  #v(0.3em)
  #project_entry(
    "Seizure Prediction",
    "Machine learning -- CS542",
    [A Kaggle competition project which accurately predicted seizure activity in epileptic patients. Utilizing machine learning techniques, we achieved the highest score with a significant margin (AUC score of 0.92) -- PREPRINT]
  )

  #v(0.3em)
  #project_entry(
    "Finding a NASH-ε Equilibrium",
    "Complexity Theory -- CS535",
    [This term paper simplifies an existing proof of the complexity class specifying the run-time of finding approximate Nash equilibria -- PREPRINT]
  )

  #v(0.3em)
  #project_entry(
    "Haskell Blog",
    "Personal Blog",
    [I created a Haskell blog hosted on IPFS about programming language concepts such as automatic differentiation and dependently typed vector construction which garnered some interest and was featured on Haskell News]
  )

  // Right column
  #colbreak()
  
  #section_heading("EDUCATION")
  #text(weight: "bold")[MS & PhD] #h(1fr) 09/2018 -- \
  Boston University

  #text(weight: "bold")[BS] #h(1fr) 09/2012 -- 05/2015 \
  American University of Beirut

  #v(0.3em)
  #section_heading("MENTORSHIP EXPERIENCE")
  #text(weight: "bold")[RISE] -- Mentored Abhinav Pomalapally via the RISE program performing research in Gradient-based optimization. This work led to his acceptance to UC Berkeley and produced a paper.

  #v(0.3em)
  #section_heading("WORK EXPERIENCE")

  #let experience(company, role, dates, description) = block(spacing: 0.65em)[
    #grid(
      columns: (1fr, auto),
      [#text(weight: "bold")[#company] #h(0.5em) #emph[#role]], 
      [#text(size: 9pt)[#dates]]
    )
    #pad(left: 0.3cm, top: 0.1em)[#description]
  ]

  #experience(
    "Scanman",
    "Freelancer",
    "12/2020 --",
    [Created Scanman, a barcode based inventory tracker acquired by Meathouse to solve long-standing supply chain inefficiencies]
  )

  #v(0.3em)
  #experience(
    "Zahera",
    "Cofounder - CTO",
    "07/2018 -- 09/2022",
    [Zahera is an app-based photo printing service currently installed on > 15000 devices. I worked on designing the products, building and improving the technologies used, and managing 2 developers]
  )

  #v(0.3em)
  #experience(
    "AUB",
    "Researcher",
    "06/2016 -- 08/2018",
    [I wrote neural-swarm, a collection of experimental optimization algorithms for learning decentralized swarm control in Haskell]
  )

  #v(0.3em)
  #experience(
    "CCC",
    "Software Developer",
    "05/2015 -- 05/2017",
    [I worked on the core team of C3D, a leading 3D-based construction project control application. I implemented several key features, optimizations, and bug fixes in the Java based application]
  )

  #v(0.3em)
  #section_heading("SKILLS")

  #let skill_section(title, skills) = block(spacing: 0.5em)[
    #grid(
      columns: (auto, 1fr),
      gutter: 0.8em,
      text(weight: "bold", size: 9pt)[#title:],
      text(size: 9pt)[#skills]
    )
  ]

  #skill_section(
    "PROGRAMMING\nLANGUAGES",
    "Haskell, Nix, Python, Java, C, Processing, (Java,Type)script, Coq, SQL, Bash, C++, Elm, C#, F#, ATS, Lean, GLSL, Clojure, Matlab"
  )

  #v(0.3em)
  #skill_section(
    "FRAMEWORKS\n& LIBRARIES",
    "TensorFlow, Pytorch, Keras, Numpy, Scikit, Pandas, Spinning Up, Pybullet, Gurobi, React-Native, Expo, Megaparsec, Extension-Schemes, Polysemy, Firebase"
  )

  #v(0.3em)
  #skill_section(
    "MARKUP",
    "LaTeX, HTML, CSS, Markdown, XML"
  )

  #v(0.3em)
  #skill_section(
    "TOOLS",
    "Git, Nix, GNU utils, Makefiles, Soldering"
  )
]
