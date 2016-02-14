# H1 1.1 Thinking About Time

It's a shame to say that I downloaded the Pomodoro app from about a year ago, but never used it. I wanted to try the idea at work; however, my role calls for a lot of interruptions from emails, im's, and in-person "quick questions". My current team tries to follow a Kanban workflow where each person is focused on one task at a time and everyone has visibility to the scope of the work. However, being an agency to a demanding client, we often get side-tracked with interruptions and extra to-do's (scope creep). I would like to give Pomodoro a try and hopefully get into a rhythm in Phase 0 with learning and focusing. I'm familiar with the time boxing method. From looking at the sections of each assignment, I see that there are time estimates attached to the submission items. I think this will be a good way to gauge against how much time to spend each night doing the assignments.

I think my current strategy for working on these assignments can be improved upon. I usually plan on spending two hours on whatever there is to do each night of the week. I think what I don't do is celebrate or acknowledge the small "wins" with maybe a slight break. I think that leads me to taking sporadic breaks surfing online which are more of a time waster.

My strategy for Phase 0 is to try to mediate each day for small periods of time. I can do so for a period of time during my morning commute, lunch, and evening commute. I will setup time boxes for short, medium, and long assignments in a similar way as I know how in Agile for what's to be done each night. Within these work periods, I can segment them into 20-25 minutes of focused work with breaks.

## H2 1.2 The Command Line

The Shell and Bash are used interchangeably. The Shell to me is an interpreter of the programming languages and Bash is an implementation of the Shell with high functionalities. In my mind, this is analogous to an OS and the version of the OS...i.e. OSX : Shell :: El Capitan : Bash

The most challenging part of this lesson comes from the lack of user feedback when you input a command. Unless you do something wrong, the result of your command line won't be visible unless the user specifies. Also, I would recommend anyone to type out their assignment in a regular text editor then copy over to DBC web console; this is my second time typing this out because this browser editor does not save. Otherwise, I was fairly successful at most of the commands. I was somewhat confused with commands like "|" and ">" because they seem to do the same thing. I think the most important command is "help" since every other command is very well documented.

pwd - current path in full

ls - list items and directories in the current folder

mv - move item or replace item

cd - change directory

../ - usually used with cd .. to go up a level in directory

touch - can create items like example.txt or something.rb

mkdir - make directory

less - show part of a file

rmdir - remove and empty directory

rm - remove an item

help - "man" in OSX, provides a guide to shell com

### H3 1.4 Forking and Cloning

For creating a new repo on Github.com, log into your account and clike the "+" symbol on the top right corner of the page and select "New repository".

To fork a repo, first find the repo by search for its name in the search bar. Once you find the repo in the list, click on the name of the repo, then "fork" button will be on the top right of the page under the menu bar.

To clone a repo, make sure that you are in the directory of your choice in Terminal. Type: git clone <github url>. The url can be copied from within your repo after the SSH field.

Forking the repo is like taking an instance of the body of work at a certain time. If I were to make changes or contributions to the repo, my changes can be tracked within my own repo without affecting the original repo. Since everything is version controlled as I am using git, then I can always go back to an instance of the repo or even back to the original repo to see the difference.

The thing that I'm currently unsure of is whether my user name and email are automatically setup whenever I decide to start a project folder with the "git init" command. I checked and it appears that I would have to set my username and email with every folder that I initiate git. I also noticed that after I initiate git, my terminal prompt displays: [\[\e[0;32m\]master\[e[0m\]] I suspect that this has something to do with the way my bashprofile or bashrc.