#import "../lib_cv.typ": *
#import "../lists.typ": research

#let academic_services = cv_section("ACADEMIC SERVICES", {
  cv_subsections((
    (
      title: [Peer Review Venues],
      body: [#research.peer_review_venues.join([#diamond()])]
    ),
    (
      title: [Teaching Experience],
      body: cv_entries((
        cv_entry(
          [*Course Instructor - CS 454/654* #h(1fr) 2023],
          [#h(1em) _Boston University_ \
          Created and supervised projects for 24 students in modeling and controlling AmazingBall System. Students' work led to research contributions while focusing on minimizing the sim2real gap. Developed comprehensive curriculum and mentored students through implementation challenges.]
        ),
      ))
    )
  ))
}) 