#let report(
  title: "title",
  site : "site",
  body,
) = {

 set text(
    font: "Gill Sans",
    size: 12pt,
  )

 set page(
    "us-letter",
    flipped: true,
    margin: (left: 0.5in, right: 0.5in, top: 0.7in, bottom: 0.3in),
    background: place(top, rect(fill: rgb("15397F"), width: 100%, height: 0.5in)),
    header: align(
      horizon,
      grid(
        columns: (80%, 20%),
        align(left, text(size: 16pt, fill: white, weight: "bold", title)),
        align(right, image("assets/logo.jpg", height: 60%)),

      ),
    ),
    footer: align(
      grid(
        columns: (40%, 60%),

      )
    )
  )







  body
}

