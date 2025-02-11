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
  breakoutrooms due to time [reasons] as I think that is quite important
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

question                  |mean_confidence
--------------------------|---------------
I can create a bash script|4
I can do basic things in the Rackham remote desktop|4.666666666666667
I can do basic things in the terminal|4.777777777777778
I can find and load a module|4.333333333333333
I can find my home folder|4.666666666666667
I can find the UPPMAX project's folder of this course|4
I can log in to Rackham using a terminal|4.666666666666667
I can log in to the Rackham remote desktop using the website|4.666666666666667
I can predict which folders have a backup|4.555555555555555
I can schedule a job|3
I can start a terminal text editor|4.333333333333333
I can start an IDE|1.5555555555555556
I can start an interactive session|2.3333333333333335
I can transfer files to/from Rackham using FileZilla|3.888888888888889
I can transfer files to/from Rackham using `scp`|2.888888888888889


question                  |answer|n
--------------------------|------|---
I can create a bash script|1|1
I can create a bash script|3|2
I can create a bash script|4|1
I can create a bash script|5|5
I can do basic things in the Rackham remote desktop|4|3
I can do basic things in the Rackham remote desktop|5|6
I can do basic things in the terminal|4|2
I can do basic things in the terminal|5|7
I can find and load a module|3|1
I can find and load a module|4|4
I can find and load a module|5|4
I can find my home folder|4|3
I can find my home folder|5|6
I can find the UPPMAX project's folder of this course|2|1
I can find the UPPMAX project's folder of this course|3|2
I can find the UPPMAX project's folder of this course|4|2
I can find the UPPMAX project's folder of this course|5|4
I can log in to Rackham using a terminal|3|1
I can log in to Rackham using a terminal|4|1
I can log in to Rackham using a terminal|5|7
I can log in to the Rackham remote desktop using the website|4|3
I can log in to the Rackham remote desktop using the website|5|6
I can predict which folders have a backup|3|1
I can predict which folders have a backup|4|2
I can predict which folders have a backup|5|6
I can schedule a job|1|2
I can schedule a job|2|1
I can schedule a job|3|3
I can schedule a job|4|1
I can schedule a job|5|2
I can start a terminal text editor|2|1
I can start a terminal text editor|4|3
I can start a terminal text editor|5|5
I can start an IDE|1|6
I can start an IDE|2|1
I can start an IDE|3|2
I can start an interactive session|1|5
I can start an interactive session|3|2
I can start an interactive session|5|2
I can transfer files to/from Rackham using FileZilla|2|2
I can transfer files to/from Rackham using FileZilla|3|1
I can transfer files to/from Rackham using FileZilla|4|2
I can transfer files to/from Rackham using FileZilla|5|4
I can transfer files to/from Rackham using `scp`|1|2
I can transfer files to/from Rackham using `scp`|2|2
I can transfer files to/from Rackham using `scp`|3|1
I can transfer files to/from Rackham using `scp`|4|3
I can transfer files to/from Rackham using `scp`|5|1
