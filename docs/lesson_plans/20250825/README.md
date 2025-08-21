# Lesson plan

- Date: 2025-08-25
- [Lesson plan](../../lesson_plans/20250825/README.md)
- [Evaluation](../../evaluations/20250825/README.md)
- [Reflection](../../reflections/20250825/README.md)

## Preparation

- [?] Extra whiteboard pencils
- [?] Extra whiteboard eraser
- [?] Extra electricity outlets and extension cords
- [?] Speaker for announcing breaks
- [?] Extra coffee cups, milk, sugar?
- [?] Extra laptops?

## 2025-08-18

Changes:

- Use Pelle instead of Rackham
- The event will take place IRL

Procedure to migrate to Pelle:

- Update all course material pages.
  If there is an UPPMAX doc page change needed, do so

Procedure to prepare for IRL teaching:

- Re-read that part of the literature again
  and write down my rules

## 2025-08-19

Change of plan:

I have only one week to find out all the quirks in Pelle.
My teaching depends on this.
I have no idea why the choice was made to use Pelle, instead
of Rackham.
If the intro course fails due to Pelle not being ready,
it was not my choice to use Pelle.

First, check if all technology works and report things that are missing:

Page                        |Status
----------------------------|-----------------------------------------------------------------------------
Prerequisites               |Works
Course dates                |Works
Schedule                    |Works
Login                       |Works
Login to remote desktop     |Website `https://pelle-gui.uppmax.uu.se` fails, ThinLinc works
Use the remote desktop      |Works
File transfer with FileZilla|Works
Login console               |`xeyes` absent, use `eog` instead anyways
Use terminal                |Works
Module system               |Works
Creating a bash script      |Works
Scheduler                   |Works
Interactive jobs            |Works

Great, this seems to work! I've reported the two defects
and I can live without them.

Next steps:

- Prepare IRL teaching
- Fix UPPMAX docs
- Add UPPMAX docs videos
- Fix this courses' docs
- Add videos to this courses' docs

### IRL teaching

My considerations:

- Add quizzes
- Split tables in groups based on operating system

Let's start reading the literature.

I will start from `[Bell, 2020]`...
Nope, this has no classroom management in it ...

Let's try `[Schwartz & Gurung, 2012]`..
Chapter 2: Building rapport in the classroom:
- Consider adding I will touch on the shoulder to help the learner
  draw his/her attention to me.

An overview what makes a good first day, adapted from `[Perlman & McCann, 1999]` (n = 570 students):

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Category                                                                                |Yes (`%`)|No (`%`)
----------------------------------------------------------------------------------------|---------|--------
General overview, syllabus, course nature and content, requirements, expectations       |68       |16
Teacher specifically describes exams, assignments, and grading                          |26       |1
Introduces self (background, teaching style) to students                                |18       |4
First day content is put in context and understandable without having read an assignment|8        |0
Describes why students should take the course and how they may profit from it           |7        |0
Sets tone of being accessible, supportive                                               |7        |0
Icebreakers (getting to know classmates)                                                |7        |9
Sets relaxed, comfortable tone                                                          |5        |0
Sets a fun tone                                                                         |4        |0
Teacher late or absent                                                                  |0        |2
Seating chart                                                                           |0        |3
Instructor uncaring, intimidating                                                       |0        |7
Homework assignment                                                                     |0        |9
Meet full hour                                                                          |6        |13
Poor teaching (instructor nervous, monotone, talks too fast, too much material)         |0        |15
Beginning course content (lecture, etc.)                                                |1        |29
Poor use of class time (e.g., noncrucial information, read syllabus, unorganized)       |0        |31

<!-- markdownlint-enable MD013 -->

Another overview what makes a good first day, adapted from `[Eskine et al., 2017]` (n = 230 students):

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Category                                                                                |Yes (`%`)|No (`%`)
----------------------------------------------------------------------------------------|---------|--------
General overview, syllabus, course nature and content, requirements, expectations       |69.1     |0
Teacher specifically describes exams, assignments, and grading                          |24.3     |0
Introduces self (background, teaching style) to students                                |23.9     |0.9
Sets a fun tone                                                                         |9.1      |0
Sets tone of being accessible, supportive                                               |5.6      |0
Sets relaxed, comfortable tone                                                          |3.0      |0
First day content is put in context and understandable without having read an assignment|1        |0.5
Meet full hour                                                                          |0        |0
Describes why students should take the course and how they may profit from it           |0        |0
Seating Chart                                                                           |0        |0
Teacher late or absent                                                                  |0        |0
Homework assignment                                                                     |0        |8.6
Poor teaching (instructor nervous, monotone, talks too fast, too much material)         |0        |9.1
Icebreakers                                                                             |5.6      |15
Instructor uncaring, intimidating                                                       |0        |17.8
Beginning course content (lectures)                                                     |2.1      |23
Poor use of class time (non-crucial information, read syllabus, unorganized)            |0        |35.2

<!-- markdownlint-enable MD013 -->

Now read `[Hattie, 2023]`...
'Chapter 8: Classroom effects'
I use an effect size of above 0.4 as relevant:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Effect size|Intervention                                         |Notes
-----------|-----------------------------------------------------|-------------------
0.82       |Decreasing disruptive behavior                       |.
0.66       |Classroom cohesion                                   |Working on a task together
0.62       |Teacher-student relationships                        |.
0.52       |Mainstreaming - detracking special education students|Done automatically
0.46       |Small group learning                                 |Will do
0.46       |Belonging                                            |.
0.45       |Relative age in class                                |Cannot be changed
0.44       |ADHD treatment not (!) using drugs                   |Does not apply
0.43       |Classroom management                                 |Mostly: be mindful and thank students for helping

<!-- markdownlint-enable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

From `[Hattie, 2012]`:
this is a bit too general to be used here.

Checking the other books in my room, I will check online.

I found `[Smith & Baik, 2021]`, a good overview of evidence-based
best practices in general, with nothing/little about classroom-only teaching.

I found `[Eddy et al, 2015]`, about a rubric called 'PORTAAL'
to asses evidence-based teacher practices:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Number |Dimension                                                                               |How element is observed in the classroom
-------|----------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
P1     |Frequent practice                                                                       |Minutes any student has the possibility of talking through content in class
P2     |Alignment of practice and assessment                                                    |In-class practice questions at same cognitive skills level as course assessments (requires access to exams)
P3     |Distributed practice                                                                    |Percent of activities in which instructor reminds students to use prior knowledge
P4     |Immediate feedback                                                                      |Percent of activities in which instructor hears student logic and has an opportunity to respond
L1     |Opportunities to practice higher-order skills in class                                  |Percent of activities that require students to use higher-order cognitive skills
L2     |Prompt student to explain/defend their answers                                          |Percent of activities in which students are reminded to use logic
L3     |Allow students time to think before they discuss answers                                |Percent of activities in which students are explicitly given time to think alone before having to talk in groups or in front of class
L4     |Students explain their answers to their peers                                           |Percent of activities in which students work in small groups during student engagement
L5     |Students solve problems without hints                                                   |Percent of activities in which answer is not hinted at between iterations of student engagement.
L6     |Students hear students describing their logic                                           |Percent of activities in which students share their logic in front of the whole class
L7     |Logic behind correct answer explained                                                   |Percent of activities in which correct answer is explained
L8     |Logic behind why incorrect or partially incorrect answers are explained                 |Percent of activities in which alternative answers are discussed during debrief
A1     |Activities worth course points                                                          |Percent activities worth course points (may require a syllabus or other student data source)
A2     |Activities involve small-group work, so more students have opportunity to participate   |Percent activities in which students work in small groups
A3     |Avoid volunteer bias by using cold call or random call                                  |Percent activities in which cold or random call used
R1     |Give students practice participating by enforcing participation through cold/random call|Percent activities with random or cold-calling used during student engagement or debrief
R2     |Student confirmation: provide praise to whole class for their work                      |Percent debriefs and engagements in which class received explicit positive feedback and/or encouragement
R3     |Student confirmation: provide praise/encouragement to individual students               |Percent student responses with explicit positive feedback and/or encouragement
R4     |Student confirmation: do not belittle/insult student responses                          |Percent student responses that do not receive negative feedback
R5     |Error framing: emphasize errors natural/instructional                                   |Percent activities in which instructor reminds students that errors are nothing to be afraid of during introduction or student engagement periods
R6     |Emphasize hard work over ability                                                        |Percent activities in which instructor explicitly praises student effort or improvement

<!-- markdownlint-enable MD013 -->

I decide to conclude the literature review for now, as I feel this has
enough info for now.

Back to my considerations:

- Add quizzes: maybe, if time
- Split tables in groups based on operating system: yes

There are now 5 registered participants, so there is plenty of space in the
room. I feel this would be a fine arrangement:

```text
  Linux      Windows     Mac

 +--+--+    +--+--+    +--+--+
<|  |  |>  <|  |  |>  <|  |  |>
<|  |  |>  <|  |  |>  <|  |  |>
 +--+--+    +--+--+    +--+--+

            +------+
            |  me  |
            +------+
              V  V
```

Let's settle for this for now.

I assume there is a whiteboard, this is how it should look like at the start:

```text
+-------------+-------------------------------------+-------------+
|[Schedule]   |                                     | Richel      |
|[with breaks]| Goal of this course                 | 'rea-shell' |
|             | Me, Teaching style and expectations |             |
|             | Schedule and practical matters      | [UPPMAX ]   |
|             | Other practical matters             | [project]   |
|             | Questions?                          |             |
|             |                                     |             |
+-------------+-------------------------------------+-------------+
```

Ah, the course has been cancelled, I will update info...


## References

<!-- markdownlint-disable MD013 --><!-- Keep references to 1-lines for easy copy-paste, hence will break 80 characters per line -->

- `[Leg & Wilson, 2013][RETRACTED]` Legg, Angela M., and Janie H. Wilson. "Instructor touch enhanced college students’ evaluations." Social Psychology of Education 16.2 (2013): 317-327.

- `[Bell, 2020]` Bell, Mike. The fundamentals of teaching: A five-step model to put the research evidence into practice. Routledge, 2020.

- `[Schwartz & Gurung, 2012]`Schwartz, Beth M., and Regan AR Gurung. Evidence-based teaching for higher education. American Psychological Association, 2012.

- `[Perlman & McCann, 1999]` Perlman, Baron, and Lee I. McCann. "Student perspectives on the first day of class." Teaching of Psychology (1999).

- `[Eskine et al., 2017]` Eskine, Katherine E., et al. "Students’ perspectives on the first day of class: A replication." International Journal for the Scholarship of Teaching and Learning 11.1 (2017): 5.

- `[Hattie, 2023]` Hattie, John. Visible learning: The sequel: A synthesis of over 2,100 meta-analyses relating to achievement. Routledge, 2023.

- `[Hattie, 2012]` Hattie, John. Visible learning for teachers: Maximizing impact on learning. Routledge, 2012.

- `[Smith & Baik, 2021]` Smith, Calvin D., and Chi Baik. "High-impact teaching practices in higher education: a best evidence review." Studies in Higher Education 46.8 (2021): 1696-1713.

- `[Eddy et al, 2015]`
  Eddy, Sarah L., Mercedes Converse, and Mary Pat Wenderoth.
  "PORTAAL: A classroom observation tool assessing evidence-based teaching
  practices for active learning in large science, technology, engineering,
  and mathematics classes." CBE—Life Sciences Education 14.2 (2015): ar23.

<!-- markdownlint-enable MD013 -->
