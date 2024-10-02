# CSCI265
Project for CSCI 265 with Alister, Bruce, Jamie, Marek and Nick

- Supreme Leader Alister is our Project Lead, 
- Marek is our Organisation/Git Lead, 
- Jamie is our Visual Lead, 
- Nick is our Godot Lead, 
- Bruce is our programme and audio lead

Our Project making an immersive arcade for the world to enjoy

[Link to project planner](https://github.com/users/xBruix/projects/1/views/1)

## Branch Strategy and Versioncontroll

- There are two branches that always exist.
    - the main branch contains the stable versions of the game.
    - the dev branch conains the game as it gets developed with all completed features.
- there are any number of feature branches that contain the active developing process, that branch and merge with the dev branch.
- there is up to one testing branch that contains a branch of the dev branch with all features that are meant for the next game update. It merges into the dev and main branch.
- there is up to one Hotfix branch that is use to quickly fix any small bug that are present in the main branch. It merges into the merges with the main and dev branch.

![image not found](Documentation\pics\branchStrategy.png)
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
To start a new feature pull the latest commit from the dev branch from the remote repo. Than change to the dev branch in your local repo and create a new branch for the new feature. Than push the new branch to the remote repo.
```
### Example Commandline Inputs/Steps ###

git pull origin dev
git checkout dev
git branch featurename
git checkout featurename
git push origin featurename:featurename
```
### Feature update
To work on your feature change to the feature branch in your local repo. Make your changes. Than before you commit check that you are in the right branch. Commit your local branch to the feature branch in the remote repo.
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
To merge a finished feature with the dev branch send a message in the team discord, that you want to make a merge request. Than pull the latest version of the dev branch from the remote repo to check that you are up to date. Go to your feature branch and merge the dev branch with your local feature branch.

Fix any Mergeconflicts if neccessary and commit the fixes.

Push your merged feature branch to the remote repo. Than go to github and make a merge request to merge your feature branch with the dev branch. Bruce or Marek will check the request and approve it if everthing is correct, they will also delete the branch to keep the repo clean. 
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
For a Hotfix of the stable version, pull the latest verion of the main branch. enter the main branch and create a Hotfix branch. Go to the branch and fix any bugs. Than push the branch to the remote repo.
Than go to the repo and make merge requests for the branch into the main branch and the dev branch. Bruce or Marek will check the requests and approve them if everthing is correct, they will also delete the branch to keep the repo clean. 
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
To start testing pull the latest version of the dev branch. Go to your local dev branch and create a testing branch. Than push to testing branch to the remote repo.
```
### Example Commandline Inputs/Steps ###

git pull origin dev
git checkout dev
git branch testname
git checkout testname
git push origin testname:testname
```
### testing update
To make an update to the testing branch, go to your local testing branch and fix any bugs. Than commit the changes to the branch. Push the local branch to the remote repo.
```
### Example Commandline Inputs/Steps ###

git checkout testname
~fix bugs
git status
git add .
git commit -m "message"
git push origin testname:testname
```
### testing done
If testing is complete send a discord massage that you are about to update to the next stable version. Than pull the latest version of the dev branch. Go to your testing branch and merge the dev branch into your testing branch. push your updated testing branch to the remote repo. Than go to github and make merge requests to merge the testing branch into the dev branch and main branch. Bruce or Marek will check the requests and approve them if everthing is correct, they will also delete the branch to keep the repo clean. Marek or Bruce will send a message in the discord that the stable version has been updated.
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