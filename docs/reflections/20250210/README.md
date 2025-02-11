---
tags:
  - reflection
  - 2025-02-10
---

# Reflection 2025-02-10

This group had more variation in how fast the learners went through the
exercise. I felt it was useless to rush them through the earlier exercises.
Instead, from 15:30-15:45 I **lectured**. I told them that the learning
objective ('so you have **seen** it').
I feel this most likely reason for this, is the new session
about backups: it took away 30 minutes.

I informed my colleagues about the state of the learning of the students,
so that they can adapt.

Maybe for next time:

- Remove: modules
- Remove: create a script
- Remove: submit a script
- Add back in: I can conclude which UPPMAX cluster best suits my needs
- Add back in: I can find the hardware specifications of an UPPMAX cluster
- Add back in: I can find where to apply for NAISS resources
- Add back in: I can find other UPPMAX courses

It would feel weird not to run a batch job though,
so I feel alternatively:

- Remove: backups

This is my favorite. I will move backups to the optional material.

There was an unclarity in the
course material about backups that was found (and shared) by two independent
groups. I've fixed it under course time. I was I made the unclarity
visible.

Besides the variability in the learners, I think it went as good as it could.
I think I was able to create a welcoming, warm learning atmosphere.
I took good care of learners that were later than the rest.
I must give credit to the learners themselves too, as they
helped me make the course enjoyable.

I felt the group was getting less focussed, more viscous to work with after
the break.

So, let's take a look at the evaluation results.

## Evaluation

- Number of learners at 14:45: 13
- Numer of responses: 9
- Response rate: 69%

This is the feedback at end of confidences,
with only spelling corrections added:

- Day 1 on this course has been very useful,
  I learned a lot through these sessions,
  and I really liked doing the exercises in breakout rooms and
  discussing each question with others.
  I also liked Richèl's way of teaching,
  he was very positive and supportive.

Nice.

- Very nice intro!
  Felt like being thrown unprepared into a swimming pool.
  But I didn't drown, thanks to other swimmers
  that showed me how to stay above the water. ;-)

I wonder how I could help better here: was it just the other swimmers,
or was I involved as well? Well, it is the goal to include everybody
by having different groups, so I guess that worked for this learner!

- Richel is very nice and welcoming since the beginning of the class.
  The course is fun, less lectures more practicing.
  But it seems that the target for today may be a bit too much unless
  more time is added, or maybe extend the course to 4 days.

This is the first of two learners stating
there is too much content in the course.

- For a complete beginner, the amount of information is huge.
  The [breakout rooms] and the way of teaching helped greatly.
  I do have to say the pace was quite fast tho and I am very happy
  to have had some people in the same [breakout rooms]
  that knew so much beforehand. Still, I am quite confused how to find
  everything that I want to do, especially all the commands and
  requirements before using the commands. The documentation is very nicely
  structured, and helped a lot, but for a total beginners it felt like a
  maze. I am a bit sad, that we could not try writing the script in the
  [breakout rooms] due to time [reasons] as I think that is quite important
  and I have low confidence in doing so on my own.
  Concluding, I feel that this course is very valuable especially
  with in this learning format but more time would have been needed.

This is the second of two learners stating
there is too much content in the course.
Again, he/she states that the usefulness of the breakout rooms.

Anonymous feedback:

- Great introduction to uppmax and linux, learned a lot!

Nice.

- I enjoyed the teacher's way of interacting and engaging with us students.
  Making it feel like a safe environment for asking questions.
  Also liked working in smaller breakout rooms bit the downside being some
  interactions where more fruitful than others.
  Where it feels you can easily get lost
  and not follow if not everyone is on board of the students.
  But all in all a very useful session!

Nice. And indeed, some groups were not as good as others. And I could
be better in nudging these to be be better, I just don't know how.

So, 2 out of 11 learners state there was too much course content.
And I agree with this: I've added a session on backups and I naively
thought it would all still work. It did not.

- [x] Remove session on backups

I think this quote is valuable:

> The documentation is very nicely
> structured, and helped a lot,
> but for a total beginners it felt like a maze.

I feel the day should start with an overview of running an analysis
on UPPMAX. And remove the 'nice to have' things:

- [x] Remove file transfer using `scp`
- [x] Remove IDEs

These are the learning outcomes remaining
and what I think should be their fate:

Setup 1, 'goal of Day 1 is that learners see all phases of working
with an UPPMAX cluster':

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Learning outcome                                            |My proposed fate
------------------------------------------------------------|-------------------
I can log in to the Rackham remote desktop using the website|Stay
I can do basic things in the Rackham remote desktop         |Stay
I can find my home folder                                   |Stay
I can transfer files to/from Rackham using FileZilla        |Stay
I can log in to Rackham using a terminal                    |Move to other day
I can do basic things in the terminal                       |Move to other day
I can transfer a file using `scp`                           |Keep out
I can find and load a module                                |Only show, move to other day
I can start a terminal text editor                          |Only show, move to other day
I can create a bash script                                  |Only show, move to other day
I can schedule a job                                        |Only show, move to other day
I can start an interactive session                          |Only show, move to other day
I can start an IDE                                          |Remove
I can find my project folder                                |Add back in
I can state which folders have a backup                     |Add back in
I can conclude which UPPMAX cluster best suits my needs     |Add back in
I can find the hardware specifications of an UPPMAX cluster |Keep out
I can find where to apply for NAISS resources               |Add back in
I can find other UPPMAX courses                             |Add back in

<!-- markdownlint-enable MD013 -->

Setup 2, 'goal of Day 1 is that learners can submit a batch job':

Learning outcome                                            |My proposed fate
------------------------------------------------------------|-------------------
I can log in to the Rackham remote desktop using the website|Stay
I can do basic things in the Rackham remote desktop         |Stay
I can find my home folder                                   |Stay
I can transfer files to/from Rackham using FileZilla        |Stay
I can log in to Rackham using a terminal                    |Keep
I can do basic things in the terminal                       |Keep
I can transfer a file using `scp`                           |Keep out
I can find and load a module                                |Keep
I can start a terminal text editor                          |Keep
I can create a bash script                                  |Keep
I can schedule a job                                        |Keep
I can start an interactive session                          |Keep
I can start an IDE                                          |Remove
I can find my project folder                                |No
I can state which folders have a backup                     |No
I can conclude which UPPMAX cluster best suits my needs     |No
I can find the hardware specifications of an UPPMAX cluster |Keep out
I can find where to apply for NAISS resources               |No
I can find other UPPMAX courses                             |No

I will ask what the goal of Day 1 is and then adapt accordingly.

Let's find the weakest session

Mean confidences as a table:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

question                                                    |mean_confidence   |Comment
------------------------------------------------------------|------------------|------
I can create a bash script                                  |4                 |Demo only
I can do basic things in the Rackham remote desktop         |4.666666666666667 |Done exercises with all learners
I can do basic things in the terminal                       |4.777777777777778 |Done exercises with all learners
I can find and load a module                                |4.333333333333333 |Done exercises with all learners
I can find my home folder                                   |4.666666666666667 |Done exercises with all learners
I can find the UPPMAX project's folder of this course       |4                 |Done exercises with all learners
I can log in to Rackham using a terminal                    |4.666666666666667 |Done exercises with all learners
I can log in to the Rackham remote desktop using the website|4.666666666666667 |Done exercises with all learners
I can predict which folders have a backup                   |4.555555555555555 |Done exercises with all learners
I can schedule a job                                        |3                 |Demo only
I can start a terminal text editor                          |4.333333333333333 |Done exercises with all learners
I can start an IDE                                          |1.5555555555555556|Not even shown
I can start an interactive session                          |2.3333333333333335|Demo only
I can transfer files to/from Rackham using FileZilla        |3.888888888888889 |Done exercises with all learners
I can transfer files to/from Rackham using `scp`            |2.888888888888889 |Some learners have done the exercises

<!-- markdownlint-enable MD013 -->

Using FileZilla is still the weakest session. There were indeed some
learners that could not get this to work, because of (1) multiple
operating systems, (2) multiple locations (i.e. inside SUNET, inside Sweden,
outside Sweden). Maybe I should show these combinations more explicitly?

- [ ] Consider extending FileZilla + Rackham documentation
  for multiple OSes and locations

In conclusion, I see that, even for a group with high variation such as this,
the confidences of the learning outcomes can still be high.
All that changed is the **amount** of learning outcomes that was
worked on.

## Observation

Here is the observation of my colleague (I changed the layout freely):

- 12:50 – Engaging with small talks with students and making them comfortable.

Yup, I do this.

- 1:00 – 14 students. 12/14 video on.
  Getting feedback about file transfer knowledge before proceeding
  and adjusting for teaching speed speed.

Ah, I started a Prior here :-)

- 1:03 – Recall test for students which helps in offsetting forgetting.
  Picks out students and asks
  questions. Maybe not all are comfortable with giving answers? However,
  even a "don’t know" is
  considered an answer and so it is a lenient test.

Valid question asked by my colleague!

- 1:07 - Another round of questionaire. Consisting of the upcoming topic.
- 1:10 – Login via Terminal exercises. Overview followed by hands-on
- 1:12 – breakout to rooms
- Break out room 1 : 2/2 video on and discussing.
  Corrected students since they were working on
  something else.
- Break out room 2: 3/3 video on and discussing.
- Break out room 3: 3/3 video on, and discussing.
- Break out room 4: 3/3 video on and working independantly.
- Break out room 5: 3/3 video on and discussing.

Video is on a lot indeed. Also note how often I jump around: 5x in 8 minutes :-)

- 1:20 – 15 students. New student joins and teacher
  gets feedback and them to a room.

Indeed, here I prepared a new learner to be added to a group.

- 1:26 – Helps room 2. `xeyes` do not work with `–X` flag for Mac users.
  Asked to continue to next question.

Ah yes, it was good that I asked them to move on. However, this should
be added to the course material:

- [ ] Add to course material: `xeyes` may not work and that is fine

- 1:28 – Revitalizing dead room by checking if all is good.

I like the word 'revitalizing' here a lot. Unsure how well I did.

- 1:34 – Asking per room if they have done the task.

Indeed, for rooms that did not share their screen I had to ask
how for they were. I don't like to interrupt my learners, but I do
need to know.

- 1:41 – Room 1, asked student to turn camera on and checked with them.

Ha, I keep doing that. Good job me :-)

- 1:42 – Room 3 were out and then they were moved back
  after they realized they did not do the task.

Yes, they were indeed not yet finished. This was partly my mistake: I only
mentioned twice to do two sessions and I did not repeat in the breakout
room. Still, I am happy that this can be sorted out easily.

[And the questions I asked my colleague to rate me on:]

- Consider how you demonstrate warmth, organization,
  and respect for students as part
  of developing a positive classroom climate.
  This can start with the syllabus and extend
  to face-to-face and online interactions with students.
    - Warmth : Encourages students to give answer, even wrong ones.
    - Organization : Breakout room for focused work withing small teams.
    Easy to follow exercises.
    Expectation setting with course overview.
    Quizzes/tests at the beginning and end of exercises.
    - Respect : Everyone is welcome no matter the prior knowledge they have.

I said 'Yes', we seem to agree.

- Encourage respectful and supportive peer interactions,
  providing students’
  opportunities to collaborate in building understanding,
  identify shared interests in
  course content, and develop a supportive classroom network.
    - Breakout rooms as a tool to colaborate. Encouraging videos for
    trust building and exercises to
    complete tasks together.

I said 'Yes', we seem to agree.

- Signal an identify-safe environment with inclusive language or
  by highlighting successes
  of individuals from stereotyped groups.
  This can lessen stereotype threat and improve
  student performance and participation.
    - Students are free to leave if they have important things to do.
    - All students were equally encouraged, including the sterotyped groups

I said 'Yes', we seem to agree.

- Feature counterstereotypical examples of scientists
  in homework assignments to
  introduce course content. Doing so can increase students’ sense of
  relating to scientists,
  shift them away from stereotypes about scientists,
  and improve course grades.
    - NA

I said 'N/A', we seem to agree.

- Know and use student names. Name tents are one way to achieve
  facilitate this practice in high enrollment courses.
    - Did well.

I said 'Yes', we seem to agree.

- Use wait time, small groups, think-pair-share,
  and writing time as well as other
  strategies that enhance students’ opportunities
  to contribute and benefit from the
  intellectual community of the classroom.
    - Did all of these.

I said 'Yes', we seem to agree.

- Increase course structure through graded out-of-class assignments
  and in-class active learning, including the strategies listed above.
    - Feedback form was a tool to do this and students were requested
    to fill those before leaving.

I said 'N/A', we seem to disagree. And I understand we may have
different ideas here: I have no idea what this item means exactly.
I should read the paper better here.

- [ ] Read paper to understand this item

- Enhance cooperation and reduce competition among students
  to help promote student feelings of success.
    - Answered via previous comments regarding enhancing cooperation.
    Competition was
    inherently decreased via those activities too.

I said 'Yes', we seem to agree.

- Emphasize the relevance of coursework to real life in order
  to enhance student interest and engagement.
    - Talked a little bit the use cases in the beginning of exercises.
    It was an adequate amount.

I said 'Unsure' and it seems to be a yes. Yay!

- Support students' sense of autonomy to increase interest
  and enjoyment and possibly decrease anxiety measures.
    - Self-evaluation structure of the course with reading material,
    guides and exercises.
    - Students discussed with one another if they got stuck individually.

I said 'Yes', we seem to agree.

- Read about and consider using social-psychological interventions
  that are a suited to your students and your context.
  These interventions may focus on helping students
  endorse a growth mindset;
  helping students understand adversity as shared, transient
  experiences to increase social belonging;
  or helping combat stereotype threat through
  values affirmation.
    - NA

I said 'Yes' and I agree that in the observed part, this was
not visible, hence we agree.

In conclusion, it seems that my perspective and my colleague's match
well!

