# Written by Leonardo Mariscal <leo@ldmd.mx>, 2019

## HACK: To avoid namespace pollution you should consider importing as:
##
## `from figures import nil`

# Since the new microsoft terminal is on the horizon forceFigures exists.

when defined(windows):
  from os import getEnv, execShellCmd

  proc isNewWindowsTerminal(): bool =
    # Hopefully https://github.com/microsoft/terminal/issues/1040 comes to be.
    not (getEnv("WT_SESSION") == "")

when not defined(windows) or defined(forceFigures) or isNewWindowsTerminal():
  const
    tick* = "✔"
    cross* = "✖"
    star* = "★"
    square* = "▇"
    squareSmall* = "◻"
    squareSmallFilled* = "◼"
    play* = "▶"
    circle* = "◯"
    circleFilled* = "◉"
    circleDotted* = "◌"
    circleDouble* = "◎"
    circleCircle* = "ⓞ"
    circleCross* = "ⓧ"
    circlePipe* = "Ⓘ"
    bullet* = "●"
    dot* = "․"
    line* = "─"
    ellipsis* = "…"
    pointer* = "❯"
    pointerSmall* = "›"
    info* = "ℹ"
    warning* = "⚠"
    hamburger* = "☰"
    smiley* = "㋡"
    mustache* = "෴"
    heart* = "♥"
    arrowUp* = "↑"
    arrowDown* = "↓"
    arrowLeft* = "←"
    arrowRight* = "→"
    radioOn* = "◉"
    radioOff* = "◯"
    checkboxOn* = "☒"
    checkboxOff* = "☐"
    checkboxCircleOn* = "ⓧ"
    checkboxCircleOff* = "Ⓘ"
    oneHalf* = "½"
    oneThird* = "⅓"
    oneQuarter* = "¼"
    oneFifth* = "⅕"
    oneSixth* = "⅙"
    oneSeventh* = "⅐"
    oneEighth* = "⅛"
    oneNinth* = "⅑"
    oneTenth* = "⅒"
    twoThirds* = "⅔"
    twoFifths* = "⅖"
    threeQuarters* = "¾"
    threeFifths* = "⅗"
    threeEighths* = "⅜"
    fourFifths* = "⅘"
    fiveSixths* = "⅚"
    fiveEighths* = "⅝"
    sevenEighths* = "⅞"
    spinner* = ["⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏"]

  # It doesn't look so good in linux/windows
  when not defined(linux) and not defined(windows):
    const questionMarkPrefix* = "?⃝"
    const circleQuestionMark* = "?⃝"
  else:
    const questionMarkPrefix* = "?"
    const circleQuestionMark* = "(?)"
else:
  const
    tick* = "√"
    cross* = "×"
    star* = "*"
    square* = "█"
    squareSmall* = "[ ]"
    squareSmallFilled* = "[█]"
    play* = "►"
    circle* = "( )"
    circleFilled* = "(*)"
    circleDotted* = "( )"
    circleDouble* = "( )"
    circleCircle* = "(○)"
    circleCross* = "(×)"
    circlePipe* = "(│)"
    circleQuestionMark* = "(?)"
    bullet* = "*"
    dot* = "."
    line* = "─"
    ellipsis* = "..."
    pointer* = ">"
    pointerSmall* = "»"
    info* = "i"
    warning* = "‼"
    hamburger* = "≡"
    smiley* = "☺"
    mustache* = "┌─┐"
    heart* = "♥"
    arrowUp* = "↑"
    arrowDown* = "↓"
    arrowLeft* = "←"
    arrowRight* = "→"
    radioOn* = "(*)"
    radioOff* = "( )"
    checkboxOn* = "[×]"
    checkboxOff* = "[ ]"
    checkboxCircleOn* = "(×)"
    checkboxCircleOff* = "( )"
    questionMarkPrefix* = "？"
    oneHalf* = "1/2"
    oneThird* = "1/3"
    oneQuarter* = "1/4"
    oneFifth* = "1/5"
    oneSixth* = "1/6"
    oneSeventh* = "1/7"
    oneEighth* = "1/8"
    oneNinth* = "1/9"
    oneTenth* = "1/10"
    twoThirds* = "2/3"
    twoFifths* = "2/5"
    threeQuarters* = "3/4"
    threeFifths* = "3/5"
    threeEighths* = "3/8"
    fourFifths* = "4/5"
    fiveSixths* = "5/6"
    fiveEighths* = "5/8"
    sevenEighths* = "7/8"
    spinner* = ["-", "\\", "|", "/"]

  # This hack is used to display UTF-8 in the Windows command prompt.
  when not defined(nochcp):
    discard execShellCmd("@chcp 65001 > nul")
