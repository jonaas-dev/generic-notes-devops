<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Content](#content)
  - [How to add new alias (from file) ?](#how-to-add-new-alias-from-file-)
  - [How to add a new alias ?](#how-to-add-a-new-alias-)
    - [Create a new alias (not persist)](#create-a-new-alias-not-persist)
    - [Alias persist](#alias-persist)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Content
[Go back!](../README.md)

## How to add new alias (from file) ?

Append in `subl ~/.bash_aliases` or `subl ~/.bashrc` the content of
`alias/my-alias.txt`

## How to add a new alias ?

### Create a new alias (not persist)
- Example:
```bash
# alias name = 'my command'
alias lisa='ls -lisa'
alias forme='f(){ youtube-dl --extract-audio --audio-format mp3 "$1" -o "$2";  mv "$2" /media/username/DATA/Music; unset -f f; }; f'
```

### Alias persist

- Open the file
```bash
subl ~/.bashrc
```

- Find this fragment of code:
```bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```

- Add this example:
``` bash
# My alias
if [ -f ~/.bash_my_aliases ]; then
    . ~/.bash_my_aliases
fi
```

- Fill the file `.bash_my_aliases` with your aliases.
