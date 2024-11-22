WARNING: UPDATE PAUSED







# abcd's brew

`A fork of Homebrew that fit different ideas.`

General ideas: sandboxing, no joking (If you just try "brew install updog" in upstream version)

## Chages

- Casks disabled

  if you try to run anything related to casks, it will stop you. That's becasue casks are not sandboxing due to what it have to do.

- ENV file now at ${HOMEBREW_REPOSITORY}/Library/Configs/brew.env

  You might even not know, there's something called Homebrew User Config Home, sometimes they load config filed from it. It's now at ${HOMEBREW_REPOSITORY}/Library/Configs

- Cahces and Logs are now under ${HOMEBREW_REPOSITORY}/Library
- Markdown version of man page is now at ${HOMEBREW_REPOSITORY}/manpages/Manpage.md

## Installer

Installer is comming soon. 

Currently just do `git clone --branch=master https://github.com/xycabcd/brew --depth=0`

## Our next step

Homebrew consists lot of suggestions that let you to set the onwer of a directory to yourself. I'm trying to delete them.
