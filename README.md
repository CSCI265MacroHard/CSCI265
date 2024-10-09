### @ Dave Wessels
The dev branch of the repo is always the most up-to-date branch. Please refer to this branch when grading our group project. All Markdown files for the different phases can be found in the "Documentation" folder.

# CSCI265
Project for CSCI 265 with Alister, Bruce, Jamie, Marek and Nick

- Supreme Leader Alister is our Project Lead, 
- Marek is our Organization/Git Lead, 
- Jamie is our Visual Lead, 
- Nick is our Godot Lead, 
- Bruce is our programming and audio lead

Our Project making an immersive arcade for the world to enjoy

### [Link to project planner](https://github.com/orgs/CSCI265MacroHard/projects/2)

## Branch Strategy and Version Control

- There are two branches that always exist.
    - the main branch contains the stable versions of the game.
    - the dev branch contains the game as it gets developed with all completed features.
- there are any number of feature branches that contain the active development process, that branch and merge with the dev branch.
- there is up to one testing branch that contains a branch of the dev branch with all features that are meant for the next game update. It merges into the dev and main branch.
- there is up to one hotfix branch that is used to quickly fix any small bug that are present in the main branch. It merges into the merges with the main and dev branch.

![image not found](Documentation/pics/branchStrategy.png)
[additional information and image source](https://nvie.com/posts/a-successful-git-branching-model/)

## Instructions for working within the repo separated by task

### Setup
Clone the repo and enter  the new directory to start working.
```
### Example Commandline Inputs/Steps ###

git clone https://github.com/CSCI265MacroHard/CSCI265.git --branch dev
cd CSCI265  
```
### Feature Start
To start a new feature, pull the latest commit from the dev branch from the remote repo. Then, switch to the dev branch in your local repo and create a new branch for the new feature. Then push the new branch to the remote repo.
```
### Example Commandline Inputs/Steps ###

git pull origin dev
git checkout dev
git branch featurename
git checkout featurename
git push origin featurename:featurename
```
### Feature update
To work on your feature, switch to the feature branch in your local repo. Make your changes. Then, before you commit, check that you are in the right branch. Commit your local branch to the feature branch in the remote repo.
```
### Example Commandline Inputs/Steps ###

git checkout featurename
~changes
git status
git add .
git commit -m "message"
git push origin featurename:featurename
```
### Feature done
To merge a finished feature with the dev branch, send a message in the team Discord that you want to make a merge request. Then pull the latest version of the dev branch from the remote repo to check that you are up to date. Go to your feature branch and merge the dev branch with your local feature branch.

Fix any merge conflicts if necessary and commit the fixes.

Push your merged feature branch to the remote repo. Then go to GitHub and make a merge request to merge your feature branch with the dev branch. Bruce or Marek will check the request and approve it if everything is correct. They will also delete the branch to keep the repo clean.
```
### Example Commandline Inputs/Steps ###

~discord message
git pull origin dev
git checkout featurename
git status
git merge dev
//
~fix merge conflict
git status
git add .
git commit -m "message"
//
git push origin featurename:featurename
~go to GitHub
~make pull request to merge feature with dev
~merge approved
~close branch
git pull origin dev
```
### Hotfix
For a hotfix of the stable version, pull the latest version of the main branch. Enter the main branch and create a hotfix branch. Go to the branch and fix any bugs. Then push the branch to the remote repo.
Then go to the repo and make merge requests for the branch into the main branch and the dev branch. Bruce or Marek will check the requests and approve them if everything is correct. They will also delete the branch to keep the repo clean.
```
### Example Commandline Inputs/Steps ###

git pull origin main
git checkout main
git branch hotfixname
git checkout hotfixname
~fix bug
git add .
git commit -m "message"
git push origin hotfixname:hotfixname
~go to GitHub
~make pull request to merge hotfix with main
~make pull request to merge hotfix with dev
~merges approved
~close branch
```
### Start Testing
To start testing, pull the latest version of the dev branch. Go to your local dev branch and create a testing branch. Then push the testing branch to the remote repo.
```
### Example Commandline Inputs/Steps ###

git pull origin dev
git checkout dev
git branch testname
git checkout testname
git push origin testname:testname
```
### Testing update
To make an update to the testing branch, go to your local testing branch and fix any bugs. Then commit the changes to the branch. Push the local branch to the remote repo.
```
### Example Commandline Inputs/Steps ###

git checkout testname
~fix bugs
git status
git add .
git commit -m "message"
git push origin testname:testname
```
### Testing done
If testing is complete, send a Discord message that you are about to update to the next stable version. Then pull the latest version of the dev branch. Go to your testing branch and merge the dev branch into your testing branch. Push your updated testing branch to the remote repo. Then go to GitHub and make merge requests to merge the testing branch into the dev branch and main branch. Bruce or Marek will check the requests and approve them if everything is correct. They will also delete the branch to keep the repo clean. Marek or Bruce will send a message in the Discord that the stable version has been updated.
```
### Example Commandline Inputs/Steps ###

~discord message
git pull origin dev
git checkout testname
git status
git merge dev
git push origin testname:testname
~go to GitHub
~make pull request to merge test with dev
~make pull request to merge test with main
~merges approved
~close branch
~discord message
```
