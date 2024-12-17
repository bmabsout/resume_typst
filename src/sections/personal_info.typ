#import "../lib_cv.typ": *


#let personal_info = cv_section_list("PERSONAL INFORMATION",
  (
    cv_entry(
      entry_heading(
        l:[*Nationalities*],
        m:[],
        r:[]
      ),
      [Lebanese#diamond()Portuguese]
    ),
    cv_entry(
      entry_heading(
        l:[*Languages*],
        m:[],
        r:[]
      ),
      [English (Fluent)#diamond()Arabic (Native)#diamond()French (Intermediate)]
    ),
  )
)