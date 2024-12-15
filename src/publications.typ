#import "lib_cv.typ": *

#set cite(style: "alphanumeric")

#let publications = (
  quadrotor: (
    authors: "Mabsout B.* and Mysore S.* and Saenko K. and Mancuso R.",
    title: [How to train your quadrotor: A framework for consistently smooth and responsive flight control via reinforcement learning],
    venue: "ACM Trans. Cyber-Phys. Syst., 5(4)",
    year: 2021,
    doi: link("https://doi.org/10.1145/3466618")[10.1145/3466618],
    citations: 23,
    extra_links: (
      ("website", link("https://cpslab.bu.edu/projects/httyq/")[cpslab.bu.edu/projects/httyq]),
    )
  ),
  caps: (
    authors: "Mabsout B.* and Mysore S.* and Saenko K. and Mancuso R.",
    title: [Regularizing Action Policies for Smooth Control with Reinforcement Learning],
    venue: "ICRA",
    year: "2021",
    doi: link("https://doi.org/10.1109/ICRA48506.2021.9561138")[10.1109/ICRA48506.2021.9561138],
    citations: 83,
    extra_links: (
      ("website", link("http://cpslab.bu.edu/projects/caps/")[cpslab.bu.edu/projects/caps/]),
    )
  ),
  honey: (
    authors: "Mysore S. and Mabsout B. and Mancuso R. and Saenko K.",
    title: "Honey. I Shrunk The Actor: A Case Study on Preserving Performance with Smaller Actors in Actor-Critic Reinforcement Learning",
    venue: "IEEE CoG",
    year: "2021",
    doi: link("https://doi.org/10.1109/CoG52621.2021.9619008")[10.1109/CoG52621.2021.9619008],
    citations: 12,
    extra_links: ()
  ),
  thesis: (
    authors: "Mabsout B.",
    title: [Tree Shaping, a solution to the expression problem showcased via a compiler for a programming language named Puler],
    venue: "Masters Thesis, Boston University",
    year: "2023",
    doi: link("https://hdl.handle.net/2144/49330")[hdl.handle.net/2144/49330],
    extra_links: (
      ("github", link("https://github.com/bmabsout/puler")[bmabsout/puler]),
    )
  )
)

// Create labels dictionary with label and reference
#let labels_n_refs = {
  let pairs = publications.pairs().enumerate().map(((i, (key, _))) => {
    let number = [ [#(i + 1)] ]
    (key, (
      label: [#number#label(key)],
      ref: link(label(key), number)
    ))
  })
  let result = (:)
  for (key, value) in pairs {
    result.insert(key, value)
  }
  result
}
