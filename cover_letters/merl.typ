#import "../src/lib_cv.typ": *

#set document(title: "Cover Letter - Bassel El Mabsout")

#set page(
  margin: (x: 2.5cm, y: 2cm),
  paper: "us-letter",
)

#set text(font: fonts.body, size: 12pt)
#set par(leading: 0.7em)
#set block(spacing: 0em)

// Header
#v(-1em)
#grid(
  columns: (1fr, auto),
  gutter: 2em,
  align(left)[
    #v(0.7em)
    #text(fill: primary_color, font: fonts.sans, weight: "medium", size: 24pt)[Cover Letter]
  ],
  block(
    width: auto,
    fill: shade_color,
    radius: 4pt,
    inset: 12pt,
    align(right)[
      #text(size: 11pt, fill: shade_fg)[
        +1 (857) 939-8769 #diamond()
        Boston, MA, USA #diamond()
        #raw("bmabsout@bu.edu") 
      ]
    ]
  )
)
#v(1em)
#long_line

#v(1em)

Mitsubishi Electric Research Laboratories\
Cambridge, MA

#v(1em)

Dear Hiring Manager,

#h(1em)I am writing to express my strong interest in the Research Scientist position (EA0042) in Control & Learning at Mitsubishi Electric Research Laboratories (MERL). As a Ph.D. candidate at Boston University specializing in reliable and efficient robotic control, my research at the intersection of programming languages, machine learning, and embedded systems aligns perfectly with MERL's mission of pioneering application-motivated research.

#h(1em)My research has produced significant breakthroughs in reinforcement learning and control systems, with my publications garnering over 100 citations. I developed RE+AL, a framework demonstrating the first RL-based controllers to outperform traditional PID controllers on real racing quadrotors. My CAPS regularization technique achieved an 80% reduction in power consumption while maintaining reliable performance, and has been widely adopted across aerial, ground, and underwater robots. This work showcases my ability to develop practical solutions that bridge theoretical advances with real-world applications.

#h(1em)Through my work at Boston University, I've built strong collaborative relationships with faculty and students. I led the F1Tenth Racing Team of 11 students to second place in autonomous racing, and mentored graduate students in research that led to publications at ECCV. Being close to BU, I am excited about the opportunity at MERL to both maintain these existing collaborations and build new ones. My technical background in C++, Python, and machine learning frameworks will enable me to contribute effectively to MERL's collaborative research environment.

#h(1em)I am particularly excited about contributing to MERL's research in control and learning, especially in areas of efficient control for resource-constrained robots and certified survivability. My current work on Algebraic Q-Value Scalarization (AQS) and adaptive Lyapunov-based controller learning demonstrates my commitment to developing robust, efficient solutions that work reliably in real-world settings.

I look forward to discussing how my research agenda can advance MERL's innovative programs.

#v(1em)
Best regards,

Bassel El Mabsout

#v(1fr)
#align(center)[
  February 1, 2025
]