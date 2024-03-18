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

#set par(leading: 3.5mm)
#outline(
  title: [Table of Contents #linebreak() #linebreak()],
  indent: auto,
)
#set par(leading: 0.65em)
#pagebreak()

= Introduction
== Project Synopsis

The CxxWrap.jl package acts as a bridge between Julia and compiled C++ code, resulting in developers being able to use the best of both languages. While it already exposes a subset of the C++ standard library to Julia, there is a significant opportunity to expand its capabilities and enhance the interoperability further.

The primary objective of this project is to improve the coverage of the C++ Standard Template Library within CxxWrap.jl. The STL is very widely used and provides a rich set of container types, algorithms, and utilities in C++.

== Relevant Work
=== In CxxWrap
I have implemented the interface for the `queue` data structure. I have also come up with and implemented a better testing solution for choosing the right versions of `CxxWrap` and `libcxxwrap`. Here are the relevant pull requests:
- https://github.com/JuliaInterop/CxxWrap.jl/pull/413/
- https://github.com/JuliaInterop/CxxWrap.jl/pull/408/
- https://github.com/JuliaInterop/libcxxwrap-julia/pull/146

=== Outside CxxWrap
I have improved test coverage of some functions in the Julia standard library
- https://github.com/JuliaLang/julia/pull/51835
- https://github.com/JuliaLang/julia/pull/51941

I contribute frequently to `TheAlgorithms/Julia`, which is a collection of algorithms implemented in Julia. Here is a link to all my PRs in this repository.
- https://github.com/TheAlgorithms/Julia/pulls?q=is%3Apr+sort%3Aupdated-desc+author%3APraneethJain+is%3Aclosed

I have built a ray tracer in C++ for my Computer Graphics course
- https://github.com/PraneethJain/simple_renderer
== Technical Skills
=== Languages
Julia $circle.small$ C $circle.small$ C++ $circle.small$ Rust $circle.small$ x86 Assembly $circle.small$ Bash $circle.small$ Python

=== Theory 
Data Structures and Algorithms $circle.small$ Algorithm Analysis and Design $circle.small$ Operating Systems $circle.small$ Computer Systems Organization

=== Tools
Linux $circle.small$ Docker $circle.small$ gdb $circle.small$ Latex

== Bio
=== About
I'm a 2nd year undergraduate student pursuing my B.Tech in Computer Science at IIIT-H, and will be joining a research lab for my honors next semester. I am deeply interested in low level programming and am planning to pursue research in this field.

=== Why choose me

- I am well-versed in both Julia and C++. I have contributed to various open-source organisations in Julia, and have built many personal projects using C++.
- I aim to heavily test and document all the functionality that I will be implementing
- I am familiar with the codebase and have made contributions to this project

I chose this project as it is the perfect way to utilize my skill-set, while learning a lot more at the same time.

== Contact Information
#table(
  columns: (1fr, 2fr),
  inset: 1em,
  [Name], [Moida Praneeth Jain],
  [College], [International Institute of Information Technology, Hyderabad, India],
  [Degree Program], [B.Tech in Computer Science],
  [Time Zone], [GMT +5:30],
  [Links], [#link("https://github.com/PraneethJain/", [Github]) - #link("https://www.linkedin.com/in/praneeth-jain/", [Linkedin])],
  [Emails], [#link("mailto:praneethjain005@gmail.com") #link("mailto:moida.praneeth@students.iiit.ac.in")],
  [Phone Number], [+91 6264381767],
)

= Benefits to Community

The successful completion of this project will greatly benefit scientific computing researchers, systems programmers, low-level developers and  open-source contributors. By integrating high-performance C++ data structures and algorithms with Julia's scientific computing capabilities, these groups will gain access to a larger set of tools for tackling computationally and algorithmically intensive problems.

= Deliverables
== Primary Goals
I aim to implement these goals during the course of GSoC this year.
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

=== Documentation
Currently, `StdVector` and `StdString` are documented. I will document the functionality of the existing containers (`StdValArray`, `StdDeque` and `StdQueue`) and all the new containers that I will be adding.

The algorithms being added will also be documented, along with usage examples for them.

I will also be documenting the implementation steps for exposing more of the standard library to help future contributors.

=== Testing
I will be implementing unit tests for all the containers and algorithms being added.

For integration testing on the #link("https://github.com/JuliaInterop/libcxxwrap-julia", [libcxxwrap.jl]) component, the automated tests currently work for pull requests. I will update the testing solution such that it works outside of pull requests as well.

== Stretch Goals
If time permits, I would like to make general improvements to the core of CxxWrap, and add more STL containers. Otherwise, I will be implementing these after the completion of GSoC. 

=== Add Iterator Support
Many STL algorithms depend upon the use of iterators. For this, an iterator type for containers has to be exposed from the C++ side, so that it can be used to call these algorithms from the Julia side.

=== Add more STL Container Types
These  containers have been introduced in C++ 23
- #link("https://en.cppreference.com/w/cpp/container/flat_set", [`std::flat_set`])
- #link("https://en.cppreference.com/w/cpp/container/flat_multiset", [`std::flat_multiset`])

= Project Details
== Codebase
Currently, the standard library interface is implemented in a single file `StdLib.jl`. Since I will be adding many containers and algorithms, my first step will be modularizing the codebase. I will be splitting it into folders for containers and algorithms respectively, with appropriate files for each of them.
== STL Containers
https://en.cppreference.com/w/cpp/container

I will be going over my plan for implementing STL containers using the example of `std::queue`

To implement the containers listed, I will be taking a two-step approach
=== libcxxwrap component
The functionalities to be exposed need to be wrapped in a struct on the C++ side.

For the case of `std::queue`, I have exposed the `front`, `push`, `pop` and `size` functionalities.
```cpp
template<typename T>
struct WrapQueueImpl
{
  template<typename TypeWrapperT>
  static void wrap(TypeWrapperT&& wrapped)
  {
    using WrappedT = std::queue<T>;
    
    wrapped.module().set_override_module(StlWrappers::instance().module());
    wrapped.method("cppsize", &WrappedT::size);
    wrapped.method("push_back!", [] (WrappedT& v, const T& val) { v.push(val); });
    wrapped.method("front", [] (WrappedT& v) -> const T { return v.front(); });
    wrapped.method("pop_front!", [] (WrappedT& v) { v.pop(); });
    wrapped.module().unset_override_module();
  }
};
```
=== CxxWrap component
The exposed functions need to mapped to the appropriate methods on the Julia interface.
```jl
Base.size(v::StdQueue) = (Int(cppsize(v)),)
Base.push!(v::StdQueue, x) = push_back!(v, x)
Base.first(v::StdQueue) = front(v)
Base.pop!(v::StdQueue) = pop_front!(v)
```

== STL Algorithms
https://en.cppreference.com/w/cpp/algorithm/ranges

I will implement STL algorithm interfaces as constrained algorithms (introduced in C++ 20) using `std::ranges` on the C++ side. I have chosen to do so because these abstract away iterators, and allow for passing the containers directly. This leads to a much cleaner implementation on the Julia side.

Since it is hard to cover all the STL algorithms, I have chosen the ones that are most frequently used.
= Project Schedule
The proposed schedule has been made keeping in mind the #link("https://developers.google.com/open-source/gsoc/timeline", [GSoC timeline]).

At the end of both the coding periods, I have allocated a buffer week. This will be used in case the project would be behind schedule due to unforeseen circumstances. In case the project is on time, the buffer weeks would be used to implement the stretch goals.
== Community Bonding Period
_May 1 - May 26_: During this period, I aim to
- Decide and set up a weekly status update method with the mentor
- Further familiarize myself with the codebase
- Add more tests for the existing code
- Update the testing method in `libcxxwrap` to work outside of PRs as well
== First Coding Period
In the first phase, I will be working on the STL containers, their interfaces, documentation and testing. I plan on writing the tests and documentation along with the actual implementations, rather than pushing them towards the end.

_May 27 - June 2_: `stack` and `priority_queue`

_June 3 - June 9_: `set` and `multiset`

_June 10 - June 16_: `unordered_set` and `unordered_multiset`

_June 17 - June 23_: `list` and `forward_list`

_June 24 - June 30_: `bitset`

_July 1 - July 7_: Buffer week

== Midterm Evaluation
_July 8 - July 12_: Write the mid report and further polish the documentation and tests. Since at this point I will know how the code structure would be, it will be a good time to refactor the code.
== Second Coding Period
In the second phase, I will be working on STL algorithms, along with their documentation and testing.

_July 15 - July 21_: `max`, `max_element`, `min`, `min_element`

_July 22 - July 28_: `minmax`, `minmax_element`, `clamp`

_July 29 - August 4_: `sort`, `stable_sort`

_August 5 - August 11_: `lower_bound`, `upper_bound`, `binary_search`

_August 12 - August 18_: Buffer week
== Final Submission
_August 19 - August 26_: Write the final report and document the process for future contributors

== Availability
I have my summer vacation from $10^"th"$ May to $1^"st"$ August, and don't have other commitments over this time period. I will be giving $approx$ 30 hours per week to this project in this time period, and plan to get the majority of the project done here.

For the remainder of the time period, ($2^"nd"$ August to $26^"th"$ August), my college will resume and I will be able to give $approx$ 15 hours per week.

If something does come up that clashes with the timeline, it will be informed in a timely manner and I will ensure that the working hours won't be affected.