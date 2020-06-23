#!/bin/sh
export GPG_TTY=$(tty)

gpg-connect-agent reloadagent /bye
in-toto-record start -n build --gpg -m . -v
/bin/$(basename $0)
in-toto-record stop -n build --gpg -p . -v
