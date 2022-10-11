# Some information when working with make and make file.
![Minion](https://octodex.github.com/images/minion.png)

1. There are different version of command line interpreter.
    - cmd.exe = command-line interpreter (CLI) for Microsoft Windows
        - When it was launched? 1987. For Windows and some other OS's but not for Unix.
        - Why it is used? - to automate routine tasks.
        - CMD is used as a shell.
        - This has pre-built commands like cd, copy, paste, ping etc.
    
    - Windows Powershell - Launched in 2002.
        - Why? to be equally competetive to Linux Shell for task automation.
        - What is it? This is Command-line shell and has all the features that CMD has and powershell is also object oriented.

    - Bash (Bourne Again Shell) - most popular command line interfaces in UNIX.
        - Bash is a shell equiavalent to Powershell but in UNIX.
        - it is open source, command-line editing available and others like key-binding, command history etc.


![Differences](images/first.png)

- Now coming to make files.
- Beautiful make file tutorial.
- https://makefiletutorial.com/#why-do-makefiles-exist

In Windows, there are two kinds of make software.
- First one is provided by MinGW - make
- Another one is provided by Msys - make
- Msys make is better than MinGW as the former will give access to commands which are portable in UNIX systems as well.
- For example - "rm" is present in msys make but not in mingw make, and some others like "ls" which is list directories present in msys but not in mingw.
- So use msys make instead of mingw make. 