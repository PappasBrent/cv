#let education(
  where: none,
  school: none,
  start_date: none,
  end_date: none,
  degree: none,
  major: none,
  gpa: none,
  courses: ()) = box[
    #where #h(1fr) #school \
    #start_date - #end_date #h(1fr) #degree - #major\; GPA: #gpa \
    *Courses*: #courses.join(", ", last: ", and ")
  ]


#let skill(name: none, elements: ()) = box[
  *#name*: #elements.join(", ", last: ", and ")
]

#let experience(
  where: none
  , employer: none
  , employment_ranges: ()
  , title: none
  , responsibilities: ()) = box[
    #where #h(1fr) #employer \
    #employment_ranges.map(range => [#range.start - #range.end]).join(", ", last: ", and ") #h(1fr) #title
    #list(..responsibilities.map(r => [*#r.name*: #r.body]))
  ]


#let project(name: none, body: none) = box[*#name*: #body]

#let publication(
  name: none
  , authors: ()
  , conference_or_journal: none
  , year: none
  , accepted_papers: 1
  , submitted_papers: 1
  , url: ""
) = {
  let acceptance_rate = calc.round(
    accepted_papers / submitted_papers * 100
    , digits: 2
  )
  if submitted_papers != 1 {
    box[*#name*: by #authors.join(", ", last: ", and "). #conference_or_journal. Acceptance rate of #acceptance_rate% (#accepted_papers / #submitted_papers). #link(url).]
  } else {
    box[*#name*: by #authors.join(", ", last: ", and "). #conference_or_journal. #link(url).]
  }
}

#let presentation(
  name: none
  , description: none
  , date: none
  , url: none
  , url_text: none
) = box[*#name*: #description #date. #link(url)[#url_text].]

#let poster(name: none, body: none) = box[*#name*: #body]

#let award(name: none, date: none, body: none) = box[*#name (#date)*: #body] 

#let certification(body: none) = box[#body]

#let workshop(name: none, where: none, date: none) = box[
  *#name* #h(1fr) #where - #date
]

#let volunteering(
  name: none
  , where: none
  , date: none
  , responsibilities: ()) = box[
    *#name* #h(1fr) #where - #date
    #list(..responsibilities.map(r => [*#r.name*: #r.body]))
]
