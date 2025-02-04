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
    margin: (left: 0.5in, right: 0.5in, top: 0.7in, bottom: 0.3in),
    background: place(top, rect(fill: rgb("15397F"), width: 100%, height: 0.5in)),
    header: align(
      horizon,
      grid(
        columns: (80%, 20%),
        align(left, text(size: 16pt, fill: white, weight: "bold", title)),
        align(right, text(size: 20pt, fill: white, weight: "bold", site)),
      ),
    ),
    footer: align(
      grid(
        columns: (40%, 60%),
        align(horizon, text(fill: rgb("15397F"), size: 9pt, counter(page).display("1"))),
      )
    )
  )

  body
}

