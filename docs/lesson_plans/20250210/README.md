# Lesson plan 2025-02-10

## Changes needed

Until January 31st, there were no changes requested for this course.
Let's take a look at [../../reflections/20240827/README.md).

- Expected number of learners: 17
- Use group size of 3
- The FileZilla session was weakest,
  with an average confidence of 4 out of 5

At January 31st, my colleague reached out and in the end I decided to
[discuss `backup` and `nobackup`](https://github.com/UPPMAX/uppmax_intro_day_1/issues/8)
in the course.

## Course material

Taking a look at the FileZilla session,
what can be improved in the lesson material:

- [x] [Add a video to do so, to the UPPMAX docs](https://github.com/UPPMAX/uppmax_intro_day_1/issues/6)
  at [here](https://youtu.be/-j4S3iC4jiY)
  and posted [at the UPPMAX doc](https://docs.uppmax.uu.se/software/rackham_file_transfer_using_filezilla/)
    - [x] There already was a video ...? How can I have missed that?
      I assume I added this video halfway between 'Intro to UPPMAX day 1'
      course iterations.

I do miss a FAQ in this course

- [x] Add FAQ, copy from 'Intro to Python's

The answers of [using the remote desktop](../../sessions/use_remote_desktop.md),
exercise 2 should be added. Dull, but it annoys me that this is incomplete.

- [x] Add answers to [using the remote desktop](../../sessions/use_remote_desktop.md)

## Inclusive teaching

I discussed with a colleague about inclusive teaching.
Due to this, I read up on 'Inclusive teaching', found `[Dewsbury & Brame, 2018]` and
[this PDF](inclusive_teaching_checklist.pdf):

- Classroom climate:
    - [Yes] Consider how you demonstrate warmth, organization,
      and respect for students as part
      of developing a positive classroom climate.
      This can start with the syllabus and extend
      to face-to-face and online interactions with students.
    - [Yes] Encourage respectful and supportive peer interactions,
      providing students’
      opportunities to collaborate in building understanding,
      identify shared interests in
      course content, and develop a supportive classroom network.
- Pedagogical choices:
    - [Yes] Signal an identify-safe environment with inclusive language or
      by highlighting successes
      of individuals from stereotyped groups.
      This can lessen stereotype threat and improve
      student performance and participation.
    - [N/A] Feature counterstereotypical examples of scientists
      in homework assignments to
      introduce course content. Doing so can increase students’ sense of
      relating to scientists,
      shift them away from stereotypes about scientists,
      and improve course grades.
    - [Yes] Know and use student names. Name tents are one way to achieve
      facilitate this practice in high enrollment courses.
    - [Yes] Use wait time, small groups, think-pair-share,
      and writing time as well as other
      strategies that enhance students’ opportunities
      to contribute and benefit from the
      intellectual community of the classroom.
    - [N/A] Increase course structure through graded out-of-class assignments
      and in-class active learning, including the strategies listed above.
    - [Yes] Enhance cooperation and reduce competition among students
      to help promote student
      feelings of success.
    - [Unsure] Emphasize the relevance of coursework to real life in order
      to enhance student interest and engagement.
    - [Yes] Support students' sense of autonomy to increase interest
      and enjoyment and possibly decrease anxiety measures.
    - [Yes] Read about and consider using social-psychological interventions
      that are a suited to your students and your context.
      These interventions may focus on helping students
      endorse a growth mindset;
      helping students understand adversity as shared, transient
      experiences to increase social belonging;
      or helping combat stereotype threat through
      values affirmation.

Of course, the 'Yes' should be read as a 'I think so, but I can be wrong'.
Note that 'Use [...] small groups' and
'Increase [...] in-class active learning' is something I do,
which is not done in monologue lecturing. So monologue lecturing
is not inclusive? Maybe we should do less of monologue lecturing :-)

Other papers causing me to believe I do reasonably well:

- `[Amayo et al., 2021]`: 12 simple tips
- `[Dewsbury, 2017]` (useless for me, it is at a higher level)

It annoys me that these papers are mostly about the inclusion
of people with different skin colors, instead of how to include
people with social anxiety. For now, I conclude I am inclusive enough,
until there is evidence on the opposite.

Another study, `[Shady et al., 2013]`, does an experiment with
training teachers in being more inclusive, with a survey before and after
the training. The survey question 'I feel that inclusion will lead to positive
changes in the educational system' was agreed upon 44% before and 12%
after the training (and a year of implementing it).

## Learning outcomes

I've updated the learning outcomes.
The associated evaluation questions have changed like this:

```text
Give you confidence levels of the following statements below:

- I can log in to the Rackham remote desktop using the website
- I can do basic things in the Rackham remote desktop
- I can find my home folder
- I can transfer files to/from Rackham using FileZilla
- I can log in to Rackham using a terminal
- I can do basic things in the terminal
- [EXTRA] I can transfer files to/from Rackham using `scp`
- I can find the UPPMAX project's folder of this course
- [NEW] I can predict which folders have a backup
- I can find and load a module
- I can start a terminal text editor
- I can create a bash script
- I can schedule a job
- I can start an interactive session
- [EXTRA] I can start an IDE
- [REMOVED] I can conclude which UPPMAX cluster best suits my needs
- [REMOVED] I can find the hardware specifications of an UPPMAX cluster
- [REMOVED] I can find where to apply for NAISS resources
- [REMOVED] I can find other UPPMAX courses
```

The `EXTRA` questions will have a lower score, as these are done only by
the learners that are faster.
I removed those questions that were completely unaddressed last time.
I should discuss this with the course coordinator: maybe she'd
prefer to do the removed things and the command-line things can be done
in other sessions instead.

## Peer observation

From 13:00-16:00 I have a teaching assistant.
Because I predict these lessons will be easy,
I hope I can use him as a peer observer instead.

Questions would be:

- How would you grade me on the items of `[Dewsbury & Brame, 2018]`,
  i.e [this PDF](inclusive_teaching_checklist.pdf)?
  Assume that some things do not apply.
- Ideally, compare this to other teachers

## References

- `[Dewsbury & Brame, 2018]` Dewsbury, Bryan, and Cynthia J. Brame.
  "Inclusive teaching." CBE—Life Sciences Education 18.2 (2019): fe2.
- `[Amayo et al., 2021]` Amayo, Jeremy, et al.
  "Twelve tips for inclusive teaching." MedEdPublish 10 (2021): 81.
- `[Dewsbury, 2017]` Dewsbury, Bryan M.
  "On faculty development of STEM inclusive teaching practices."
  FEMS microbiology letters 364.18 (2017): fnx179.
- `[Shady et al., 2013]`
  Shady, Sandra A., Vicki L. Luther, and Laila J. Richman.
  "Teaching the Teachers: A Study of Perceived Professional Development Needs
  of Educators to Enhance Positive Attitudes toward Inclusive Practices."
  Education Research & Perspectives 40.1 (2013).

