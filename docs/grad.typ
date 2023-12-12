#set page(
  paper: "a4",
  margin: (x: 2.54cm,y:2.54cm),
)
#set text(
  font: "New Computer Modern",
  // font:"Times New Roman",
  size: 12pt
)
#set par(
  first-line-indent: 1em,
  justify: true,
)
#align(horizon+center)[
  #image("uni.png",width: 75%)
]
// #lorem(500)
#align(center)[
  #text(size: 40pt, weight: "black")[
    #v(0.5cm)
    Econome
  ]
    #v(0.5cm)
    #text(size: 25pt, weight: "bold")[
    Graduation Project 2024                       
  ] 
  #v(2pt)
  #text(size: 20pt)[
    Software Engineering Department\
  ]
  #v(45pt)
]
#align(horizon+center)[
    #text(size: 20pt , weight: "bold")[
    Project Team\
  ]
  #v(.2cm)
  #text(size: 15pt)[
    Baher Salama  191900193\
    Nouran Ahmed  191900018\
    Hassan Amr    191900217\
  ]
  #v(35pt)
]
#align(center)[
    #text(size: 20pt , weight: "bold")[
    Under Supervision\
  ]
  #v(.1cm)
  #text(size: 18pt)[
    Dr. Soha Safwat \
  ]
  #v(1cm)
  #text(size: 15pt)[
    Egyptian Chinese University
  ]

]
#pagebreak()


// #outline(title: "Table of content",indent: true)
// #set text(fill: white)
#set par(justify: true)
#set page(numbering: "1 / 1")
#set heading(numbering: "1.")
#counter(page).update(1)

= Acknowledgment
#v(0.5cm)
#h(1cm) We would like to express our deep gratitude to Dr. Soha Safwat for her patient guidance, enthusiastic encouragement,
and useful critiques of this research work. We would also like to thank Teacher A for
her support throughout the project. We extend our sincere appreciation to our colleagues for working
alongside us for the better part of a year, brainstorming ideas, and helping us to solve problems
encountered during this project. We are also grateful to the Egyptian Chinese University for
providing the opportunity and resources necessary to carry out this work successfully. Finally, we
would like to thank our parents for their unwavering support and encouragement of our education.
Their hard work and patience have been instrumental in helping us to reach where we are today.
#pagebreak()

#outline(title: "Table of content",indent: true)
#pagebreak()
= Abstract
#v(0.5cm)
#h(1cm) In today's rapidly evolving economic climate, possessing a robust Money Management System (MMS) is critical to ensuring financial stability and fostering economic empowerment. This abstract outlines an MMS created to aid individuals, businesses, and communities in managing their finances. Our Money Management System offers a comprehensive and user-friendly interface that integrates cutting-edge financial tools to facilitate informed decision-making. It encompasses fundamental aspects of economic empowerment like budgeting, expense tracking, investment planning, and financial education.
#pagebreak()

#let todo(fill: red) = {
  set text(white)
  set align(center)
  rect(
    fill: fill,
    inset: 8pt,
    radius: 4pt,
    [*TODO!*],
  )
}
// = Details
// #table(
// columns:3,
// rows:auto,
// [feature],[Parts],[Description],
// [],[Money in],
// )
= Introduction
#pagebreak()
= Lierature review
#pagebreak()
= Techology
#pagebreak()
= Conclusion
#pagebreak()
= Referances
+ As a user i want to be able to fill my data and bank accounts.
+ As a user i want to be able to define my goals ex: buying a car.
+ As a user i want to be able to get insight on how to achive my goal.
+ As a user i want to be able to automate recurring payments ex: rent.
+ As a user i want to be able to view analytics.
+ As a user i want to be able to split spending into catogories for easier managment 
#pagebreak()

= work flow
== Financial Management App Workflow
+ User Data Collection:
  + Users provide personal and financial information, including income, expenses, assets, liabilities, and financial goals.
Specify risk tolerance and investment preferences.
+ Sending Data to the Server:
  + User data is securely sent to your Node.js backend server for processing and storage.
+ Cost of Living Calculation:
  + Your server calculates the cost of living based on the user's location, using data from external sources or APIs.
+ Data Processing:
  + The server processes cost-of-living data, merging it with user financial details and preferences.
This processed data forms the foundation for budgeting and expense tracking.
+ Budget Setup:
  + The app assists users in creating their budgets:
    + Users define budget categories (e.g., housing, transportation, groceries).
  + Allocate funds to each category with customization options.
  + Set monthly or annual budget limits.
+ Expense Tracking:
  + Users begin tracking their expenses within the app:
    + Record spending transactions (date, vendor, category).
  + The app maintains real-time expense records, adjusting budget category balances.
+ Real-time Expense Updates:
  + Users access real-time information on remaining budget amounts within each category.
  + Monitor spending against budget limits for a clear financial picture.
+ Notifications and Alerts:
  + The app sends timely alerts to users when they approach or exceed category budget limits.
  + Promotes mindful spending habits.
+ Reports and Analysis:
  + Users generate reports and visualize financial data:
    + Understand spending patterns and budget progress over time.
    + Gain valuable insights for informed financial decisions.
+ Goal Tracking:
  + Setting Goals:
    + You tell the app what you want to save or invest for, like a vacation or buying a car.
  + Tracking Progress:
    + The app keeps an eye on your savings and shows you how close you are to reaching your goal. It's like a progress bar that fills up as you save.
  + Staying on Course:
    + If you're not saving enough, the app can remind you to put more money toward your goal.
  + Visualizing Success:
    + It shows you a visual picture of your goal progress, like a chart or a graph, so you can see how well you're doing.
  + Celebrating Achievements:
    + When you reach your goal, the app celebrates with you, like a digital high-five.
+ Savings and Investment Recommendations:
  + User Profile Assessment:
  + The app begins by assessing the user's financial profile, which includes their income, expenses, assets, liabilities, risk tolerance, and financial goals.
  + This information forms the foundation for tailored recommendations.
+ Goal Alignment:
  + The app takes into account the user's specific financial goals. For example, if a user is saving for retirement, the recommendations will align with this
  + long-term objective.
+ Risk Assessment:
  + Users indicate their risk tolerance, which helps determine the level of risk they are comfortable with when it comes to investing. Some users may
  + prefer lower-risk options, while others may be open to higher-risk investments with potentially higher returns.
  + Available Funds:
    + The app considers the user's available funds for saving and investing. It takes into account their budget, expenses, and current savings.
  + Diversified Recommendations:
  + Based on the user's financial profile, goals, risk tolerance, and available funds, the app provides a range of investment recommendations.
  + Recommendations may include options like savings accounts, certificates of deposit (CDs), stocks, bonds, mutual funds, or retirement accounts,
  + depending on what suits the user's situation.
  + Explanation and Education:
  + The app provides explanations for each recommendation, helping users understand the pros and cons of each option.
  + Educational content may be included to empower users with financial knowledge.
#pagebreak()
= UMLs
== ERD
#image("database.png")
