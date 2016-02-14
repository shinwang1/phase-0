#H1 Paste a link to your [USERNAME].github.io repository.

shinwang1.github.io

#H1 Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.

Create a GitHub repository first by making a log-in account name and password. On the top right corner, find the "+" sign and click on "New Repository" within the dropdown. Type in the name of your repository within the blinking text cursor. Choose the privacy option from the radial buttons. Check the README checkbox and add a license (use MIT License). Click on the green "Create Repository" button.

To clone the repository, you need to click into the repository that you've just created from your GitHub home page. Locate the "SSH" button, it's next to "Find file" button. Copy the text after the SSH dropdown box in the middle of the page. Then go to your command terminal(if Mac) on your computer. Make sure you are in the directory that you want the project file to sit in. Then go through the following steps

    Type:> git init
    this initializes git on your local machine

    Type:> git config --global user.name <name>
    this allows you to define your name as the user

    Type:> git config --global user.email <email>
    this allows you to define your email as the user

    Type:> git clone <repo> <directory>
    the <repo> is the copied text from the SSH field. If you are within the directory that you want, you do not have to specify a directory.

#H1 Describe what open source means.

Open source means that you are relinquishing your rights to your code for the public to use. Thus people who use your code does not have to seek permission from you on a case by case basis. People can take open source code and modity/distribute as they please...per the license.

#H1 What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

People can agree that there are numerous and better ways to program; open source allows people to improve and learn from each other. As a beginner, open source is a great way to learn programming because you have a vast community of people who are contributing constantly to a common knowledge base.

#H1 Assess the importance of using licenses.

Licenses establish a social/legal agreement for the usage of open source coding. Certain licenses restricts sharing and usage of code while others may require permission. Licenses, in general, exist to protect the copyright and/or intellectual property of the author.

#H1 What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

I learned the git workflow on my local machine as well as the push/pull workflow. I did the mistake of not making a branch from master. After having committed within my master branch within my local, I noticed that I was unable to push to remote. After researching, I found out that my local was ahead of my remote master by a few commits; therefore, I had to rebase my master. This felt uncomfortable because I didn't know what was going to happen to my work.

#H1 Did you find any resources on your own that helped you better understand a topic? If so, please list it.

The Atlassian Tutorial is very helpful: https://www.atlassian.com/git/tutorials/setting-up-a-repository
