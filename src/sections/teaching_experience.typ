#import "../lib_cv.typ": *

#let teaching_experience = cv_section("TEACHING EXPERIENCE", {
  cv_entries((
    cv_entry(
      [*Course Instructor - CS 654* #h(1fr) 2023],
      [#h(1em) _Boston University_ \
      - Created and supervised projects for 24 students
      - Mentored students in modeling and controlling AmazingBall System
      - Developed curriculum focusing on minimizing sim2real gap]
    ),
    cv_entry(
      [*Research Mentor* #h(1fr) 2021 -- Present],
      [_RISE Program_: Mentored undergraduate researcher in gradient-based optimization \
      _BU Spark_: Supervised team of 5 students in quadrotor research project \
      _Efficient RL_: Guided graduate students in power-efficient reinforcement learning]
    )
  ))
}) 