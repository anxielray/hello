# _*Changed Your Mind?*_

## _*Reverting Changes*_

- To modify the latest version of the file with unwanted comments, then revert it back to its original state before staging using a Git command, follow these steps:

```bash
#!/bin/bash

# This is a bad comment. We want to revert it.
name=${1:-"World"}

echo "Hello, $name"
```

- Revert the changes back to their original state using the following command:

```bash
git checkout -- hello.sh
```

- This will discard any local changes made to the file and restore it to its previous state.

## _*Staging and Cleaning*_

- Introduce unwanted changes to the file:

```bash
#!/bin/bash

# This is an unwanted but staged comment
name=${1:-"World"}

echo "Hello, $name"
```

- Stage them:

```bash
git add hello.sh
```

- Clean the staging area:

```bash
git restore --staged <filename>
```

to discard the changes:

```bash
git restore <filename>
```

## _*Committing and Reverting*_

- Add the following unwanted changes again, stage the file, commit the changes, then revert them back to their original state, follow these steps:

```bash
#!/bin/bash

# This is an unwanted but committed change
name=${1:-"World"}

echo "Hello, $name"
```

- Stage the changes.
- Commit the changes.
- To revert the changes, we'll use ``git revert`` with the ``commit hash`` of the unwanted change:

```bash
git revert HEAD
```

- This will create a new commit that undoes the previous change.

## _*Tagging and Removing Commits*_

### _*Tagging the Latest Commit*_

- To tag the latest commit with ``oops``, run the following command:

```bash
git tag oops HEAD
```

- This will create a new tag named ``oops`` pointing to the latest commit.

### _*Removing Commits*_

- To remove commits made after the v1 version, use ``git reset`` with the option ``--hard``. For example:

```bash
git reset --hard v1
```

- This will reset the HEAD to the commit with the tag v1 and discard all commits made after it.

### _*Ensuring HEAD Points to v1*_

- Verify that the HEAD now points to the commit with the tag v1 by running:

```bash
git log -1
```

- This should display the commit with the tag v1.

### _*Displaying Logs with Deleted Commits*_

#### _*Showing Logs with Deleted Commits*_

- To display logs with deleted commits, including the one tagged as oops, run:

```bash
git log --graph --all
```

- This will show a graph of all commits, including the deleted ones.

#### _*Cleaning Unreferenced Commits*_

- To ensure that unreferenced commits are deleted from history, use:

```bash
git prune
```

- This will remove any unreachable commits from your local repository.

#### _*Author Information*_

- To add an author comment to the file, open it in a text editor and add a line at the top:

```bash
#!/bin/bash

# Default is World
# Author: Raymond Ogwel <anxielworld@gmail.com>
name=${1:-"World"}

echo "Hello, $name"
```

#### _*Adding the Author's email*_

- To do this without making a new commit!
- After making the changes on the file, we are going to do a special commit:

```bash
git commit --amend --no-edit
```

- This will update the commit message without changing the commit itself.
