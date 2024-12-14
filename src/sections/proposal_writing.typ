#import "../lib_cv.typ": *

#let proposal_writing = cv_section_list("PROPOSAL WRITING",
  (
    cv_entry(
      [*GenZero Proposal* #text(style: "italic", weight: "regular")[PIs: Benjamin Lubin, Marco Caccamo, Sandro Pinto, Renato Mancuso] #h(1fr) 2024],
      [#text(style: "italic", weight: "medium")[Selected proposal] and #text(style: "italic", weight: "medium")[Best Presentation Award] winner at the GenZero Workshop. Contributed to proposal development and led the successful prototype demonstration, coordinating efforts between Boston University, Technical University of Munich, and University of Minho teams. The project focuses on novel computation frameworks that separate data ownership, processing, and usage concerns, demonstrated through ML workloads. We advanced to final phase following the competitive selection process.]
    ),
    cv_entry(
      [*BU Technology Development Ignition Award* #text(style: "italic", weight: "regular")[PI: Renato Mancuso] #h(1fr) 2024],
      [#text(style: "italic", weight: "medium")[Accepted] Letter of Interest for a proposed plug-and-play solution for confidential computing. Allowing secure application execution on traditional server hardware without requiring costly upgrades, and maintaining security even when the server is compromised.]
    ),
    cv_entry(
      [*Efficient Control for Small-Scale Limbed Robots* #text(style: "italic", weight: "regular")[PIs: Renato Mancuso, Sabrina Neuman] #h(1fr) 2024],
      [NSF-medium proposal focused on three research thrusts: improving neural network control for under-instrumented limbed robots, exploring HW/SW architectures for energy-efficient control, and designing efficient learned runtime adaptation techniques on constrained platforms. Aims to enable a new class of cost- and power-efficient robots]
    ),
    cv_entry(
      [*Solar-Powered UAV for Sustainable Agriculture* #text(style: "italic", weight: "regular")[PIs: Renato Mancuso, Marco Caccamo] #h(1fr) 2023],
      [NSF-medium Research proposal on eco-friendly UAV design for agriculture through solar power and energy-efficient computing. We propose a novel architecture that enables sustainable long-endurance missions by designing neural networks that maximize power-efficent control and  formal safety bounds.]
    ),
    cv_entry(
      [*Certified Survivability* #text(style: "italic", weight: "regular")[PIs: Renato Mancuso, Chuchu Fan] #h(1fr) 2022],
      [Joint proposal with MIT focused on developing certifiably safe and robust neural network-based controllers for robots that can adapt to substantial system damages while maintaining provable safety guarantees. The project builds on my work on neural network-based control and transfer learning.]
    ),
  ))