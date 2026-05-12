#import "components.typ": header, item, skills, languages, language

#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.5cm, bottom: 0.5cm),
)

#set par(
  justify: true,
)

#set text(
  font: "Inter 18pt",
  size: 10pt,
  hyphenate: false,
)

#show heading: c => {
  pad(left: -1.5cm, top: 0.15cm, bottom: 0.25cm)[
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
  "Arquiteto de Soluções GIS",
  "teofilosalgado.github.io",
  "jvictorteo2000@hotmail.com",
  "+55 35 9 9872-4100",
)

Arquiteto de Soluções GIS Sênior com mais de 8 anos de experiência na concepção de sistemas de alta performance para o setor de utilities. Mestrando em engenharia de dados espaciais, sou especialista em solucionar desafios complexos nos quais os fluxos de trabalho tradicionais atingem seus limites.

== Habilidades

#skills(("ArcGIS Enterprise", "ArcGIS Pro", "ArcGIS Utility Network", "FME", "Oracle", "PL/SQL", "SQL Server", "T-SQL", "Postgres", "PostGIS", "QGIS", "GeoServer", "Python", "C#", "Java", "Typescript", "Javascript"))

== Experiência

#item(
  "Atos",
  "Líder Técnico",
  "Nov 2022 - Current",
)[
  - #underline[Sabesp - Projeto Novo Signos]
    - Implementei a ArcGIS Utility Network para a maior concessionária de água e esgoto do Brasil, otimizando seus fluxos de trabalho de gestão de ativos. No processo, mais de 40 milhões de ativos foram migrados da solução legado baseada em GE Smallworld 4 para o ArcGIS Enterprise 11.5 utilizando _workspaces_ FME e _scripts_ ArcPy. Realizei, também, o projeto de infraestrutura em nuvem (Azure) para a instalação do ArcGIS Enterprise, entregando um cluster multi-site/multi-machine altamente disponível (HA).
    - Projetei a integração entre a ArcGIS Utility Network e o SIMATIC WinCC Open Architecture (WinCC OA), entregando inteligência de dados geográfica para a solução SCADA da Siemens.
    - Projetei a integração entre a ArcGIS Utility Network e o AVEVA PI System através do ArcGIS GeoEvent Server, provendo informações em tempo real de milhares de dispositivos para a ArcGIS Utility Network.
    - Desenvolvi add-ins para o ArcGIS Pro e aplicações no ArcGIS Experience Builder, entregando recursos intuitivos de visualização e análise de dados.
  - #underline[Cemig - Projeto ADMS]
    - Desenvolvi integrações entre o GE Smallworld 5 e o ADMS Schneider EcoStruxure para a maior concessionária de energia elétrica do Brasil, provendo dados de ativos em tempo real para as equipes de operação. Através de _pipelines_ Apache Beam, milhões de ativos são convertidos diariamente para representações nos padrões IEC 61850 e IEC 61970 (CIM/XML).
]

#item(
  "Imagem Geosistemas",
  "Analista de Soluções",
  "Jul 2021 - Nov 2022",
)[
  - #underline[Sanepar - Gestão de Serviços]
    - Desenvolvi soluções baseadas no ArcGIS Workforce e ArcGIS Survey123 para o atendimento inteligente de ordens de serviço e emergências, disponibilizando dashboards para a validação e acompanhamento do progresso das atividades.
  - #underline[COPEL - Nav]
    - Implementei serviços de geoprocessamento na plataforma ArcGIS Enterprise para a geração de Network Datasets contendo toda a malha rodoviária do estado do Paraná, bem como todas as estruturas de transmissão e distribuição da concessionária. Fornecendo soluções de roteamento confiáveis e _offline-first_ para o usuário final.
  - #underline[ANEEL - Processamento SIG-R BDGD]
    - Desenvolvi serviços de geoprocessamento na plataforma ArcGIS Enterprise para validação e análise da BDGD (Base de Dados Geográfica da Distribuidora), composta por toda a rede de distribuição do país. Otimizei Enterprise Geodatabases baseados em SQL Server, melhorando o desempenho em operações geoespaciais de larga escala. Desenvolvi, também, ferramentas de observabilidade para a solução baseadas na _stack_ Elastic, permitindo o monitoramento de ponta a ponta e a coleta de logs em tempo real.
]

#item(
  "KPMG",
  "SAP Consultant",
  "Nov 2020 - Jun 2021",
)[
  - #underline[São Martinho S.A - Migração para S/4HANA]
    - Trabalhei na integração entre ambientes SAP e ArcGIS Enterprise voltados ao setor agrícola, desenvolvendo aplicações personalizadas em SAP UI5 para expor as funcionalidades do ArcGIS Enterprise.
]

#item(
  "GT4W",
  "Software developer",
  "May 2019 - March 2021",
)[
  - #underline[ITERPA/Amapá Terras - SICARF PA/SICARF AP]
    - Desenvolvi soluções _web_ baseadas em tecnologias abertas (QGIS, PostGIS, GeoServer) para a validação, processamento, e consulta de processos de regularização fundiária; agilizando de forma substancial a análise de interferentes e áreas de proteção ambiental. Gerando de forma automática mapas, memoriais descritivos e relatórios para a elaboração de peças jurídicas.
  - #underline[Defesa Civil RS - SEGIRD]
    - Desenvolvi soluções _mobile_ _offline-first_ baseadas na ArcGIS Maps SDK para Kotlin (Android) e Swift (iOS) para a notificação e atendimento eficiente de desastres naturais (_e.g._: alagamentos e desmoronamentos).
]

== Formação

#item(
  "Universidade Federal de Lavras",
  "Mestrado em Engenharia de Dados Espaciais",
  "2025 - Current"
)[]

#item(
  "Universidade Federal de Lavras",
  "Bacharelado em Ciência da Computação",
  "2018 - 2024"
)[]

#item(
  "Centro Federal de Educação Tecnológica",
  "Técnico em Mecatrônica",
  "2015 - 2017"
)[]

== Idiomas

#languages(
  language("Português", "Nativo"),
  language("Inglês", "Fluente"),
  language("Espanhol", "Intermediário"),
  language("Mandarim", "Básico"),
)

== Publicações

#bibliography("publications.bib", title: none, full: true, style: "american-psychological-association")

/*
== Volunteering

#item(
  "Comp Júnior",
  "2018 - 2020"
)[
  While associated with the non-profit organization Comp Júnior, part of the Movimento Empresa Júnior, I developed applications to help the organization of academic events at my university. Noteworthy mention to UFLA de Portas Abertas, an application successfully deployed to manage and guide around 40.000 visitors during campus tours.
]
*/
