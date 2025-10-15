#import "functions.typ": *

#set page(
  paper: "us-letter",
  margin: 0.5in
)

#set text(size: 10pt)

#show link: underline

#show heading: it => block[
  #smallcaps(it)
  #v(-0.8em)
  #line(length: 100%, stroke: 2pt)
]

#text(size: 24pt)[*Brent Pappas*]

Email: pappasbrent at gmail dot com \
Portfolio: #link("https://www.pappasbrent.com") \
GitHub: #link("https://www.github.com/PappasBrent")

= Education

#education(
  where: "Orlando, Florida"
  , school: "University of Central Florida (UCF)"
  , start_date: "August 2017"
  , end_date: "May 2021"
  , degree: "Bachelor of Science"
  , major: "Computer Science"
  , gpa: 3.849
  , courses: ("Data structures and algorithms"
              , "Systems software"
              , "Programming languages"
              , "Discrete structures")
)

#education(
  where: "Orlando, Florida"
  , school: "UCF"
  , start_date: "August 2021"
  , end_date: "Present"
  , degree: "PhD"
  , major: "Computer Science"
  , gpa: 3.983
  , courses: ("Analysis of Algorithms"
              , "Complexity Theory"
              , "Computer Architecture"
              , "Compiler Construction")
)

= Skills Summary
#skill(name: "Languages", elements: ("Python3", "C/C++", "Bash", "HTML/CSS/JavaScript")) \
#skill(name: "Tools", elements: ("Git", "GitHub", "LLVM/Clang")) \
#skill(name: "Platforms", elements: ("Linux", "Web", "Windows")) \
#skill(name: "Soft Skills", elements: ("Leadership", "Writing", "Communication",
                                       "Time management")) \

= Experience

#experience(
  where: "Orlando, Florida"
  , employer: "UCF"
  , employment_ranges: ((start: "August 2023", end: "April 2024"),)
  , title: "Graduate Teaching Assistant"
  , responsibilities: (
    (
      name: "Teaching"
      , body: "Led weekly labs on the Linux command line, the Linux C programming interface, git, make, and compiler design with ANTLR"
    )
    , (
      name: "Exam Proctoring"
      , body: "Answered student questions during exams and monitored students to prevent cheating."
    )
    , (
    name: "Performance Evaluations"
    , body: [#link("https://docs.google.com/spreadsheets/d/1EjWH-YXkb-_Eu4IdX0wat7OVKp5OswKjpEf29zrua80/edit?usp=sharing")[Link]]
    )
  )
)

#experience(
  where: "Remote"
  , employer: "Trail of Bits"
  , employment_ranges: (
    (start: "May 2023", end: "August 2023")
    , (start: "December 2023", end: "January 2024")
  )
  , title: "Intern"
  , responsibilities: (
    (
      name: "C Language Toolsmithing"
      , body: "Created Macroni, a C static analysis tool that combines Trail of Bits’ tools PASTA and VAST to lower C preprocessor macros down to MLIR. Macroni is available at https://github.com/trailofbits/macroni."
    )
    , (
      name: "Peer-reviewed Development"
      , body: "Leveraged GitHub to push changes to company repos, submit code for code review, and finally merge changes into mainline branches."
    )
    , (
      name: "Research Discussion"
      , body: "Exhibited research results and Macroni to team members and company CEO, Dan Guido, for advice and criticism."
    )
  )
)

#experience(
  where: "Orlando, Florida"
  , employer: "UCF"
  , employment_ranges: (
    (start: "July 2021", end: "July 2023")
    , (start: "May 2025", end: "Present")
  )
  , title: "Graduate Research Assistant"
  , responsibilities: (
    (
      name: "Programming Language Research"
      , body: "Stay up-to-date on the latest academic developments in programming languages."
    )
    , (
      name: "Software Engineering"
      , body: "Implement research ideas in languages such as C++."
    )
    , (
      name: "Conduct Experiments"
      , body: "Write Python and Bash scripts to automate running experiments."
    )
  )
)

#experience(
  where: "Orlando, Florida"
  , employer: "SP+"
  , employment_ranges: (
    (start: "September 2019", end: "July 2021")
    ,
  )
  , title: "Quality Assurance Coordinator"
  , responsibilities: (
    (
      name: "Agile Software Development"
      , body: "Engaged in agile software development methods within a small team to QA test software before moving on to later phases of development."
    )
    , (
      name: "Testing Automation"
      , body: "Refactored and wrote Python scripts to automate testing of various online user applications."
    )
    , (
      name: "Mobile Application Development"
      , body: "Tested company Android apps for compatibility with various versions of Android."
    )
  )
)


#experience(
  where: "Orlando, Florida"
  , employer: "UCF Student Academic Resource Center"
  , employment_ranges: (
    (start: "August 2018", end: "December 2019")
    ,
  )
  , title: "Peer Mentor"
  , responsibilities: (
    (
      name: "Led Tutoring Sessions"
      , body: "Led Computer Science 1 and Object Oriented Programming tutoring sessions involving Socratic learning methods."
    )
    , (
      name: "Faculty Collaboration"
      , body: "Collaborated with UCF teaching staff to enhance tutoring session quality."
    )
    , (
      name: "Tutor Mentoring"
      , body: " Observed other tutors’ sessions and provided feedback as to how they may improve their communication and tutoring skills."
    )
  )
)

= Projects

#project(name: "Macroni", body: "A C static analysis tool that combines Trail of Bits’ tools PASTA and VAST to lower C preprocessor macros down to MLIR. Macroni is available at https://github.com/trailofbits/macroni.")

#project(name: "Maki", body: " C++ Clang plugin that analyzes hows C preprocessor macros affect the C AST. Maki provides language porting tools information they can use to port macros to target languages in a way that preserves not just macro behavior, but also macro abstractions. Maki is the tool associated with 2024 ICSE paper, Semantic Analysis of Macro Usage for Portability, for which I am the lead-author.")

= Publications

#publication(
  name: "Semantic Anaysis of Macro Usage for Portability"
  , authors: ("Brent Pappas", "Paul Gazzillo")
  , conference_or_journal: "International Conference on Software Engineering (ICSE)"
  , year: 2024
  , accepted_papers: 234
  , submitted_papers: 1051
  , url: "https://dl.acm.org/doi/10.1145/3597503.3623323"
)

#publication(
  name: "Holy Macroni! A recipe for progressive language enhancement"
  , authors: ("Brent Pappas", )
  , conference_or_journal: "Blog post written for Trail of Bits"
  , year: 2023
  , url: "https://blog.trailofbits.com/2023/09/11/holy-macroni-a-recipe-for-progressive-language-enhancement/"
)

#publication(
  name: "SugarC: Scalable Desugaring of Real-World Preprocessor Usage into Pure C"
  , authors: ("Zach Patterson", "Zenong Zhang", "Brent Pappas", "Shiyi Wei", "Paul Gazzillo")
  , conference_or_journal: "ICSE"
  , year: 2022
  , accepted_papers: 197
  , submitted_papers: 691
  , url: "https://dl.acm.org/doi/10.1145/3510003.3512763"
)

= Presentations

#presentation(
  name: "Invited Talk - The PhD Life"
  , description: "Guest lecture on graduate student life presented to Dr. Suzanne Rivoire’s undergraduate course, Computing Professions, at Sonoma State University."
  , date: "2025-05-08"
  , url: "https://docs.google.com/presentation/d/1bzOUo4KNtD9nto1ynTbz5cZo12AiLo_7EIrrJX-tico/edit"
  , url_text: "Slides link"
)

#presentation(
  name: "Semantic Analysis of Macro Usage for Portability (ICSE 2024)"
  , description: "Presentation at the 2024 International Conference on Software Engineering in Lisbon, Portugal."
  , date: "2024-04-17"
  , url: "https://www.youtube.com/watch?v=OU7kh0YX-Kk"
  , url_text: "Recording link"
)

#presentation(
  name: "Semantic Analysis of Macro Usage for Portability (CAE-R)"
  , description: "Virtual presentation for Center of Academic Excellence in
Cyber Research (CAE-R). "
  , date: "2023-08-31"
  , url: "https://drive.google.com/file/d/1xCd34w54hs1iyaoXHz0MUkwlH-fP3HLo/view"
  , url_text: "Recording link; jump to 25:58"
)

= Posters

#poster(
  name: "Cpp2C: Transforming C Preprocessor Macros to C Language Constructs"
  , body: "2022 University of Central Florida Student Scholar Symposium." 
)

#poster(
  name: "Holy Macroni! Finding Macro Usage Errors in the Linux Kernel"
  , body: "2024 International Symposium on Secure and Private Execution Environment Design." 
)

= Honors and Awards

#award(
  name: "UCF 3MT Finalist"
  , date: 2024
  , body: "For effectively communicating my research to a non-specialist audience in a 3 minute talk."
)

#award(
  name: "Distinguished artifact reviewer"
  , date: 2024
  , body: [For my attention to detail while reviewing artifacts for OOPLSA 2024. #link("https://2024.splashcon.org/track/splash-2024-oopsla-artifacts#distinguished-artifact-reviewers")[Link].]
)

#award(
  name: "FCI Student Scholarship"
  , date: 2024
  , body: "For my interest in interdisciplinary research, scholarship, and collaboration."
)

#award(
  name: "Cum laude honors (2021)"
  , date: 2021
  , body: "For having a cumulative undergraduate GPA greater than 3.8."
)

#award(
  name: "Deans’ list"
  , date: "2017-2021"
  , body: "For continued undergraduate scholastic achievement."
)

#award(
  name: "Burnett Honors Scholar"
  , date: 2017
  , body: "For academic talent, motivation, intellectual curiosity and creativity."
)

#award(
  name: "Provost Scholarship"
  , date: 2017
  , body: "For outstanding academic performance in high school."
)

= Certifications

#certification(body: link("www.pappasbrent.com/assets/pdf/preparing_tomorrows_faculty_certificate_brent_pappas.pdf")[Completed higher education training, Preparing Tomorrow's Faculty])

#certification(body: link("https://drive.google.com/file/d/1idZ5hhQQF4f-ZRQCBUplQTGU9YjS7fUs/view")[Level 2 College Readiness and Learning Assessment (CRLA) certified tutor.])

#certification(body: "UCF Student Enhancement Training (SET) program certified.")

= Workshops

#workshop(name: "2025 CRA-E Career Landscape Workshop", where: "Virtual", date: "May, 2025")

#workshop(name: "Programming Language Mentoring Workshop (PLMW)", where: "San Diego, California", date: "June 13-14, 2022")

= Volunteering

#volunteering(
  name: "UCF \"Surviving Graduate School\" Panelist"
  , where: "Orlando, Florida"
  , date: "August 2025"
  , responsibilities: (
    (
      name: "Community engagement"
    , body: "Taught prospective graduate students how to become active in the UCF community and obtain financial support from UCF for travel."
    ),
    (
      name: "Finance tips"
    , body: "Explained how to obtain financial support from UCF for research-related travel."
    ),
  )
)

#volunteering(
  name: "UCF GradLaunch PhD Panelist"
  , where: "Orlando, Florida"
  , date: "August 2025"
  , responsibilities: (
    (
      name: "Advising"
    , body: "Instructed new graduate students how to manage their time and organize their day in order to be productive researchers."
    ),
  )
)

#volunteering(
  name: "UCF Graduate School Info Session PhD Student Panel"
  , where: "Orlando, Florida"
  , date: "May 2025"
  , responsibilities: (
    (
      name: "Advising"
    , body: "Answered undergraduate students’ questions about UCF’s Computer Science PhD program."
    ),
  )
)

#volunteering(
  name: "OOPLSA 2024 Artifact Evaluation Committee Member"
  , where: "Virtual"
  , date: "January-February, July-August, 2024"
  , responsibilities: (
    (
      name: "Artifact Review"
    , body: "Reviewed code artifacts associated with papers accepted to OOPLSA 2024. Distinguished reviewer."
    ),
  )
)

#volunteering(
  name: "NAC - NAPC Volunteer"
  , where: "Orlando, Florida"
  , date: "May 2024"
  , responsibilities: (
    (
      name: "Competition Setup"
    , body: "Moved computers and cables to the competition room for the 2024 North American Championship and Programming Camp (NAC-NAPC), hosted at UCF."
    ),
  )
)

#volunteering(
  name: "EuroSys 2023 Shadow Program Committee Member"
  , where: "Virtual"
  , date: "November-December 2022"
  , responsibilities: (
    (
      name: "Paper Review"
    , body: "Reviewed real paper submissions to EuroSys 2023."
    ),
  )
)

#volunteering(
  name: "Camp Connect"
  , where: "Orlando, Florida"
  , date: "June 2021, June 2023, June 2025"
  , responsibilities: (
    (
      name: "Computer Programming Lessons"
    , body: "Taught elementary, middle, and high school students the basics of computer programming in JavaScript."
    )
    , (
      name: " Human Computer Interaction Lessons"
    , body: "Gave elementary, middle, and high school students hands-on training with a variety of biometric equipment, including respiration belts, EDA and ECG sensors, fNIRS headbands, and eye-tracking sensors."
    ),
  )
)

#volunteering(
  name: "UCF CECS Senior Design Judge"
  , where: "Orlando, Florida"
  , date: "April 2024"
  , responsibilities: (
    (
      name: "Judging"
    , body: "Followed a given rubric to judge the quality of capstone projects for seniors of the College of Engineering and Computer Science. Criteria included presentation quality, project design quality, and creativity."
    ),
  )
)

#volunteering(
  name: "UCF CECS Career Kickoff Alumni Mentor"
  , where: "Virtual"
  , date: "October 2022"
  , responsibilities: (
    (
      name: "Mentoring"
    , body: "Advised UCF freshmen on goal-setting, resume-building, and overall professionalism."
    )
    , (
      name: "Job Application Prep"
    , body: "Conducted mock interview with UCF freshmen and provided tips on how to effectively search for jobs in their field."
    ),
  )
)
