// Page settings for testing
#set page(
  width: 5in,
  height: 4in,
  margin: (x: 0.5in, y: 0.5in),
)

// Enable heading numbering
#set document(title: "test")
#set heading(numbering: "1.")
// Test automatic numbering with labels and links
#let papers = (
  (title: "Paper A", key: "a", index: "1"),
  (title: "Paper B", key: "b", index: "2")
)

// Create the labeled headings
#for paper in papers [
  // #v(1fr, weak: true)
  = #paper.title #label(paper.key)
  // #v(1fr, weak: true)
]

// Test different ways to reference
#for paper in papers [
  - Link to #paper.title: #link(label(paper.key), "[" + paper.index + "]")
  #v(1fr, weak: true)
]

// Or we could use the loop index
#for (i, paper) in papers.enumerate() [
  - Link to #paper.title: #link(label(paper.key), "[" + str(i + 1) + "]")
]
#let titled_list(
  title,
  items,
  inset,
  spacing,
) = {
  set block(spacing: 0em)
  
  // Only title and first item are unbreakable
  block(breakable: false)[
    #title
    #if items != () {
      pad(..inset)[#items.at(0)]
    }
  ]
  
  // Rest of items can break
  if items.len() > 1 {
    v(spacing)
    pad(
      left: inset.left,
      stack(
        spacing: spacing,
        ..items.slice(1)
      )
    )
  }
}


// Test cases for titled_list
#let test_inset = (left: 2em, top: 1.5em)
#let test_spacing = 1.8em

= Empty list
#titled_list(
  [Empty List Title],
  (),
  test_inset,
  test_spacing,
)

= Single item
#titled_list(
  [Single Item Title],
  ([First item],),
  test_inset,
  test_spacing,
)

= Multiple items
#titled_list(
  [Multiple Items Title],
  (
    [First item],
    [Second item],
    [Third item with longer content that might wrap to the next line to test spacing],
    [Fourth item],
  ),
  test_inset,
  test_spacing,
)

// Test with different content types
= Mixed content
#titled_list(
  text(weight: "bold")[Mixed Content],
  (
    [A paragraph as first item],
    list(
      [List item 1],
      [List item 2],
    ),
    block(width: 100%, inset: 8pt, fill: rgb(240,240,240))[
      A block element
    ],
  ),
  test_inset,
  test_spacing,
)

= Breaking behavior tests

// Test 1: Long content in first item
#titled_list(
  [Title with long first item],
  (
    [This is a very long first item that should stay with the title but might need to break internally if it gets too long. Let's add even more text to make sure it's long enough to test breaking behavior.],
    [Second item],
    [Third item],
  ),
  test_inset,
  test_spacing,
)

// Test 2: Long content in subsequent items
#titled_list(
  [Title with long later items],
  (
    [Short first item],
    [This is a very long second item that should be able to break freely since it's not part of the unbreakable section with the title. Let's make it even longer to ensure we test the breaking behavior properly.],
    [Another long item that should also be able to break freely. We want to make sure that items after the first one can break across pages when needed.],
  ),
  test_inset,
  test_spacing,
)

// Test 3: Multiple paragraphs
#titled_list(
  [Title with paragraphs],
  (
    [First paragraph that stays with title],
    [
      Second paragraph that can break freely.
      
      With some extra content to make it interesting.
      
      And even more content to test breaking.
    ],
    [Final item],
  ),
  test_inset,
  test_spacing,
)

// Test 4: Nested content
#titled_list(
  [Nested content test],
  (
    [First item with #text(weight: "bold")[some styled content] that stays with title],
    list(
      [Nested list item 1],
      [Nested list item 2],
      [Nested list item 3],
    ),
    [Final regular item],
  ),
  test_inset,
  test_spacing,
)