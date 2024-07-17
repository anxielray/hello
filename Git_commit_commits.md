# _*Git Commits to Commit*_

### Step 1: Create a Subdirectory and File

Within the work directory, establish a subdirectory named `hello`. Inside this directory, generate a file titled `hello.sh` and input the following content:

```bash
echo "Hello, World" >> hello.sh
```
    

### _*Initialize Git Repository and Check Status*_

- Initialize the Git repository in the hello directory using the command:

```bash
git init
```

- Check the status of the repository using the command:

```bash
git status
```

- The output should indicate that the directory is empty.

```bash
```

### _*Modify File and Stage Changes*_

- Modify the hello.sh file to include comments and stage the changes:

```bash
#!/bin/bash

# Default is "World"
name=${1:-"World"}
echo "Hello, $name"
```

- Stage the changed file using the command:

```bash
git add hello.sh
```

### _*Commit Changes*_

- Make two separate commits:

  - Commit 1: Commit the comment added in line 3.

```bash
git commit -m "Added comment"
```

  - Commit 2: Commit changes made to lines 4 and 5.

```bash
git add hello.sh
git commit -m "Modified hello.sh script"
```

- The working tree should now be clean.
