#import "../lib_cv.typ": *
#import "../lists.typ": research

#let academic_services = cv_section_list("ACADEMIC SERVICES", 
  (
    cv_subsection((
      title: [Peer Review Venues],
      body: review_venues((
        review_venue_entry("ICLR", (
          (
            number: 4811,
            title: "FlipNet: Fourier Lipschitz Smooth Policy Network for Reinforcement Learning",
            year: 2025,
          ),
          (
            number: 7391,
            title: "ODE-based Smoothing Neural Network for Reinforcement Learning Tasks",
            year: 2025,
          ),
          (
            number: 6864,
            title: "Multiple-Frequencies Population-Based Training",
            year: 2025,
          )
        )),
        review_venue_entry("ICRA", (
          (
            number: 347,
            title: "A Deep Reinforcement Learning Motion Control Strategy of a Multi-rotor UAV for Payload Transportation with Minimum Swing",
            year: 2022,
          )
        )),
        review_venue_entry("COG", (
          (
            number: 25,
            title: "On the Power of Refined Skat Selection",
            year: 2021,
          ),
        )),
        review_venue_entry("EMSOFT", (
          (
            number: 1091,
            title: "LINTSRT: A Learning-driven Testbed for Intelligent Scheduling in Embedded Systems",
            year: 2020,
          ),
        )),
        review_venue_entry("DATE", (
          (
            number: 265,
            title: "Endurance-Aware Deep Neural Network Real-Time Scheduling on ReRAM Accelerators",
            year: 2022,
          ),
          (
            number: 687,
            title: "Critical Signature Assertion and On-the-Fly Recovery for Control Flow Errors in Processors",
            year: 2022,
          ),
          (
            number: 83,
            title: "A Kernel-based Adversarial Attack for Brain-inspired Computing",
            year: 2023,
          ),
        )),
        review_venue_entry("ECRTS", (
          (
            number: 22,
            title: "Reducing Accuracy Can Improve Real-time Computer Vision",
            year: 2021,
          ),
          (
            number: 24,
            title: "Real-Time Guarantees in Routerless Networks-on-Chip",
            year: 2021,
          ),
          (
            number: 23,
            title: "Exploiting execution time variability of programs in real-time scheduling",
            year: 2023,
          ),
        )),
        review_venue_entry("RTSS", (
          (
            number: 11,
            title: "Crumbs: Utilizing Functional Programming for Hardware Trace Data Analysis",
            year: 2020,
          ),
        )),
        review_venue_entry("TJCA", (
          (
            number: 107,
            title: "CPSmark: An Open Source Microcomputer Benchmark based on Real Desktop Applications",
            year: 2020,
          )
        )),
        review_venue_entry("RTAS", (
          (
            number: 176,
            title: "Visual SLAM in a low power SoC: a case study",
            year: 2024,
          ),
        )),
        review_venue_entry("RA-L", (
          (
            number: 1909,
            title: "RENet: Fault-Tolerant Motion Control for Quadruped Robots via Redundant Estimator Networks under Visual Collapse",
            year: 2025,
          ),
        )),
      ))
    )),
    cv_subsection((
      title: [Teaching Experience],
      body: cv_entries((
        cv_entry(
          entry_heading(
            l:[*Teaching Fellow - CS 350 Distributed Systems*],
            m:[Boston University],
            r:[2024]
          ),
          [Supported Prof. John Liagouris in teaching distributed systems concepts. Designed and implemented a Raft-based distributed locking homework assignment, including testing infrastructure. Held regular office hours to assist students with distributed systems challenges.]
        ),
        cv_entry(
          entry_heading(
            l:[*Teaching Fellow - CS 454/654 Embedded Systems*],
            m:[Boston University],
            r:[2023]
          ),
          [Led weekly lab sections for 24 students using the AmazingBall platform. Designed a PyBullet simulation environment to teach filtering and PID control fundamentals. Created and supervised four successfully completed projects: (1) embedded system identification and simulation enhancement, (2) real-time vision processing for state estimation, (3) higher-level control using reinforcement learning, and (4) low-latency communication system for remote control. Projects emphasized practical embedded systems challenges including real-time constraints and hardware-software integration.]
        ),
        cv_entry(
          entry_heading(
            l:[*Teaching Fellow - CS 506 Data Science*],
            m:[Boston University],
            r:[2018]
          ),
          [Assisted Prof. Andrei Lapets by delivering secondary lectures in core data science topics including feature 
          space design, clustering algorithms, classification methods (decision trees, SVM, kNN), regression techniques, neural networks. Supervised industry-partnered projects such as fraud detection for Painting with Data, aviation safety analysis for ACAS, and a project for the City of Boston.]
        ),
      ))
    ))
  )
) 