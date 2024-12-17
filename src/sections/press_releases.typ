#import "../lib_cv.typ": *
#import "publications.typ": labels_n_refs

#let press_releases = cv_section_list("MEDIA",
  (
    cv_subsections_list(
      "Presentations",
      (
        cv_entry(
          entry_heading(
            l: [WASP],
            m: link("https://wasp-sweden.org/")["wasp-sweden.org"],
            r: [2023]
          ),
          [Presented my research to the Wallenberg AI, Autonomous Systems and Software Program group on increasing controller robustness and reducing power consumption on complex robots]
        ),
        cv_entry(
          entry_heading(
            l: [Galois Inc.],
            m: link("https://galois.com/blog/2023/07/achieving-robustness-in-learned-control/")["Achieving Robustness in Learned Control"],
            r: [2023]
          ),
          [Presented work on combining formal verification with reinforcement learning for control, exploring the challenges of defining and proving specifications for learned controllers while maintaining performance and robustness.]
        ),
        cv_entry(
          entry_heading(
            l: [M.S. Thesis Defense],
            m: [#link("https://docs.google.com/presentation/d/1nAhiJ1f3A77JOs03040rvroKHV6kOKEJo21WW8JTO5E/edit?usp=sharing")["Slides"]],
            r: [2023]
          ),
          [Presented novel compiler design techniques using Tree Shaping to address the expression problem, demonstrating how it enables more maintainable and extensible language implementations.]
        ),
        cv_entry(
          entry_heading(
            l: [Depth Oral Exam],
            m: [#link("https://1drv.ms/p/c/1e19bc03a94d15e2/EeIVTakDvBkggB4iIwAAAAABI5_bv0CQV9bIB_OipNKDZQ?e=Grif8V&nav=eyJzSWQiOjI5MSwiY0lkIjozNzExNjgzNzc4fQ")["Slides"]],
            r: [2022]
          ),
          [Presented comprehensive analysis of control methodologies spanning classical control theory to modern learning-based approaches, with emphasis on safety properties and real-world deployment challenges.]
        ),
        cv_entry(
          entry_heading(
            l: [BU Systems Seminar],
            m: [#link("https://1drv.ms/p/c/1e19bc03a94d15e2/EeIVTakDvBkggB4AJAAAAAAB2JhH2_pZhoUl-iOFumdGZA?e=6Bdiaj&nav=eyJzSWQiOjI1NiwiY0lkIjoxOTYzNDc0MzF9")["Slides"]],
            r: [2022]
          ),
          [Presented my PhD journey around efficient reinforcement learning and embedded systems]
        ),
        cv_entry(
          entry_heading(
            l: [AI4ALL],
            m: [#link("https://1drv.ms/p/c/1e19bc03a94d15e2/EeIVTakDvBkggB7PIwAAAAABEzbRs_N29zRVvmCRfw3bVw?e=ZAE0ez")["Slides"]],
            r: [2022]
          ),
          [Presented an introduction to robotics and reinforcement learning to high school students, focusing on making complex concepts accessible and inspiring the next generation of researchers.]
        ),
        cv_entry(
          entry_heading(
            l: [BU AIR],
            m: link("https://www.bu.edu/hic/centers-initiatives-labs/air/")["bu.edu/hic/centers-initiatives-labs/air"],
            r: [2021]
          ),
          [Presented findings on reward design #labels_n_refs.quadrotor.ref and minimizing actuation #labels_n_refs.caps.ref for real world RL-based control]
        ),
        cv_entry(
          entry_heading(
            l: [ICRA],
            m: text(fill: primary_color)[#quote(labels_n_refs.caps.ref)],
            r: [2021]
          ),
          [Presented my paper on regularizing action policies for smooth control]
        ),
        cv_entry(
          entry_heading(
            l: [CoG],
            m: text(fill: primary_color)[#quote(labels_n_refs.honey.ref)],
            r: [2021]
          ),
          [Presented work on minimizing actor sizes for real-time control in actor-critic RL]
        ),
        cv_entry(
          entry_heading(
            l: [Honda Research Institute],
            m: link("https://honda-ri.de/institute")["honda-ri.de/institute"],
            r: [2019]
          ),
          [Presented work on privacy-preserving ridesharing using secure multi-party computation (MPC), focusing on optimization constraints for pooling users with similar preferences, and presented methodology for n-dimensional similarity matching using the Hilbert space-filling curve]
        ),
      )
    ),
    cv_subsections_list(
      "News Articles",
      (grid(
        columns: (auto, 1fr, auto),
        gutter: 1em,
        row-gutter: 0.5em,
        [*Haskell Weekly*], align(left)[_#link("https://haskellweekly.news/issue/82.html")["Issue 82"]_], smallcaps([2017]),
        [*BU Hub Innovation Center*], align(left)[_#link("https://www.bu.edu/hic/2021/03/17/simplifying-machine-learning-for-drone-flight-control/")["Simplifying Machine Learning for Drone Flight Control"]_], smallcaps([2021]),
      ),)
    ),
  )
)