#--**Linux Scripting Tutorial**
:Linux is a _Unix-like_, open source and community developed os for which is capable of handling activities from multiple users at the same time.

## CONTENTS

1. [what-is-the-kernel](#what-is-the-kernel)

2. [Basic Linux Commands](#basic-commands-in-the-linux-shell)

3. [Command Line Essentials](#command-line-essentials)

- [CLI vs GUI](#cli-vs-gui)
- [What is Cli](#what-is-cli)

5. [Shell Scripting](#shell-scripting)

- [Basics](#shell-scripting-basics)

## What is the Kernel

:The computer programs that allocate the system resources and coordinate all the details of the computer's internals is called the operating system or the Kernel.Users communicate with the OS through a program called the _Shell_

## Basic Commands in the Linux Shell

1. **nano**
   :nano is a text editor like vim or emacs. _To use it just append the file name at the end to open a file._ For Instance :`nano textFile.txt`

2. **pwd**
   :Shows current Directory. _Result_ :`/home/kolynz`

3. **ls**
   :Lists all files in a directory. _For Instance_ :`ls /home/ #this will list the files in the home directory.and if its not accompannied with a path name it lists those in the current directory`

4. **`--help`**
   :This flag gives you a list of flags associated with a particular Command. _For Instance_ :`ls --help`

5. **`ls -l`**
   :List files in a long format. _Results_

```drwxrwxrwx 1 kolynzb kolynzb 512 Feb 21 07:26 insp
-rwxrwxrwx 1 kolynzb kolynzb 282 Oct 21 21:15 desktop.ini
-rwxrwxrwx 1 kolynzb kolynzb 2224 Mar 1 10:14 Discord.lnk

permissions notsure user user-group not-sure date-created time-created file-name
r - read
w - write
x - executable
```

6. **cp**
   :Copies files to a directory._For Instance_ `cp test.txt /test` will copy test.txt to /test directory.

7. **mv**
   :Moves files. _For Instance_ `mv test.txt /test` will move test.txt to /test directory.

8. **echo**
   :Prints to the console. _For Instance_ `echo 'hello world'`.

9. **cat**
   :Concatenates contents of a test file to a terminal _Syntax_ `cat test.txt`

10. **less**
    :displays contents of a test file to a terminal in a new window _Syntax_ `less test.txt`

11. **grep**
    :Grabs data from file or command passed in. _Syntax_`mv --help | grep verbose #is the verbose command available for the move command and what it does`

12. **touch**
    :Creates a new file in current directory _Syntax_ `touch test.txt`

13. **mkdir**
    :Creates a new directory _Syntax_ `mkdir test`

14. **cd**
    :Moves into a new directory _Syntax_ `cd test/`

15. **chmod**
    :used to alter file permissions _Syntax_ `chmod +w text.sh #just adds a writing permission to the file` **or** `git add --chmod=+x . #makes all files added to staging area executable`

: `chmod 777 test.sh #makes this executable but these numbers are the user the group, others the file name in that order `

| number | equavalent | meaning | description                |
| ------ | ---------- | ------- | -------------------------- |
| 0      | 0          | nothing | nobody get any information |
| 1      | 1          | execute | execute                    |
| 2      | 2          | write   | write                      |
| 3      | 2+1        | w+x     | read and write             |
| 4      | 4          | read    | read                       |
| 5      | 4+1        | r+x     | read and execute           |
| 6      | 6          | r+x     | read and write             |
| 7      | 4+2+1      | r+w+x   | All Permissions            |

_so when one writes `chmod 777 filename` the first 7 allows the user to read, write and execute.The second applies to the user group and the last applies to everybosy else._

14. **man**
    :displays a manual explaining a Command. _Syntax_ `man test`

## Command Line Essentials

### **CLI vs GUI**

| ClI(_Command Line Interface_) | GUI(_Graphical User Interface_) |
| ----------------------------- | ------------------------------- |
| -console representational     | -Graphical represatation        |
| -Difficult for beginners      | -Easy to use                    |
| -Faster OS                    | -Os is slower                   |
| -Granular Control             | -Lesser Control                 |
| -Cooler :sunglasses:          | :satisfied:                     |

_Remember Its a personal choice but for scripting its way better to use CLI :dissapointed_relieved:_

### what is CLI

:Is a text-based interface used to interact with a software and operating system by typing commands into the interface and receive a response in the same way._Easy to scale up and controll and less memory usage_

## Shell Scripting

:Shell is a command line intepreter.it translates commands entered by a user and converts them into a language understood by the [Kernel](#what-is-the-kernel)

:Shell Script is a list of commands,which are listed in order of execution.a good shell script will have comments preceded with a hashtag sign,descibing the steps.

### Shell Scripting Basics

There are two main broad types
| BOURNE SHELL TYPES | C SHELL TYPES |
| ------------------ | ------------------ |
| Bourne shell | C shell |
| korn shell | TENEX/TOPS C shell |
| Bourne-Again shell (BASH) | Z shell |
| POSIX shell | C shell |

### Lets begin

-create a file with .sh extension
-add a Shebang at the top `#! usr/bin/bash` (_bin/sh is the absolute path to the interpreter which is gotten by `which bash`_)

- **1. Variables**

  - [1.Variables](./01-variables.sh):
    Variable is a character string which we assign a value(_Value assigned can be a number,text,filename,device,or other type of data_).
    They are of 3 types
    1.Local(_that is preset in the current instance of a shell_)
    2.Environment/Global(_Is avalable to any child process of the shell_)
    3.Shell(_Set by the shell and is required by the shell in order to function correctly. Some of these are either global or local variables_)

- **1. Basic Operators**

  - 1.Operators
    **Arithmetic Operators**

    | Operator      | Purpose                                                        | Example                       |
    | ------------- | -------------------------------------------------------------- | ----------------------------- |
    | +(Addition)   | adds values on either side of the operator                     | `expr $a + $b` will give 30   |
    | -(Subtract)   | Subtract values on either side of the operator                 | `expr $a - $b` will give -10  |
    | \*(Multiply)  | Multiply values on either side of the operator                 | `expr $a \* $b` will give 200 |
    | /(Division)   | Divides values on either side of the operator                  | `expr $a / $b` will give 2    |
    | %(Modulus)    | Divides values on either side of the operator returns reminder | `expr $a % $b` will give 0    |
    | =(Assignment) | asigns left to right                                           | ` $a = $b` assign a to b      |
    | ==(Equality)  | Compares two characters and returns a boolean                  | ` [$a == $b]` return false    |
    | !=(Not equal) | Compares two characters and returns a boolean                  | ` [$a != $b]` return true     |

    **Relational Operators**

    | Operator | Purpose                                                          | Example                    |
    | -------- | ---------------------------------------------------------------- | -------------------------- |
    | -eq      | checks equality of two operands                                  | ` [$a -eq $b]` is not true |
    | -ne      | checks none equality of two operands                             | ` [$a -ne $b]` is true     |
    | -gt      | checks if the 1st operand is greater of two operands             | ` [$a -gt $b]` is not true |
    | -lt      | checks if the 1st operand is less of two operands                | ` [$a -lt $b]` is true     |
    | -ge      | checks if the 1st operand is greater or equal to the 2nd operand | ` [$a -ge $b]` is not true |
    | -le      | checks if the 1st operand is less or equal to the 2nd operand    | ` [$a -le $b]` is true     |

    Boolean Operators
    |Operator|Purpose|Example|
    |-----|-----|-----|
    | ! | logical negation | ` [!false]]` is true |
    | -o | logical OR | ` [false -o true]]` is true |
    | -a | logical AND | ` [false -a true ]` is false |

    String Operators
    |Operator|Purpose|Example|
    |-----|-----|-----|
    | = | checks equality of two operands| ` [$a = $b]` is not true |
    | != | checks inequality of two operands| ` [$a != $b]` is true |
    | -z | checks if given operand size is zero| ` [-z $a]` is not true |
    | -n | checks if given operand size is non-zero| ` [-n $a]` is true |
    | str | checks if str is not an empty string| ` [-n $a ]` is true |

    **File Operators(Bourne-shell-specific)**
    |Operator|Purpose|Example|
    |-----|-----|-----|
    | -b file | checks if file is block special file | ` [-b $file]` is false |
    | -c file | checks if file is character special file | ` [-c $file]` is false |
    | -d file | checks if file is a directory | ` [-d $file]` is not true |
    | -f file | checks if file is ordinary file as opposed to a special file or directory | ` [-f $file]` is true |
    | -g file | checks if file has its group id set to (SGID) bit set | ` [-g $file]` is false |
    | -k file | checks if file has sticky bit set | ` [-k $file]` is false |
    | -p file | checks if file is a named pipe | ` [-p $file]` is false |
    | -t file | checks if file descriptor is open and associated with the terminal | ` [-t $file]` is false |
    | -u file | checks if file has its Set User ID bit(SUID) set | ` [-u $file]` is false |
    | -r file | checks if file is readable| ` [-r $file]` is true |
    | -w file | checks if file is writable | ` [-w $file]` is true |
    | -x file | checks if file is executable | ` [-x $file]` is true |
    | -s file | checks if file size is greater than zero | ` [-s $file]` is true |
    | -e file | checks if file exists | ` [-e $file]` is true |

- **3. Loops**

  - [3.Loops](./03-loops.sh):
    These are loops
    -while
    -for
    -until
    -nested -_break,continue_

- **4. Functions**

  - [4.functions](./04.functions.sh):
    Are Blocks of code that can be called multiple times
    -function with params
    -recurssive (calls itself)

- **5. Use Cases** - [4.functions](./01.example-use-cases/):
  these are a few use cases t

[^sources]: Most of the information was retrieved from [Edureka](#http://www.edureka.com) ,cheatsheets from [cheatography](#https://cheatography.com/) , [Travesy Media]()
