// Test basic font
#text(font: "EB Garamond")[
  Regular - The quick brown fox jumps over the lazy dog
]
#linebreak()
#let x = ((title: "dkfjdkf", body: "dkfjdkf"), (title: "kdfjdk", body: "dkfjdkf"))
#type(x)

#let n(l) = {
  [*#l.title*]
  l.body
}
#n((title: "kdfjdk", body: "dkfjdkf"))


#let f(y) = {
  for item in y {
    n(item)
  }
}
#f(x)

#let h(y) = {
  if type(y) != "string" {
    panic("Expected string argument")
  }
  y
}
#h("kdfjdk")
// Test different weights with the correct font family
#let weights = (100, 200, 400, 500, 600, 700, 800)
#for w in weights [
  Weight #w: \
  #text(font: "EB Garamond", weight: w)[
    The quick brown fox jumps over the lazy dog
  ]
  #linebreak()
]

// Test italic with different weights
#v(1em)
#for w in weights [
  Italic Weight #w: \
  #text(font: "EB Garamond", weight: w, style: "italic")[
    The quick brown fox jumps over the lazy dog
  ]
  #linebreak()
]