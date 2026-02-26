#let print_list(list) = {
    if (list.len() == 1) {
        list.first()
    }
    else if (list.len() == 2) {
        [#list.first() and #list.last()]
    }
    else {
        list.join(", ", last: ", and ")
    }
}

#let education(
  where: none,
  school: none,
  start_date: none,
  end_date: none,
  degree: none,
  major: none,
  gpa: none,
  courses: ()) = box[
    #degree - #major\; GPA: #gpa #h(1fr) #school \
    #start_date - #end_date #h(1fr) #where \
    *Courses*: #print_list(courses)
  ]

#let skill(name: none, elements: ()) = box[
  *#name*: #print_list(elements)
]

#let experience(
  where: none
  , employer: none
  , employment_ranges: ()
  , title: none
  , responsibilities: ()) = box[
    #title #h(1fr) #employer \
    #print_list(employment_ranges.map(range => [#range.start - #range.end])) #h(1fr) #where
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
  , badges: ()
) = {
  let acceptance_rate = calc.round(
    accepted_papers / submitted_papers * 100
    , digits: 2
  )
  box[
        *#name*: by #print_list(authors).
        #conference_or_journal.
        #if submitted_papers != 1 { [Acceptance rate of #acceptance_rate% (#accepted_papers / #submitted_papers).] }
        #link(url).
        #if badges.len() != 0 { [Artifact badges: #print_list(badges).] }
  ]
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
