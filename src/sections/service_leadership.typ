#import "../lib_cv.typ": *
#import "../lists.typ": research

#let service_leadership = cv_section("SERVICE & LEADERSHIP", {
  cv_subsections((
    (
      title: [Peer Review Venues],
      body: [#research.peer_review_venues.join([ #diamond() ])]
    ),
    (
      title: [Academic Service],
      body: [- [Add department/university service]]
    )
  ))
}) 