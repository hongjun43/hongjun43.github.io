// Hong Jun Lee - CV. Layout modelled on junhyuk.com/media/cv.pdf (Computer Modern, ruled section heads,
// bold organisation left / italic dates right, italic role left / location right).
#set page(paper: "a4", margin: (top: 0.45in, bottom: 0.4in, left: 0.6in, right: 0.6in))
#set text(font: "New Computer Modern", size: 10pt)
#set par(justify: false, leading: 0.48em, spacing: 0.48em)
#show link: set text(fill: black)
#set list(marker: [•], indent: 0.02in, body-indent: 0.6em, spacing: 0.35em)

#let section(title) = {
  v(5pt)
  block(breakable: false)[
    #text(weight: "bold", size: 12pt, tracking: 0.03em)[#upper(title)]
    #v(-1.5pt)
    #line(length: 100%, stroke: 0.5pt)
  ]
  v(2pt)
}

#let entry(org, dates, role, loc, body) = {
  block(inset: (left: 0.24in))[
    #grid(
      columns: (1fr, auto), column-gutter: 12pt, row-gutter: 3pt,
      align: (left, right),
      text(weight: "bold")[#org], text(style: "italic")[#dates],
      text(style: "italic")[#role], text(style: "italic")[#loc],
    )
    #if body != none and body != [] [ #v(2pt) #body ]
  ]
  v(3.5pt)
}

// ---------- header ----------
#align(center)[
  #text(size: 19pt, weight: "bold")[Hong Jun Lee]
  #v(3pt)
  #link("mailto:hong_jun.lee@kcl.ac.uk")[hong#text(font: "Libertinus Serif")[\_]jun.lee\@kcl.ac.uk]
  #v(2pt)
  #link("https://hongjun43.github.io")[https://hongjun43.github.io]
]
#v(6pt)

// ---------- education ----------
#section[Education]

#entry([King’s College London], [June 2026 - Present], [Ph.D. in Computer Science], [London, United Kingdom])[
  Advisors: Stefanos Leonardos, Yali Du
]

#entry([London School of Economics and Political Science (LSE)], [Sep 2022 - July 2023], [MSc Quantitative Methods in Risk Management], [London, United Kingdom])[]

#entry([Heriot-Watt University], [Sep 2019 - June 2022], [BSc (Hons) Actuarial Science], [Edinburgh, United Kingdom])[
  - Deputy Principal’s Award Winner for Academic Excellence 2021/22
  - Obtained 1st Class Honours
]

// ---------- career experience ----------
#section[Career Experience]

#entry([Tokio Marine Kiln], [Feb 2025 - June 2025], [Cyber Data & Catastrophe Analyst], [London, United Kingdom])[
  - Ensure data accuracy and forecast trends by validating data with different mathematical and statistical techniques, such as Bayesian inference or logistic regression. Conducted in-depth analysis of cyber insurance portfolios, identifying and investigating drivers for fluctuations in key metrics such as ground-up loss, business interruption loss, etc.
  - Collaborate closely with leading model vendors, utilising Monte Carlo simulations and diverse statistical distributions to evaluate external models against in-house capabilities and enhance risk assessment accuracy.
  - Lead a strategic project for upgrading core catastrophe modelling systems to a newer version, coordinating with IT, InfoSec, and other stakeholders on infrastructure decisions including cloud vs. on-premise server deployment and SQL database configuration.
]

#entry([Deloitte UK], [Sep 2023 - Nov 2024], [Actuarial Analyst], [London, United Kingdom])[
  - Engineered a Python interface application using PyQt, specializing in economic scenario generators for financial modelling. Achieved a 30% runtime reduction via algorithm optimization, simulating interest rates, yield curves, implied volatility, etc.
  - Produced risk scenario simulations for a wide variety of business uses including impact analysis for risk methodology changes, economic capital calculations and lite model calibrations using techniques such as simulated annealing or stochastic gradient descent.
  - Modelled interest rates using stochastic volatility models and principal components analysis to capture movements across the term structure.
]

#entry([London School of Economics and Political Science (LSE)], [Mar 2023 - July 2023], [Research Assistant], [London, United Kingdom])[
  - Collaboratively designed a comprehensive course for LSE alongside Professor Jon Danielsson regarding Quantitative Methods for Finance and Risk Analysis by modifying and reviewing syllabus such as copulas, time series, stress testing etc.
  - Conducted an in-depth analysis of the risk management practices of major investment banks during the 2008 Financial Crisis, using time-series models such as GARCH and DCC for volatility and correlation forecasting.
]

#entry([Thinkat Advisory], [June 2021 - Aug 2021], [Corporate Finance Advisor Internship], [Kuala Lumpur, Malaysia])[
  - Analysed correlation-based forecasting models to benchmark 20+ companies’ financial performances in the ACE and LEAP markets to understand past revenue growth and to model projections.
  - Represented Alpha Ocean Resources Bhd, one of South-East Asia’s leading tuna fishing company valued at USD 1.57m, evaluating its balance sheet, P&L and cashflow statement prepare an investors insight report.
]

#entry([Baker Tilly], [June 2020 - Aug 2020], [Corporate Restructuring & Recovery Internship], [Kuala Lumpur, Malaysia])[
  - Evaluated risk data for Baker Tilly’s debtors by eliciting assets, inventory held values and available fiscal statements.
  - Garnered feedbacks and ideas from discussions with stakeholders to develop a debt recovery plan with a risk advisory to regain approximately USD 1.03m of outstanding debt.
  - Conducted due diligence reviews on asset freezing and financial background risk reviews to report on potential compliance breaches and quality improvements to standard operating procedures.
]

// ---------- additional information ----------
#section[Additional Information]

#block(inset: (left: 0.24in), breakable: false)[
  #grid(columns: (1.1in, 1fr), row-gutter: 3pt,
    text(weight: "bold")[Languages:], [English, Mandarin, Malay, Japanese, Korean, Cantonese],
    text(weight: "bold")[Interests:], [Chess, Poker, Reading],
  )
]
