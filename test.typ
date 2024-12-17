#import "src/lib_cv.typ": primary_color, fonts, titled_list, diamond

// Core layout settings
#set page(
  width: 5in,
  height: 4in,
  margin: (x: 0.5in, y: 0.5in),
)
#set block(spacing: 0pt)
#set par(leading: 0pt)
#set par(spacing: 0.3em)

#let pat = pattern(
  size: (10pt, 20pt),
  spacing: (0pt, 0pt)
)[
  // Your shape definition here
  #circle(radius: 5pt, fill: black)
]

#let section_line = {
  [#line(length: 100%, stroke: 0.5pt)
  #label("section-line")]
}



// Phase 1: Add thin lines between sections
#let phase1(content) = {
  show heading.where(level: 1): it => context {
    let prev_headings = query(selector(heading.where(level: 1)).before(here()))
    
    if prev_headings.len() > 0 {
      let prev = prev_headings.last()
      if prev.location().page() == here().page() {
        v(0.3em)
        section_line
        v(0.3em)
      }
    }
    
    block(breakable: false)[
      #set text(fill: primary_color, font: fonts.sans, weight: "bold")
      #it
    ]
  }
  content
}
#text(size: 25pt)[#diamond()]
// Phase 2: Make lines thick
#let phase2(content) = {
  content
}
#let x = [sdjfpds
  batata
]
#let y = x.fields()
#y

#x.at("children")

#let cheese = [
    = Test Section 1
    First item that stays with title
    
    Second item that can break
    
    Third item that can also break
    
    A very long item that might need to wrap to the next line and could potentially cause a page break, let's see how it handles that situation
    
    Final item in this section
    Final item in this section
    Final item in this section
    
    = Test Section 2
    First item of second section
    
    Second item with some content
    
    Third item here as well
    
    = Test Section 3 - Long
    This is a very long first item that should definitely cause a page break. Let's make it really long by adding more text here. We want to make absolutely sure this will need to break across pages.
    
    Second item in the long section
    
    Third item in the long section
    
    Fourth item in the long section
    
    Fifth item in the long section
    
    #for n in range(6, 31) [
      Item #n in the long section
      
    ]
    
    = Test Section 4 - Short
    First item of a short section
    
    Second item
    
    = Test Section 5 - Mixed
    Short first item
    
    This is a longer second item that might need to wrap to multiple lines depending on the available space
    
    Another short item
    
    And one final short item
  ]

#cheese.at("children")
#type(cheese.at("children").at(1))
#for x in cheese.at("children") {
  if x == "heading" {
    x
    line(length: 100%, stroke: 0.5pt)
  } else {
    x
  }
}
  

// Apply phases
#phase2(phase1(
  // Test content starts here
  cheese
))
