// This function gets your whole document as its `body`
// and formats it as a simple letter.
#let memo(
  // The letterhead image file path
  letterhead: none,

  // The letter's sender, which is display at the top of the page.
  sender: none,

  // The letter's recipient, which is displayed close to the top.
  receiver: none,

  // The date, displayed to the right.
  date: none,

  // The subject line.
  re: none,

  // The letter's content.
  body
) = {

  let footertext1 = [
    Ph: 503-823-7740 #sym.square.filled
    Fax: 503-823-6995 #sym.square.filled
    #link("portland.gov/bes") #sym.square.filled
    An Equal Opportunity Employer\
  ]

  let footertext2 = [
    The City of Portland ensures meaningful access to City programs, services,
    and activities to comply with Civit Rights Title VI and ADA Title II laws
    and reasonably provides: translation interpretation, modifications,
    accomodations, alternative formats, auxiliary aids and services. To request
    these services or file a complaint of discrimination, contact 503-823-7740,
    or 311 (503-823-4000), for Relay Service and TTY: 711.
  ]
  // Configure page and text properties.
  set page(
    paper: "us-letter",
    header: {
      align(center,
        block(
          height: 2in,
          width: 7.5in,
          if letterhead == none {
            image("images/letterhead.png", width: 100%)
          } else {
            image(letterhead, width: 100%)
          }
      ))
    },
    footer-descent: 10%,
    footer: {
      align(center + top,
        block(
          height: 1.5in,
          width: 7in,
          {
            line(length: 100%)
            v(4pt, weak: true)
            text(font: "Palatino Linotype", size: 10pt, footertext1)
            v(0.5em)
            text(font: "Calibri", size: 8pt, footertext2)
          }
        )
      )
    },
    margin: (top: 2in, x: 1.25in, bottom: 1.5in)
  )

  text(
    font: "Calibri",
    weight: "light",
    size: 18pt,
    tracking: 12pt,
    upper("Memorandum")
  )

  // Memo header material
  set text(font: "Calibri", size: 12pt, weight: "bold")
  line(length: 100%)
  date
  grid(
    columns: (0.5in, auto),
    rows: (auto),
    row-gutter: 12pt,
    "To:", receiver,
    "From:", sender,
    "RE:", re
  )
  line(length: 100%)
  v(2em)

  // memo body
  set text(font: "Calibri", size: 12pt, weight: "regular")
  block(
    columns(1,
      body
    )
  )

}
