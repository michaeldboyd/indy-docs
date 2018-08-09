# Contributing to the Indy Repository

In this document, you will learn how to contribute to Hyperledger Indy by submitting a Pull Request (PR). Be sure to review this document in its entirety before your first commit, as an [unsigned commit](#Signing-Your-Commit) *will not* be accepted by the repository.

## Requirements

You will need to [install Git](#Installing-Git) and have a [GitHub Account](#Making-a-GitHub-Account) to contribute. It is also very useful to be part of Hyperledger's [chat room](#Connecting-on-Rocket.Chat), where developers and maintainers engage in conversation about the Indy project.

If you have fulfilled these requirements, feel free to proceed to the [tutorial](#Tutorial).

### Installing Git

Git is available on Linux, MacOS, and Windows. Basic installation is listed below; if you run into FDSA

#### Linux

Run the following commands on a Terminal window:

```sudo apt-get install git```
```git config --global user.email "you@youremail.com"```
```git config --global user.name "Your Name"```

#### MacOS

You will need to [install Homebrew](FDSA) on your Mac. Run the following commands on a Terminal window:

```brew install git```
```git config --global user.email "you@youremail.com"```
```git config --global user.name "Your Name"```

#### Windows

FDSA

### Making a GitHub Account

FDSA

### Connecting on Rocket.Chat

Hyperledger's chat room (https://chat.hyperledger.com) is accessible with the Rocket.Chat application, available on mobile, desktop, and web browser. You will need to [create an account](FDSA) with the Linux Foundation (creators of Hyperledger) in order to join. Indy has several channels, each having their own focus of conversation. You can see a list of Indy channels on the Indy [wiki page](https://wiki.hyperledger.org/projects/indy#communication).

## Tutorial

In order to successfully contribute with a PR, you will need to:

1. [Fork an Indy repository](#Forking-the-Repository)
2. [Make changes to the repository](#Make-Appropriate-Changes)
3. [Commit the changes you've made](#Commit-Your-Changes)
4. [Submit a PR to the original repository](#Submitting-a-PR)
5. [Wait for the PR to be approved, adjusting the changes when necessary](#PR-Acceptance)

This process doesn't vary much from any PR process, with the exception of a required [signature](#Signing-Your-Commit) on *every* commit.

### Forking the Repository

Navigate to the Indy repository that you plan to update. For this tutorial, we will use [indy-sdk](https://github.com/hyperledger/indy-sdk). At the top-right of the page, you will see the "Fork" button. **Click this to create a fork** (basically an independent copy) of the repository on your GitHub account (unless you already have a fork, then the button will take you to your fork).

Once you have a fork, navigate to a directory on your local machine in which you would like to work. For example: 
```cd Indy```
Within this directory, clone your fork:
```git clone https://github.com/YOURUSERNAME/indy-sdk```

### Make Appropriate Changes

Now that you have cloned your fork to your machine, make the edits you would like to commit. These changes will be visible to the repository maintainers, who have full authority to reject them if they deem unfit.

### Commit Your Changes

Run the following line to periodically prepare your changes for the commit:
```git add --all```
Be sure to run this again when you are ready to commit to prevent any lost changes.

#### Signing Your Commit

When you are ready to commit your changes, run the following command:
```git commit -s -am 'COMMIT MESSAGE'```
**It is extremely important to include -s every time you git commit**. This will sign your commits, and the Indy repositories will automatically reject unsigned commits. Include a fairly descriptive commit message (not 'fdsa') about what changes you have made--this will help the maintainers in their review of your PR.

After commiting your changes, update your GitHub fork with:
```git push origin master```
If you are working on a different [branch](https://help.github.com/articles/about-branches), replace 'master' with your branch name.

If you made any commits without the signature, you can either edit your commits (more difficult and not fail-safe) or copy your changes to a new file, delete and recreate your fork, and copy the changes back into your new fork.

### Submitting a PR

Your fork should now be up-to-date with your changes. Submitting a pull request FDSA

It is crucial to be very clear in your PR description--maintainers may not know the importance of your changes unless you describe them extensively. It is good practice to ask yourself if the description answers the following questions:
1. What changes have I made?
2. Why were these changes necessary?
3. How will these changes improve Indy?

### PR Acceptance

Maintainers will review PRs periodically. Some PRs will be considered with a higher priority than others based on their content (a bug fix is typically more imperative than a grammar correction). Being an open-source project, Indy welcomes any and all contributions; however, its integrity needs to be maintained, so if your PR contains changes that could change Indy in an unwanted way, the maintainers will let you know through comments on the PR.