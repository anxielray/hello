# _*Checkout*_

## _*Restore First Snapshot*_

- To revert your working directory to the very first commit, use the ``git reset`` command with the ``--hard`` option.
- Find the hash of the initial commit by running the git log command and looking for the earliest commit ``git log``
- The initial commit will be the one with the earliest timestamp.
- Once you have the hash of the initial commit, use the following command to reset your working directory to that commit:

```bash
git reset --hard <initial-commit-hash>
```

- The --hard option tells Git to discard all local changes, both in the working directory and the staging area, and move the branch pointer to the specified commit.
- After running this command, your working directory will be reverted to the state of the initial commit, and all subsequent commits will be removed from the branch history.

## _*Restore Second Recent Snapshot*_

- To revert the working tree to the second most recent snapshot and print the content of the hello.sh file, run:

```bash
git checkout HEAD~2
cat hello.sh
```

- This will revert the working tree to the second most recent snapshot and display the content of the hello.sh file.

## _*Return to Latest Version*_

- To ensure that the working directory reflects the latest version of the hello.sh file present in the main branch, without referring to specific commit hashes, run:

```bash
git checkout main
cat hello.sh
```

- This will update the working directory to reflect the latest version of hello.sh from the main branch and display its content.

- Note:
  - The ``HEAD~1`` syntax refers to the first parent commit of the current commit
  - ``HEAD~2`` refers to the second parent commit. By checking out these commits, you can revert to previous versions of your files.
  - After reverting to the initial commit, we cannot literally switch to the latest commit by the ``git checkout main`` command, since, the later commits were deleted. To reverse the process, you can track the latest commit hash by running ``git reflog`` and checkout revert to the hash, this will reset things back to normal.
