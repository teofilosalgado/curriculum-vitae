#import "components.typ": header, item, skills

#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.5cm, bottom: 0.5cm),
)

#set par(
  justify: true
)

#set text(
  font: "Inter",
  hyphenate: false
)

#show heading: c => {
  pad(left: -1.5cm, top: 0.5cm, bottom: 0.25cm)[
    #grid(
      columns: (2cm, 1fr),
      rows: 1,
      gutter: 8pt,
      align: bottom,
      grid.cell(fill: rgb("#0b5627"))[],
      grid.cell()[
        #text(font: "DM Serif Display", size: 18pt, c.body)
      ],
    )
  ]
}

#header(
  "João Victor", 
  "Teófilo Salgado", 
  "GIS Developer", 
  "teofilosalgado.github.io",
  "jvictorteo2000@hotmail.com",
  "+55 35 9 9872-4100"
)

Computer Science graduate at UFLA with a technician degree in Mechatronics from CEFET-MG. I am a GIS developer with experience designing geoprocessing services, geodatabases, data pipelines, and highly available applications. Currently, I am working on solutions for utility companies based on the ArcGIS platform.

== Skills

#skills(("ArcGIS Enterprise", "ArcGIS Pro", "ArcGIS Online", "Oracle", "PL/SQL", "SQL Server", "T-SQL", "Postgres", "PostGIS", "FME", "QGIS", "GeoServer", "Python", "C#", "Java", "Typescript", "Javascript"))

== Work Experience

#item(
  "Atos",
  "Nov 2022 - Current"
)[
  _GIS Consultant_

  - Planned Oracle-based Enterprise Geodatabases deployments for mission-critical utility solutions.
  - Developed ArcGIS Pro add-ins, allowing the final user to perform complex geospatial analysis on demand.
  - Designed ArcGIS Experience Builder applications delivering easy-to-use data visualization and analysis features.
  - Worked on integrations between GE's Smallworld and Schneider's EcoStruxure, delivering real-time business and spatial data reliably.

  *Projects:*
  - Sabesp - SIGNOS
  - Cemig Distribuição - Implantação do EcoStruxure ADMS
]

#item(
  "Imagem Geosistemas",
  "Jul 2021 - Nov 2022"
)[
  _Solution Analyst_

  - Implemented ArcGIS Geoprocessing Services for Network Dataset generation, providing reliable routing data for the final user.
  - Optimized SQLServer-based Enterprise Geodatabases improving performance on large-scale geospatial operations.
  - Developed observability solutions based on the Elastic stack allowing for end-to-end monitoring and logs collection.

  *Projects:*
  - ANEEL - Processamento SIG-R
  - Sanepar - Gestão de Serviços
  - COPEL - Nav
  - CPFL Energia - Otimizador de Rotas
]

#item(
  "KPMG",
  "Nov 2020 - Jun 2021"
)[
  _SAP Consultant_

  - Worked on integrations between SAP and ArcGIS Enterprise deployments for the agricultural industry.
  - Developed custom UI5 applications exposing ArcGIS Enterprise functionalities.

  *Projects:*
  - São Martinho S.A - Migração para S/4HANA
]

#item(
  "GT4W",
  "May 2019 - March 2021"
)[
  _Software developer_

  - Developed mission-critical, offline-first mobile and web applications for private and public institutions.
  - Streamlined the processing of large databases of land parcel data designing ArcGIS Geoprocessing Services.
  - Optimized PostGIS-based geodatabases reducing load times and overall resource usage.

  *Projects:*
  - ITERPA/Amapá Terras - SICARF PA/SICARF AP
  - Defesa Civil RS - SEGIRD
  - Amaggi - ORIGINAR
]

== Education

#item(
  "Universidade Federal de Lavras",
  "2018 - 2024",
  left-column-width: 1fr,
  right-column-width: 1fr
)[
  Bachelor’s degree in Computer Science
]

#item(
  "Centro Federal de Educação Tecnológica", 
  "2015 - 2017",
  left-column-width: 1fr,
  right-column-width: 1fr
)[
  Technician degree in Mechatronics
]

== Languages

#pad(bottom: 0.5cm)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    rows: 1,
    gutter: 0pt,
    inset: 0pt,
    grid.cell()[
      #grid(
        columns: (1fr, 1fr),
        rows: 1,
        gutter: 4pt,
        grid.cell()[#align(right)[*Portuguese:*]],
        grid.cell()[Native]
      )
    ],
    grid.cell()[
      #grid(
        columns: (1fr, 1fr),
        rows: 1,
        gutter: 4pt,
        grid.cell()[#align(right)[*English:*]],
        grid.cell()[Fluent]
      )
    ],
    grid.cell()[
      #grid(
        columns: (1fr, 1fr),
        rows: 1,
        gutter: 4pt,
        grid.cell()[#align(right)[*Mandarin:*]],
        grid.cell()[Basic]
      )
    ],
  )
]

== Publications

#bibliography("publications.bib", title: none, full: true, style: "american-psychological-association")

== Volunteering

#item(
  "Comp Júnior", 
  "2018 - 2020"
)[
  While associated with the non-profit organization Comp Júnior, part of the Movimento Empresa Júnior, I developed applications to help the organization of academic events at my university. Noteworthy mention to UFLA de Portas Abertas, an application successfully deployed to manage and guide around 40.000 visitors during campus tours.
]