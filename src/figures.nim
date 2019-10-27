# Written by Leonardo Mariscal <leo@ldmd.mx>, 2019

## HACK: To avoid namespace pollution you should consider importing as:
##
## `from figures import nil`

when defined(windows):
  from os import getEnv, execShellCmd

  # This hack is used to display UTF-8 in the Windows command prompt.
  when not defined(nochcp):
    discard execShellCmd("@chcp 65001 > nul")

  proc terminalSupportUnicode(): bool =
    # Hopefully https://github.com/microsoft/terminal/issues/1040 comes to be.
    getEnv("WT_SESSION") != "" or getEnv("TERM_PROGRAM") == "vscode"
else:
  proc terminalSupportUnicode(): bool = true

when terminalSupportUnicode():
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
    point* = "❯"
    pointerSmall* = "›"
    info* = "ℹ"
    warning* = "⚠"
    hamburger* = "☰"
    smiley* = "㋡"
    mustache* = "෴"
    heart* = "♥"
    nodejs* = "⬢"
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
  when defined(linux) or defined(windows):
    const questionMarkPrefix* = "?"
  else:
    const questionMarkPrefix* = "?⃝"

  when defined(windows):
    const circleQuestionMark* = "(?)"
  else:
    const circleQuestionMark* = "?⃝"
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
    point* = ">"
    pointerSmall* = "»"
    info* = "i"
    warning* = "‼"
    hamburger* = "≡"
    smiley* = "☺"
    mustache* = "┌─┐"
    heart* = "♥"
    nodejs* = "♦"
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
