#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Saheed Adeleye"
#let location = "Lagos, Nigeria"
#let email = "dev.gyre@gmail.com"
#let github = "github.com/gyreas"
#let srht = "git.sr.ht/~gyreas"
#let linkedin = "linkedin.com/in/aadesaed"
#let phone = "+234 (815) 278-6158"
#let personal-site = "gyreas.github.io"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "Federal University of Technology, Akure",
  location: "Akure, Ondo State, Nigeria",
  dates: dates-helper(start-date: "Sep 2020", end-date: "May 2026"),
  degree: "Bachelor of Technology, Computer Science",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true
)
- Cumulative GPA: 4.4\/5.0
- Relevant Coursework: Data Structures, Algorithm Design, Program Development, Operating Systems, Network Programming, Microprocessors, Linear Algebra, Discrete Mathematics

== Technical Experience

#work(
  title: "Contributor",
  location: "github.com/casey/just",
  company: "just",
  dates: dates-helper(start-date: "May 2024", end-date: "May 2024"),
)
- Ported some `make` functions to `just`: `prepend()`, `append()`, `shell()`

== Projects

#project(
  name: "sar",
  role: "Maintainer",
  dates: dates-helper(start-date: "April 2024", end-date: "Present"),
  url: srht + "/sar"
)
- Maintain a CLI utility in C to practice network programming
- Still have to wire it with a GUI of sorts, thinking of using system dialog apps

#project(
  name: "balloon",
  role: "Maintainer",
  dates: dates-helper(start-date: "April 2025", end-date: "Present"),
  url: github + "/balloon",
)
- Designing and developing a cross-platform system search and indexing tool in Flutter
- Implements file scanning, index building, and real-time search
- Inspired by Spotlight (macOS), focusing on simplicity and performance

#project(
  name: "mu8",
  role: "Developer",
  dates: dates-helper(start-date: "2023", end-date: "Present"),
  url: github + "/mu8",
)
- Working on a Chip-8 emulator in Go that renders to the terminal

#project(
  name: "purrcat",
  role: "Maintainer",
  dates: dates-helper(start-date: "2023", end-date: "Present"),
  url: github + "/purrcat",
)
- A Java implementation of Unix `cat` command.
- It's a toy program to improve my familiarity with the Java ecosystem.

#project(
  name: "threaded-word-freq-counter",
  role: "Developer",
  dates: dates-helper(start-date: "2023", end-date: "Present"),
  url: github + "/threaded-word-freq-counter",
)
- Implemented a multithreaded word frequency counter in C to explore concurrency and performance optimization.
- Found it in Modern Operating Systems by authors Andrew S. Tanenbaum and Herbert Bos, chapter 2, question 59.

#project(
  name: "AoC",
  role: "Participant",
  dates: dates-helper(start-date: "2023", end-date: "Present"),
  url: github + "/AoC",
)
- Solved a small subset Advent of Code 2023 challenges using OCaml, for funzies.

== Extracurricular Activities

#extracurriculars(
  activity: "Beginner Local Guide",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
)
- Member of Google Local Guide at Level 2
- I visit and take photos of places in my locality or places in the city I've always wanted to visit
- These photos are uploaded to my Google Maps account

// #certificates(
//   name: "",
//   issuer: "",
//   // url: "",
//   date: "",
// )

== Skills
- *Programming Languages*: C/C++, Go, Python, Dart, Java, Bash, Ruby
- *Technologies*: Git, UNIX, Flutter, GitHub, CLI/terminals
