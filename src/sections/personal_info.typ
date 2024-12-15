#import "../lib_cv.typ": *


#let personal_info = cv_section_list("PERSONAL INFORMATION",
  (
    cv_entry(
      [*Nationalities* #h(1fr)],
      [Lebanese#diamond()Portuguese]
    ),
    cv_entry(
      [*Languages* #h(1fr)],
      [English (Fluent)#diamond()Arabic (Native)#diamond()French (Intermediate)]
    ),
  )
)