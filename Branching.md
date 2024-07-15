# _*Branching in Git*_

## _*Creating and Switching to a New Branch*_

- Create a local branch named ``greet`` and switch to it using the following Git command:

```bash
git branch greet
git checkout greet
```

- Adding Changes to the greet Branch
- In the lib directory, create a new file named ``greeter.sh`` and add the provided code to it:

```bash
#!/bin/bash

Greeter() {
    who="$1"
    echo "Hello, $who"
}
```

- Commit these changes using:

```bash
git add lib/greeter.sh
git commit -m "Added greeter.sh file"
```

- Next, update the lib/hello.sh file by adding the content below, staging and committing the changes:

```bash
#!/bin/bash

source lib/greeter.sh

name="$1"
if [ -z "$name" ]; then
    name="World"
fi

Greeter "$name"
```

- Commit these changes using:

```bash
git add lib/hello.sh
git commit -m "Updated hello.sh file"
```

## _*Updating the Makefile*_

- Add the following comment and commit the changes to the Makefile:

```bash
# Ensure it runs the updated lib/hello.sh file
TARGET="lib/hello.sh"

run:
    bash ${TARGET}
```

- Commit these changes using:

```bash
git add Makefile
git commit -m "Updated Makefile"
```

## _*Comparing Branches*_

- Switch back to the main branch using:

```bash
git checkout main
```

### _*Difference*_

- To compare and show the differences between branches in Git, you can use the ``git diff`` command with the ``--stat`` option:

```bash
git diff <branch1> <branch2> --stat -- <file to compare>
```

- This will show a summary of the changes, including the number of added, modified, and deleted lines of a specific file.

## _*Commit Tree Diagram*_

- To have a graphical representation if the commits, we run:

```bash
git log --graph --oneline --all
```

- Shows the commit history in a better way, more graphical, showing the branching as well.
