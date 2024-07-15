# _*Local and Remote Repositories*_

- To create a copy of the original repo called ``hallo/`` in another directory called ``clone_hello/``, using the command:

```bash
git clone hello/ cloned_hello
```

## _*Showing Logs for the Cloned Repository*_

- To show the logs for the cloned repository using:

```bash
cd cloned_hello
git log
```

## _*Displaying Remote Repository Information*_

- Display the name of the remote repository and provide more information about it using:

```bash
git remote show origin
```

## _*Listing Remote and Local Branches*_

- List all remote and local branches in the cloned_hello repository using:

```bash
git branch -a
```

## _*Making Changes to the Original Repository*_

- Make changes to the original repository by updating the README.md file with the provided content. Commit the changes using.

## _*Fetching Changes from Remote Repository*_

- Inside the cloned repository, fetch the changes from the remote repository and display the logs using:

```bash
git fetch
git log
```

- This should include commits from the hello repository.

## _*Merging Changes from Remote Main Branch into Local Main Branch*_

- Merge the changes from the remote main branch into the local main branch using:

```bash
git checkout main
git merge origin/main
```

## _*Adding a Local Branch Tracking Remote Origin/Greet Branch*_

- Add a local branch named greet tracking the remote origin/greet branch using:

```bash
git checkout -b greet --track origin/greet
```

- ``--track origin/greet`` : Sets the upstream branch for the greet branch to origin/greet, which means that the greet branch will track the remote origin/greet branch.
- ``git branch -vv`` command. This will show all the local branches along with their tracking configuration. You should see the greet branch listed with its upstream branch set to origin/greet.

## _*Adding a Remote and Pushing Branches to Remote*_

```bash
git push --set-upstream origin greet
```

- This command pushes the greet branch to the remote repository and sets the upstream branch for the local greet branch to the remote origin/greet branch.
- After running this command, any subsequent ``git push`` or ``git pull`` commands on the greet branch will automatically use the origin/greet branch as the upstream branch.

### <font color="magenta">_*Audit Malicious Question!*_</font>

- Well, the single command that will, fetch the latest version of the code from Git, and then merge it with our new, local changes is:

```bash
git pull
```
