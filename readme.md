```"Pada akhirnya, kapanpun tugasnya, semua kelompok kerjanya H-1 semuanya" - Ganen```

------

Team Member:

- Ganendra Afrasya Salsabilla - 05111640000071
- Zahrah Ayu Afifah Febriani - 05111640000108
- Natasha Valentina Santoso - 05111640000183 
---

# Project Topic : TCExam
![TCExam's Logo](assets/logo_tcexam.png)

## System's Description
TCExam is a Open Source system for electronic exams (also know as CBA - Computer-Based Assessment, CBT - Computer-Based Testing or e-exam) that enables educators and trainers to author, schedule, deliver, and report on quizzes, tests and exams.

TCExam is Web-Based, platform independent, language independent (includes translations in several languages and RTL support) and conforms to W3C Accessibility and Usability guidelines to provide equal opportunity to people with disabilities, including blind users.

TCExam automates all assessment phases: authoring, scheduling, delivering, and reporting. It's easy to use and do not require expensive hardware to run, nor additional commercial software. Users connect to the TCExam system using a common Web-browser like Mozilla Firefox or Internet Explorer.

## System's Bad UIs
* Delete Alert is shown in green color
* If there is unfulfilled requirement in fields, the system does not show which fields are error
* No mark for the required field and input box is available, but cannot be filled
* Main menu tab is not consistent
* No message for success or fail action
* The question's position feature doesn't work properly

# Contextual Inquiry
## Instruction Script
### Preliminary Interview Questions
1. Have you ever become a tutor?
2. What is your tutoring style, face-to-face or online?
3. Are you still tutoring these days? If yes, how often is it per week? If not, how much days your tutoring last?
4. Have you ever made an exercise or exam for your students?
5. What type would you prefer your exercise or exam, multiple choice or essay?
6. Is it written by hand or made in an application?

### Specific Instructions
1. Login as default admin with username and password as admin and 1234
2. Create a new user with his/her level is not equal to zero (since it cannot be used)
3. Create a new group named 'HCI A Class' and move the user to this group
4. Create a new module named 'Technology'
5. Create a new topic named 'Human-Computer' and fill in description as 'the interaction between humans and computers'
6. Change the topic name to 'Human Computer Interaction'
7. In the module 'Technology' with topic 'Human Computer Interaction', create several of these questions:
 - Type: single answer; Question: What is a human means?
 - Type: free answer; Question: What is the meaning of Human Computer Interaction?
 - Type: multiple answers; Question: What is involved in HCI category?
 - Type: ordering answers; Question: What is the order in the shorten of HCI?
 8. Make answers in the order of questions above:
 - A human is a human being (right); A human is an animal
 - 
 - Human (right); Computer (right); Interaction (right); Creation
 - Human (right position 1); Computer (right position 2); Interaction (right position 3); Inovation
 9. Change single answer question to appear as the first question in any tests.
 10. Create a test
 - Name: IMK
 - Description: IMK for Contextual Inquiry of Horray Team
 - Start time: today date and End time: tomorrow date
 - Test time: 60 minutes
 - Groups: HCI A Class
 - Basic points: 4; Points for wrong answer: -1; Points for no answer: 0; Points to pass the exam: 0
 - Check everything else except 'logout when time expires'
 - Set password to 'imkimkimk'
 11. Set questions which have been created previously as the question for the test

<!--
 Extra:
 1. Logout from admin and login as created user above
 2. Check if the test is available
 3. Do the test
 4. Logout and login as admin again, check evaluation and give points to free answer
 5. Login as created user and check the results for the test which has been done
 -->

## User Description
### Participant 1 👨‍🚀
- The participant is a male user of Indonesia origin aged about 21 years old.
- He is a mechanical engineering student.
- He had experienced as tutor for international students last year.
- Nowadays, he is tutoring two high school students twice a week.
- He likes to make mini quiz for his students in short answer type.
- In writing his mini quiz, he uses Microsoft Word application.

### Participant 2 🙆‍
- The participant is a 20 years old female user.
- She is a computer science student.
- She has been working as a teaching assistant for 4 terms.
- Neither exam questions nor exercises are prepared by her since they are created directly by the teacher.
- She assists hand-written tests with printed questions.

### Participant 3 👧
- A female, 21 years old
- A student of Informatics Department batch 2016
- She had experienced as a tutor for high school students last year
- She never made exam questions for her students because it has been prepared by the course
- In giving exercise, she uses her printed book given by the course

### Participant 4 👦
- A male, 20 years old
- A student of Informatics Department batch 2017
- He experiences as a teaching assistant
- He make exercise for his students
- In giving exercise, he uses his Microsoft word Application

### Participant 5 🤡
- A male, 20 years old
- Informatics ITS 2017
- Former lecturer assistant
- Usually using paper or manually write the text or exercise

### Participant 6 👱🏻‍♀️
- A female, 23 years old
- Sasjep UB 2015
- Usually asked by her lecturer to help them handling class tests or exercises
- Mostly done by their own online exam system (UB exam system)

## Transcript

Transcripts for this Contextual Inquiry is available in this link: [Transcript](transcript/transcript.md)

## Models and Annotations

Artifact model, Flow model, and Cultural model for this Contextual Inquiry are available in this link: [Models](https://docs.google.com/presentation/d/1C4g-h0BwNnfURy2CZUE5xoRbzpQlglr-DFVmPvyjkIc/), [readme file](models/models.md)

## Do's and Dont's

### Do's
- Make a consistent menu
- Give symbol or text description for required fields in form
- Provide search for every listed item

### Dont's
- Give empty feedback
- Make unnecessary button for update
- Hover everything to get description

# Sketching and Prototyping
## Part A: Sketches

### Design Rationale

The core problem in original TCExam is bad design on their platform. Lack of explanation, too-old-styled themed layout and not well-centered layout design make user uncomfortable and sometimes missed the feature. From that, we need to fix it by using the simple, minimalist, yet modern and self-explained layout design.

## Part B: Assumptions

### Hardware

PC with minimum spec:

- Intel dual core processor
- RAM 2 GB
- Internet connection of course
- Dedicated graphic card, minimum Intel HD

Navigation with external hardware (mouse and/or keyboard)

### Users

- Can use browser to browsing 
- Can understand how to input something on online form
- ~15-50 years old


## Part C: Prototypes

Adobe XD file: https://gsculerlor.s-ul.eu/4Nkg75WG

![Question_List](assets/prototype/ganen/List%20of%20questions.png)
*Image : Showing list of questions*
![Questions](assets/prototype/ganen/Edit%20Question.png)
*Image : Edit question and add answers*
![Grups](assets/prototype/ganen/Group%20Management.png)
*Image : Add Group*
![Topics](assets/prototype/ganen/Topics%20Management.png)
*Image : Add Topic*

![User](assets/prototype/ganen/User%20Management.png)
*Image : Add User*

![Test](assets/prototype/ganen/Test%20Management.png)
*Image : Add Test*

![Test with question](assets/prototype/ganen/Test%20Management%20–%20with%20answer.png)
*Image : Add question to test*
