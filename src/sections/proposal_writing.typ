#import "../lib_cv.typ": *

#let proposal_writing = cv_section_list("PROPOSAL WRITING",
  (
    cv_entry(
      entry_heading(
        l:[GenZero Proposal],
        m:[PIs: \[Benjamin Lubin#diamond()Marco Caccamo#diamond()Sandro Pinto#diamond()Renato Mancuso\]],
        r: [2024]
      ),
      [#emphasis[Selected proposal] and #emphasis[Best Presentation Award] winner at the GenZero Workshop. I contributed to the development of the proposal and led the successful prototype demonstration, coordinating efforts between PhD. students at Boston University, Technical University of Munich, and University of Minho. The project proposes a framework that separates data ownership, processing, and usage concerns, demonstrated through ML workloads. We advanced to the final phase following the competitive selection process.]
    ),
    cv_entry(
      entry_heading(l:[BU Technology Development Ignition Award], m: [PI: \[Renato Mancuso\]], r: [2024]),
      [#emphasis[Accepted] Letter of Interest for a proposed plug-and-play solution for confidential computing. Allowing secure application execution on traditional server hardware without requiring costly upgrades, and maintaining security even when the server is compromised.]
    ),
    cv_entry(
      entry_heading(
        l: [Efficient Control for Small-Scale Limbed Robots],
        m: [PIs: \[Renato Mancuso#diamond()Sabrina Neuman\]],
        r: [2024]
      ),
      [NSF-medium proposal focused on three research thrusts: improving neural network control for under-instrumented limbed robots, exploring HW/SW architectures for energy-efficient control, and designing efficient learned runtime adaptation techniques on constrained platforms. Aims to enable a new class of cost- and power-efficient robots]
    ),
    cv_entry(
      entry_heading(
        l: [Solar-Powered UAV for Sustainable Agriculture],
        m: [PIs: \[Renato Mancuso#diamond()Marco Caccamo\]],
        r: [2023]
      ),
      [NSF-medium Research proposal on eco-friendly UAV design for agriculture through solar power and energy-efficient computing. We propose a novel architecture that enables sustainable long-endurance missions by designing neural networks that maximize power-efficent control and  formal safety bounds.]
    ),
    cv_entry(
      entry_heading(
        l: [Certified Survivability],
        m: [PIs: \[Renato Mancuso#diamond()Chuchu Fan\]],
        r: [2022]
      ),
      [Joint proposal with MIT focused on developing certifiably safe and robust neural network-based controllers for robots that can adapt to substantial system damages while maintaining provable safety guarantees. The project builds on my work on neural network-based control and transfer learning.]
    ),
  ))