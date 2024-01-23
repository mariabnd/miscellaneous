# Overview of Git commands

Below is a non-exhaustive list of Git commands and a short description of what they do

| Command                       | Description                                                                                                                                                 |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `git add`                     | Stages all files for the next commit                                                                                                                        |
| `git add <file>`              | Stages _file_ for the next commit                                                                                                                           |
| `git blame`                   | Display which revision and author last modified file                                                                                                        |
| `git branch`                  | List all branches in the repository                                                                                                                         |
| `git checkout <branch>`       | Checkout existing branch _branch_                                                                                                                           |
| `git clean -f`                | Clean files                                                                                                                                                 |
| `git clean -n`                | Display which files would be removed from directory during a clean                                                                                          |
| `git clone <repository>`      | Clone repository onto local computer                                                                                                                        |
| `git commit --amend`          | Replace previous commit with combined last commit and current staged changes. If no staged changes, this is used to edit the message of the previous commit |
| `git commit -m "<message>"`   | Commit changes to repository with message _message_                                                                                                         |
| `git diff`                    | Display unstaged changes between index and working directory                                                                                                |
| `git diff --cached`           | Display difference between staged changes and most recent commit                                                                                            |
| `git init <directory>`        | Create an empty git repository located at _directory_. If no directory argument is given, the current directory is used                                     |
| `git log`                     | Display entire commit history                                                                                                                               |
| `git log --<file>`            | Display commits regarding _file_                                                                                                                            |
| `git log <from>..<to>`        | Display commits between _from_ and _to_                                                                                                                     |
| `git log --<limit>`           | Display _limit_ most recent commits (_limit_ is a number)                                                                                                   |
| `git log --author="<name>"`   | Display commits by _name_                                                                                                                                   |
| `git log --graph`             | Display a graph of commits                                                                                                                                  |
| `git log --graph --decorate`  | Add names of branches or tags of commits to graph                                                                                                           |
| `git log --grep="<term>"`     | Display commits that match the search _term_                                                                                                                |
| `git log --oneline`           | Display commits where each commit is condensed to a single line                                                                                             |
| `git log -p`                  | Display full `diff` of each commit                                                                                                                          |
| `git log --stat`              | Display number of lines added and deleted                                                                                                                   |
| `git merge <branch>`          | Merge branch _branch_ into current branch                                                                                                                   |
| `git mergetool`               | Run merge conflict resolution tool                                                                                                                          |
| `git pull <remote>`           | Fetch remote copy of repository and merge it into local copy. Is a `git fetch` followed by a `git merge`                                                    |
| `git push <remote> <branch>`  | Push _branch_ branch to remote                                                                                                                              |
| `git push <remote> --all`     | Push all local branches to remote                                                                                                                           |
| `git rebase`                  | Apply commits on top of another base                                                                                                                        |
| `git reflog`                  | Show the reference log                                                                                                                                      |
| `git remote add <name> <url>` | Create connection to remote repository following which you can use _name_ in place of _url_ in other commands                                               |
| `git reset <file>`            | Unstage _file_ without overwriting changes                                                                                                                  |
| `git revert <commit>`         | Create a new commit which undoes all the changes in _commit_ and applies the undoing to the current branch                                                  |
| `git shortlog`                | Summarise git log output (grouped by username)                                                                                                              |
| `git stash`                   | Record current state of repository and index and revert to match HEAD commit                                                                                |
| `git status`                  | List status of files (staged, unstaged, and untracked)                                                                                                      |
| `git tag`                     | Mark a known point                                                                                                                                          |
| `gitk`                        | Graphical browser (Alternatively use something like Tortoisegit)                                                                                            |
| `q`                           | Exit without saving changes (e.g. when in the `log`)                                                                                                        |
