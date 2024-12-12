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
  = #paper.title #label(paper.key)
]

// Test different ways to reference
#for paper in papers [
  - Link to #paper.title: #link(label(paper.key), "[" + paper.index + "]")
]

// Or we could use the loop index
#for (i, paper) in papers.enumerate() [
  - Link to #paper.title: #link(label(paper.key), "[" + str(i + 1) + "]")
]