#import "../lib_cv.typ": *
#import "../lists.typ": research

#let academic_services = cv_section_list("ACADEMIC SERVICES", 
  (
    cv_subsection((
      title: [Peer Review Venues],
      body: [#research.peer_review_venues.join([#diamond()])]
    )),
    cv_subsection((
      title: [Teaching Experience],
      body: cv_entries((
        cv_entry(
          [*Teaching Fellow - CS 350 Distributed Systems* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2024],
          [Supported Prof. John Liagouris in teaching distributed systems concepts. Designed and implemented a Raft-based distributed locking homework assignment, including testing infrastructure. Held regular office hours to assist students with distributed systems challenges.]
        ),
        cv_entry(
          [*Teaching Fellow - CS 454/654 Embedded Systems* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2023],
          [Led weekly lab sections for 24 students using the AmazingBall platform. Designed a PyBullet simulation environment to teach filtering and PID control fundamentals. Created and supervised four successfully completed projects: (1) embedded system identification and simulation enhancement, (2) real-time vision processing for state estimation, (3) higher-level control using reinforcement learning, and (4) low-latency communication system for remote control. Projects emphasized practical embedded systems challenges including real-time constraints and hardware-software integration.]
        ),
        cv_entry(
          [*Teaching Fellow - CS 506 Data Science* #text(style: "italic", weight: "regular")[Boston University] #h(1fr) 2018],
          [Assisted Prof. Andrei Lapets by delivering secondary lectures in core data science topics including feature 
          space design, clustering algorithms, classification methods (decision trees, SVM, kNN), regression techniques, neural networks. Supervised industry-partnered projects such as fraud detection for Painting with Data, aviation safety analysis for ACAS, and a project for the City of Boston.]
        ),
      ))
    ))
  )
) 