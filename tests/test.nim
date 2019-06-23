# Written by Leonardo Mariscal <leo@ldmd.mx>, 2019

import os, terminal
from figures import nil

var
  i = 0
while i < 30:
  stdout.eraseLine()
  stdout.write(figures.spinner[i mod figures.spinner.len] & " installing something")
  stdout.flushFile()
  i.inc
  sleep(100)
stdout.eraseLine()
echo(figures.tick & " installing something")

echo "tick " & figures.tick
echo "cross " & figures.cross
echo "star " & figures.star
echo "square " & figures.square
echo "squareSmall " & figures.squareSmall
echo "squareSmallFilled " & figures.squareSmallFilled
echo "play " & figures.play
echo "circle " & figures.circle
echo "circleFilled " & figures.circleFilled
echo "circleDotted " & figures.circleDotted
echo "circleDouble " & figures.circleDouble
echo "circleCircle " & figures.circleCircle
echo "circleCross " & figures.circleCross
echo "circlePipe " & figures.circlePipe
echo "circleQuestionMark " & figures.circleQuestionMark
echo "bullet " & figures.bullet
echo "dot " & figures.dot
echo "line " & figures.line
echo "ellipsis " & figures.ellipsis
echo "pointer " & figures.pointer
echo "pointerSmall " & figures.pointerSmall
echo "info " & figures.info
echo "warning " & figures.warning
echo "hamburger " & figures.hamburger
echo "smiley " & figures.smiley
echo "mustache " & figures.mustache
echo "heart " & figures.heart
echo "arrowUp " & figures.arrowUp
echo "arrowDown " & figures.arrowDown
echo "arrowLeft " & figures.arrowLeft
echo "arrowRight " & figures.arrowRight
echo "radioOn " & figures.radioOn
echo "radioOff " & figures.radioOff
echo "checkboxOn " & figures.checkboxOn
echo "checkboxOff " & figures.checkboxOff
echo "checkboxCircleOn " & figures.checkboxCircleOn
echo "checkboxCircleOff " & figures.checkboxCircleOff
echo "questionMarkPrefix " & figures.questionMarkPrefix
echo "oneHalf " & figures.oneHalf
echo "oneThird " & figures.oneThird
echo "oneQuarter " & figures.oneQuarter
echo "oneFifth " & figures.oneFifth
echo "oneSixth " & figures.oneSixth
echo "oneSeventh " & figures.oneSeventh
echo "oneEighth " & figures.oneEighth
echo "oneNinth " & figures.oneNinth
echo "oneTenth " & figures.oneTenth
echo "twoThirds " & figures.twoThirds
echo "twoFifths " & figures.twoFifths
echo "threeQuarters " & figures.threeQuarters
echo "threeFifths " & figures.threeFifths
echo "threeEighths " & figures.threeEighths
echo "fourFifths " & figures.fourFifths
echo "fiveSixths " & figures.fiveSixths
echo "fiveEighths " & figures.fiveEighths
echo "sevenEighths " & figures.sevenEighths
