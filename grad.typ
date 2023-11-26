#set page(
  paper: "a4",
  margin: (x: 1cm,y:1cm),
  numbering: "1",
  columns: 1,
  // fill: black,
)
#outline()
// #set text(fill: white)
#set par(justify: true)
#set heading(numbering: "1.")

= Memebers
#table(
columns:(3),
rows:auto,
[],[Member],[ID],
"1","Baher Salama","191900193",
"2","Nouran Ahmed","191900018",
"3","Hassan Amr","191900216",
)
= Idea
Money manager
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
= Details
#table(
columns:3,
rows:auto,
[feature],[Parts],[Description],
[],[Money in],
)

= description
+ As a user i want to be able to fill my data and bank accounts.
+ As a user i want to be able to define my goals ex: buying a car.
+ As a user i want to be able to get insight on how to achive my goal.
+ As a user i want to be able to automate recurring payments ex: rent.
+ As a user i want to be able to view analytics.
+ As a user i want to be able to split spending into catogories for easier managment 
 
