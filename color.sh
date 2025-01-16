#!/bin/bash

# if [[ -z COLORS ]]; then

declare -A colors

end="\e[0m"
m="m"

function clr () {
  echo "\e[38;2;$1;$2;$3$m"
}

function encolor () {
  local a=$1
  shift
  local b=$@
  echo "${colors[$a]}$b$end"
}

function colorfy () {
  local input="$1"
  local output=""
  while IFS= read -r line; do
    if [[ $line == \##* ]]; then
      line=$(lightorange "$line")
    fi
    if [[ $line == \#* ]]; then
      line=$(orange "$line")
    fi
    # if [[ $line == \---* ]]; then
    #   line=$(color orange "$line")
    # fi
    # if [[ $line == \```* ]]; then
    #   line=$(color watchmen "$line")
    # fi
    output+="$line"$'\n'
  done <<< "$input"
  echo "$output"
}

end="\e[0m"
m="m"

colors[pink]=$(clr 255 150 150)

colors[red]=$(clr 255 59 59)
colors[lightred]=$(clr 255 127 127)
colors[darkred]=$(clr 127 0 0)

colors[orange]=$(clr 255 127 0)
colors[lightorange]=$(clr 255 200 50)
colors[darkorange]=$(clr 127 100 0)

colors[yellow]=$(clr 255 255 0)
colors[lightyellow]=$(clr 255 255 150)
colors[darkyellow]=$(clr 127 127 0)

colors[green]=$(clr 50 255 50)
colors[lightgreen]=$(clr 127 255 127)
colors[darkgreen]=$(clr 0 127 0)

colors[cyan]=$(clr 50 255 255)
colors[lightcyan]=$(clr 127 255 255)
colors[darkcyan]=$(clr 0 127 127)

colors[blue]=$(clr 50 50 255)
colors[lightblue]=$(clr 127 127 255)
colors[darkblue]=$(clr 0 0 127)

colors[magenta]=$(clr 255 50 255)
colors[lightmagenta]=$(clr 255 127 255)
colors[darkmagenta]=$(clr 127 0 127)

colors[black]=$(clr 0 0 0)
colors[white]=$(clr 255 255 255)

colors[grey]=$(clr 127 127 127)
colors[grey20]=$(clr 50 50 50)
colors[grey40]=$(clr 100 100 100)
colors[grey60]=$(clr 150 150 150)
colors[grey80]=$(clr 200 200 200)

colors[watchmen]=$(clr 255 204 0)


function pink () { echo "$(encolor $FUNCNAME "$@")"; }

function red () { echo "$(encolor $FUNCNAME "$@")"; }
function lightred () { echo "$(encolor $FUNCNAME "$@")"; }
function darkred () { echo "$(encolor $FUNCNAME "$@")"; }

function orange () { echo "$(encolor $FUNCNAME "$@")"; }
function lightorange () { echo "$(encolor $FUNCNAME "$@")"; }
function darkorange () { echo "$(encolor $FUNCNAME "$@")"; }

function yellow () { echo "$(encolor $FUNCNAME "$@")"; }
function lightyellow () { echo "$(encolor $FUNCNAME "$@")"; }
function darkyellow () { echo "$(encolor $FUNCNAME "$@")"; }

function green () { echo "$(encolor $FUNCNAME "$@")"; }
function lightgreen () { echo "$(encolor $FUNCNAME "$@")"; }
function darkgreen () { echo "$(encolor $FUNCNAME "$@")"; }

function cyan () { echo "$(encolor $FUNCNAME "$@")"; }
function lightcyan () { echo "$(encolor $FUNCNAME "$@")"; }
function darkcyan () { echo "$(encolor $FUNCNAME "$@")"; }

function blue () { echo "$(encolor $FUNCNAME "$@")"; }
function lightblue () { echo "$(encolor $FUNCNAME "$@")"; }
function darkblue () { echo "$(encolor $FUNCNAME "$@")"; }

function magenta () { echo "$(encolor $FUNCNAME "$@")"; }
function lightmagenta () { echo "$(encolor $FUNCNAME "$@")"; }
function darkmagenta () { echo "$(encolor $FUNCNAME "$@")"; }

function black () { echo "$(encolor $FUNCNAME "$@")"; }
function white () { echo "$(encolor $FUNCNAME "$@")"; }

function grey () { echo "$(encolor $FUNCNAME "$@")"; }
function grey20 () { echo "$(encolor $FUNCNAME "$@")"; }
function grey40 () { echo "$(encolor $FUNCNAME "$@")"; }
function grey60 () { echo "$(encolor $FUNCNAME "$@")"; }
function grey80 () { echo "$(encolor $FUNCNAME "$@")"; }

function watchmen () { echo "$(encolor $FUNCNAME "$@")"; }

export -f pink

export -f red
export -f lightred
export -f darkred

export -f orange
export -f lightorange
export -f darkorange

export -f yellow
export -f lightyellow
export -f darkyellow

export -f green
export -f lightgreen
export -f darkgreen

export -f cyan
export -f lightcyan
export -f darkcyan

export -f blue
export -f lightblue
export -f darkblue

export -f magenta
export -f lightmagenta
export -f darkmagenta

export -f black
export -f white

export -f grey
export -f grey20
export -f grey40
export -f grey60
export -f grey80

export -f watchmen

export -f clr
export -f encolor

export COLORS=true

