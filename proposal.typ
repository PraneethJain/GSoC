#set text(font: "Roboto")
#set heading(numbering: "1.")
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

#set par(leading: 5mm)
#outline(
  title: [Table of Contents #linebreak() #linebreak()],
  indent: auto,
)
#set par(leading: 0.65em)
#pagebreak()

= Introduction

== Project Synopsis
== Why I chose this project
== Relevant Work
== Technical Skills
== Why choose me
== Contact Information

= Benefits to Community

= Deliverables
Through this project, I aim to expose a larger portion of the C++ standard library to Julia.
== Primary Goals
=== Add STL Container Types
The following containers, along with their commonly used methods, will be added
- #link("https://cplusplus.com/reference/set/set/", [`std::set`])
- #link("https://cplusplus.com/reference/set/multiset/", [`std::multiset`])
- #link("https://cplusplus.com/reference/stack/stack/", [`std::stack`])
- #link("https://cplusplus.com/reference/queue/priority_queue/", [`std::priority_queue`])
- #link("https://cplusplus.com/reference/unordered_set/unordered_set/", [`std::unordered_set`])
- #link("https://cplusplus.com/reference/unordered_set/unordered_multiset/", [`std::unordered_multiset`])
- #link("https://cplusplus.com/reference/bitset/bitset/", [`std::bitset`])
- #link("https://cplusplus.com/reference/list/list/", [`std::list`])
- #link("https://cplusplus.com/reference/forward_list/forward_list/", [`std::forward_list`])
=== Add STL Algorithms
The following algorithms will be added
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/lower_bound", [`std::ranges::lower_bound`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/upper_bound", [`std::ranges::upper_bound`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/binary_search", [`std::ranges::binary_search`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/sort", [`std::ranges::sort`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/stable_sort", [`std::ranges::stable_sort`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/max", [`std::ranges::max`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/max_element", [`std::ranges::max_element`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/min", [`std:;ranges::min`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/min_element", [`std::ranges::min_element`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/minmax", [`std::ranges::minmax`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/minmax_element", [`std::ranges::minmax_element`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/clamp", [`std::ranges::clamp`])
- #link("https://en.cppreference.com/w/cpp/algorithm/ranges/equal", [`std::ranges::equal`])

=== Documentation
Currently, `StdVector` and `StdString` are documented. I will document the functionality of the existing containers (`StdValArray`, `StdDeque` and `StdQueue`) and all the new containers that I will be adding.

The algorithms being added will also be documented, along with usage examples for them.

I will also be documenting the implementation steps for exposing more of the standard library to help future contributors.

=== Testing
I will be implementing unit tests for all the containers and algorithms being added.

For integration testing on the #link("https://github.com/JuliaInterop/libcxxwrap-julia", [libcxxwrap.jl]) component, the automated tests currently work for pull requests. I will update the testing solution such that it works outside of pull requests as well.

== Stretch Goals
If time permits, I would like to make general improvements to the core of CxxWrap, and add more STL containers.

=== Add Iterator Support
Many STL algorithms depend upon the use of iterators. For this, an iterator type for containers has to be exposed from the C++ side, so that it can be used to call these algorithms from the Julia side.

=== Add more STL Container Types
These  containers have been introduced in C++ 23
- #link("https://en.cppreference.com/w/cpp/container/flat_set", [`std::flat_set`])
- #link("https://en.cppreference.com/w/cpp/container/flat_multiset", [`std::flat_multiset`])

= Project Details
== Modularize the codebase
= Project Schedule
== Pre-Project Phase
== Project Phase
== Post-Project Phase
== Logistics