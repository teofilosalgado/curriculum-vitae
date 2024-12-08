#let header(title, subtitle, caption, url, email, phone) = {
  box(width: 210mm)[
    #grid(
      columns: (auto, 1fr, 25mm),
      rows: 1,
      gutter: 7pt,
      align: horizon,
      grid.cell()[
        #grid(
          columns: 1,
          rows: 3,
          gutter: 8pt,
          grid.cell()[
            #text(font: "DM Serif Display", size: 28pt, title)
          ],
          grid.cell()[
            #text(font: "DM Serif Display", size: 28pt, subtitle)
          ],
          grid.cell()[
            #pad(y: 4pt)[#text(style: "italic", caption)]
          ]
        )
      ],
      grid.cell(fill: rgb("#0b5627"))[
        #pad(right: 12pt)[
          #grid(
            columns: 1fr,
            rows: 2,
            gutter: 8pt,
            align: right,
            grid.cell()[
               #text(font: "Inter", size: 12pt, fill: white)[
                 #link("https://" + url + "/", url)
               ]
            ],
            grid.cell()[
               #text(font: "Inter", size: 12pt, fill: white, email)
            ],
            grid.cell()[
               #text(font: "Inter", size: 12pt, fill: white, phone)
            ]
          )
        ]
      ],
      grid.cell(fill: rgb("#0b5627"))[]
    )
  ]
}

#let item(title, subtitle, content, left-column-width: 3fr, right-column-width: 9fr) = {
  pad(bottom: 0.25cm)[
    #grid(
      columns: (left-column-width, right-column-width),
      rows: 1,
      gutter: 8pt,
      grid.cell()[
        #align(right)[
        #block()[
          #par(justify: false)[
            #text(font: "Inter", weight: "bold", hyphenate: false, title)
          ]
        ]
        #block()[
          #text(fill: rgb("#797794"), size: 10pt, subtitle)
        ]]
      ],
      grid.cell()[
        #box(content)
      ],
    )
  ]
}

#let skills(skills) = {
  pad(bottom: 0.5cm)[
    #par(leading: 12pt, justify: true)[#skills.map(skill => {
      text(weight: "medium", size: 12pt)[#underline(stroke: 1pt + rgb("#0b5627"), offset: 4pt, evade: false, background: false)[#skill]]
    }).join(",  ")]
  ]
}