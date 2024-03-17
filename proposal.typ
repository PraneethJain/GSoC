#set text(font: "Roboto")
#show link: set text(rgb(0, 0, 255))

#align(center, text(size: 1cm, [GSoC 2024]))
#align(center, text(size: 0.8cm, [Project Proposal]))
#line(start: (-10%, 0%), end: (110%, 0%))
#figure(image("julia.svg", width: 50%),)
\
\
#align(center, text(size: 9mm, [Language Interoperability]))
#align(center, text(size: 9mm, [CxxWrap.jl]))
#align(center, text(size: 6mm, [Moida Praneeth Jain]))
#align(center, text(size: 6mm, [Mentor: Bart Janssens]))
\
#figure(image("gsoc.png", width: 70%),)


#set page(

  header: [The Julia Language #h(1fr) Language Interoperability -  CxxWrap STL #line(start: (-10%, 0%), end: (110%, 0%))],
  footer: [#line(start: (-10%, 0%), end: (110%, 0%))
  GSoC 2024
  #h(1fr)
  Moida Praneeth Jain
  #h(1fr)
  #counter(page).display(
    "1 of 1",
    both: true,
  )
])

= Synopsis