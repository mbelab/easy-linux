# git

Git is a distributed version control system for source code management or data in general.

Any files in so called repositories (repos) can be tracked and therefore easily versioned and also distributed.

Beside local usage for versioning of local files, Git in combination with a Git Server enables data distribution and collaborative work.

- [Installation](#installation)
- [Setup](#setup)
- [Usage](#usage)
- [Best Practice](#best-practice)
- [Links](#links)

## Installation

Git is available for Linux, Microsoft Windows (`Git for Window`) and macOS (via `homebrew`).

For Linux, use the preferred package manager, e.g. `apt` for Debian (-based) distributions:

    $ apt install git

## Setup

After installation and before working with Git, one needs to set up Git properly.

Therefore, a `.gitconfig` file needs to be added to the users home directory.
See provided [file](../etc/git/.gitconfig) for a good starting point.

Next step is to setup `ssh` for Git usage:

    # add RSA key with 4096 bit (best compatibility)
    $ ssh-keygen -t rsa -b 4096

    # add ED25519 key (best performance)
    $ ssh-keygen -t ed25519

## Usage

Git itself is a command-line tool, but there are some good GUIs or integrations into IDEs and editors (like in `VS Code`).

Some frequently used commands:

    # init directory as new Git repository
    $ git init
 
    # clone a given repository from remote server (example)
    git clone ssh://git@github.com:go-gitea/gitea.git
 
    # check local repository state
    git status
 
    # show information about current repository state (commit)
    git show
 
    # show git commit history (log)
    git log
 
    # pull latest commits from remote server (current branch)
    git pull
 
    # commit local changes for later push to server (all files)
    git add .
    git commit -m "example commit"
 
    # push local commits (and tags) to remote server
    git push

## Best Practice

1. A repository always contain a `README.md` file on toplevel
2. A repository always contain a `.gitignore` file on toplevel
3. Pull or fetch and rebase before integration of work
4. Small commits improve traceability
5. Meaningful commit messages improve traceability

## Links

- [Wikipedia](https://en.wikipedia.org/wiki/Git)
- [Project](https://git-scm.com)
- [Reference](https://git-scm.com/docs)
- [Atlassian Git Info](https://www.atlassian.com/git)
- [Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials)
- [Atlassian Git Cheatsheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
