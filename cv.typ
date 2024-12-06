#import "src/lib_cv.typ": *

// Import all sections
#import "src/sections/education.typ": education
#import "src/sections/research_interests.typ": research_interests
#import "src/sections/publications.typ": publications_section
#import "src/sections/ongoing_research.typ": ongoing_research
#import "src/sections/research_experience.typ": research_experience
#import "src/sections/teaching_experience.typ": teaching_experience
#import "src/sections/service_leadership.typ": service_leadership
#import "src/sections/selected_projects.typ": selected_projects
#import "src/sections/technical_skills.typ": technical_skills_section

// Document settings
#set page(
  margin: (x: 2.5cm, y: 2.5cm),
  paper: "us-letter",
)

#set text(font: fonts.body)
#set par(leading: 1em)
#set block(spacing: 0em)
#show link: underline

// Header
#v(-2em)
#cv_header(
  "Bassel El Mabsout",
  cv_contact_box((
    (icon: "phone", text: "+1 (857) 939-8769"),
    (icon: "location", text: "Boston, MA, USA"),
    (icon: "email", text: link("mailto:bmabsout@bu.edu")),
    (icon: "globe", text: link("https://bmabsout.com")),
    (icon: "github", text: link("https://github.com/bmabsout")),
    (icon: "scholar", text: link("https://scholar.google.com/citations?user=Rxv9W98AAAAJ")[Google Scholar (Rxv9W98)])
  ))
)

// Main content
#cv_sections(
  education,
  research_interests,
  publications_section,
  ongoing_research,
  research_experience,
  teaching_experience,
  service_leadership,
  selected_projects,
  technical_skills_section
) 