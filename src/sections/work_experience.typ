#import "../lib_cv.typ": *

#let work_experience = cv_section_list("WORK EXPERIENCE",
  (
    cv_entry(
      entry_heading(
        l:[*Cofounder/CSO*],
        m:[Neobotics Foundation Inc.],
        r:[2025 -- present]
      ),
      [Leading the development of an open-source platform democratizing autonomous systems education through affordable racing kits and comprehensive learning materials. Building a community-driven ecosystem that makes robotics education more accessible while advancing the field of autonomous racing.]
    ),
    cv_entry(
      entry_heading(
        l:[*Founder*],
        m:[Scanman],
        r:[2020 -- present]
      ),
      [Developed a full-stack inventory management system combining React Native barcode scanning and real-time web dashboard for inventory tracking. System acquired by Meathouse for supply chain management.]
    ),
    cv_entry(
      entry_heading(
        l:[*Cofounder/CTO*],
        m:[Zahera],
        r:[2018 -- 2022]
      ),
      [Led development of an app-based photo printing service reaching over 15,000 installations. Managed product design, technology stack, and 3 developers #links(labeled("instagram", link("https://www.instagram.com/zahera_me_/")[\@zahera_me]))]
    ),
    cv_entry(
      entry_heading(
        l:[*Researcher*],
        m:[American University of Beirut],
        r:[2016 -- 2018]
      ),
      [Developed _neural-swarm_, a collection of experimental optimization algorithms for learning decentralized swarm control systems using neural networks, implemented in Haskell #links(labeled("github", link("https://github.com/bmabsout/neural-swarm")[neural-swarm]))]
    ),
    cv_entry(
      entry_heading(
        l:[*Software Developer*],
        m:[CCC],
        r:[2015 -- 2017]
      ),
      [Core team member of C3D, a leading 3D construction project control application designed for energy projects. I performed optimizations that improved performance by 2000%, refactored main architectural components of the huge codebase increasing maintainabilility and type-safety, and implemented bug fixes in Java. I also contributed to #link("https://github.com/sshahine/JFoenix")[JFoenix] #links(labeled("website", link("http://www.cctintl.com/solutions/c3d-project-control.html")[cctintl.com/solutions/c3d-project-control.html]))]
    )
  )
)