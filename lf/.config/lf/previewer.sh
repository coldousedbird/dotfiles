#!/bin/bash
#unset COLORTERM
#bat --color=always "$1"
draw() {
  kitten icat --stdin no --transfer-mode memory --place "${w}x${h}@${x}x${y}" "$1" </dev/null >/dev/tty
  exit 1
}
case "$1" in
  *.tar*) tar tf "$1";;
  *.zip) unzip -l "$1";;
  *.rar) unrar l "$1";;
  *.7z) 7z l "$1";;
  *.pdf) pdftotext "$1" -;;
  *) bat --force-colorization "$1";;
esac
# file="$1"
# w="$2"
# h="$3"
# x="$4"
# y="$5"
# MIME=$(mimetype --all --brief "$1")
# echo "$MIME"
# 
# case "$MIME" in
# #case "$(file -Lb --mime-type "$file")" in 
#   image/*)
#     draw "$file"
#     ;;
#   *text/*)
#     # return false to always repaint, in case terminal size changes
#     #bat --force-colorization --paging=never --style=changes,numbers \
#     #    --terminal-width $(($2 - 3)) "$1" && false
#     bat $1
#     ;;
#   *)
#     echo "unknown format"
#     ;;
#   # video/*)
#     # vidthumb is from here:
#     # https://raw.githubusercontent.com/duganchen/kitty-pistol-previewer/main/vidthumb
#     # draw "$(vidthumb "$file")"
#     ;;
# esac
