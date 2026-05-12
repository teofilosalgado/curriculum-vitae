#let header(title, subtitle, caption, url, email, phone) = {
  box(width: 210mm)[
    #grid(
      columns: (auto, 1fr, 25mm),
      rows: 1,
      gutter: 6pt,
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
          ],
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
              #text(font: "Inter 18pt", size: 12pt, fill: white)[
                #link("https://" + url + "/", url)
              ]
            ],
            grid.cell()[
              #text(font: "Inter 18pt", size: 12pt, fill: white, email)
            ],
            grid.cell()[
              #text(font: "Inter 18pt", size: 12pt, fill: white, phone)
            ]
          )
        ]
      ],
      grid.cell(fill: rgb("#0b5627"))[],
    )
  ]
}

#let item(title, subtitle, heading, content) = {
  pad(bottom: 0mm)[
    #grid(
      columns: (1fr, 1fr),
      rows: 2,
      gutter: 0pt,
      grid.cell()[
        #text(font: "Inter 18pt", size: 12pt, weight: "bold", hyphenate: false, title) \
        #text(font: "Inter 18pt", style: "italic", hyphenate: false, subtitle)
      ],
      grid.cell()[
        #align(right)[
          #par(justify: false)[
            #text(fill: rgb("#797794"), heading)
          ]
        ]
      ],
    )
    #content
  ]
}

#let skills(skills) = {
  pad(bottom: 5mm)[
    #par(leading: 12pt, justify: true)[#(
      skills
        .map(skill => {
          text( size: 12pt)[#underline(
            stroke: 1pt + rgb("#0b5627"),
            offset: 4pt,
            evade: false,
            background: false,
          )[#skill]]
        })
        .join(",  ")
    )]
  ]
}

#let languages(..langs) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 6pt,
    ..langs.pos()       // Desempacota os itens recebidos
  )
}

#let language(nome, fluencia) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 6pt,
    align: (right, left),
    text()[#strong(nome):],
    fluencia
  )
}