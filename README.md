# STL Coverage in CxxWrap.jl

The CxxWrap.jl package acts as a bridge between Julia and compiled C++ code, resulting in developers being able to use the best of both languages. While it already exposed a subset of the C++ standard library to Julia, there was a significant opportunity to expand its capabilities and enhance the interoperability further. The primary objective of this project was to improve the coverage of the C++ Standard Template Library within CxxWrap.jl.

The project took place over the summer of 2024 as part of the Google Summer of Code program.

https://summerofcode.withgoogle.com/programs/2024/projects/FWA99w0a

## Work Product

### New Features

- Added support for `std::set`: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/154) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/434)
- Added support for `std::multiset`: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/155) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/434)
- Added support for `std::unordered_set` and `std::unordered_multiset`: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/159) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/436)
- Added support for `std::priorty_queue`: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/162) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/441)
- Added support for `std::stack`: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/164) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/442)
- Added support for `std::list` and `std::forward_list`: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/167) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/444)
- Added wrappers for iterators for the above containers: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/170) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/448)
- Added support for some common STL algorithms: [libcxxwrap](https://github.com/JuliaInterop/libcxxwrap-julia/pull/171) [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl/pull/449)

### Other work

Other than adding support for new containers and algorithms from the STL, I have also

- Written documentation and tests for all the new features.

- Simplified CI for PRs that involve changes both on the C++ side and the Julia side. Previously, the release procedure involved merging to a test branch, running the tests, and then merging into the main branch, which was not ideal. Now, when creating a PR on CxxWrap.jl, the first line of the description of the PR can refer to the corresponding libcxxwrap branch, and vice versa.

- Refactored `StdLib.jl` in CxxWrap. Previously, due to the limited number of containers supported, all the methods were present in a single file. Now, each container type has its own file.

## Challenges Faced

- Since MacOS has its own version of clang, there was some unexpected behaviour when using newer features. For example, `concepts` were not working as expected at compile time. I was trying to use the `std::totally_ordered` concept to check whether an element can be put inside a set or not. While this was working on Linux (Ubuntu) and Windows, the CI unexpectedly failed on MacOS. Because of this, I had to implement a custom type trait.
- The `<` operator having different behaviour on `C++17` and `C++20` for `std::pair` was a surprisingly hard bug to catch. [PR](https://github.com/JuliaInterop/libcxxwrap-julia/pull/163)

## Further Work

- Look into methods to reduce the compile time of libcxxwrap. Prepare an isolated reproducible test case that blows up compile time to file a bug report against clang.
- Selectively apply parts of the STL functionality, as and when it is needed. Currently, all of the STL is applied to a particular type, even if only a part of the functionality is used.
