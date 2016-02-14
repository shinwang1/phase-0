# H1 How does tracking and adding changes make developers' lives easier?

Developers write a lot of code asynchronously. Tracking and adding changes allow developers a way of reconciliate code from team members working on the same block of code. Without this process, managing a repository of code becomes exponentially difficult.

# H1 What is a commit?

A commit is when you are sure to submitting changes to your code. Think of it as a save point.

# H1 What are the best practices for commit messages?

A commit message is concise decription of what changes you made to your submission.

# H1 What does the HEAD^ argument mean?

Use this command in case you want to make changes to the latest commit.

# H1 What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Working Directory
2. Staging Area: Files are moved to the staged area by the command: git add <filename>
3. Repository: Files are moved to the repository by the command: git commit -m "comments"

# H1 Write a handy cheatsheet of the commands you need to commit your changes.

1. Check directory with pwd
2. Check which branch you're in with commands: git branch
3. Create a separate branch with: git checkout -b <branchname>
4. After saving changes to a file, stage the file with: git add <filename>
5. Commit the file with: git commit -m "comment"
6. Push the branch on github: git push origin <branchname>

# H1 What is a pull request and how do you create and merge one?

Pull request asks the upstream project to pull changes into their workstream. It can be done within github or with command line.

Typical workflow:
1. Create a new branch from command line
2. Check out the branch
3. Write and commit code
4. Push the branch to Github
5. Issue a pull request to the master branch

# H1 Why are pull requests preferred when working with teams?

Pull requests allow teams to systematically compare and merge changes to code back with a known state. For example, a team may make progress with code and/or refactor code in new branches. When several blocks of code are pulled back to the upstream master branch, decisions can be made to accept the changes as the project progresses forward.