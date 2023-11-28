Set username and email

```
git config --global user.name "DESIRED USER NAME"
git config --global user.email "DESIRED EMAIL@FOR-USER.EU"
```

To fix this for the most recent commit run
```
git commit --amend --reset-author
```

To fix this from a certain point onward, find the last commit (`NNNNNNNN`) with the correct author and run (NB, this might be a dangerous idea in a shared repo)
```
git rebase -i NNNNNNNN -x "git commit --amend --reset-author -CHEAD"
```
