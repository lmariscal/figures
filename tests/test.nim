# Copyright (C) CavariuX. License on the root folder.
# Written by Leonardo Mariscal <cavariux@cleverbyte.io>, 2018

import
  figures, os, terminal

proc main =
  var
    i = 0
    n = 0
  while n < 100:
    sleep(50)
    stdout.eraseLine()
    stdout.write(figures.spinner[i] & " installing something")
    stdout.flushFile()
    i.inc; n.inc
    if i > high(figures.spinner): i = 0
  stdout.eraseLine()
  echo(figures.tick & " installing something")
main()
