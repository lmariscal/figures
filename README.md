# figures

> Unicode symbols with Windows CMD fallbacks


Windows CMD only supports a [limited character set](http://en.wikipedia.org/wiki/Code_page_437).

### Totally based from npm [figures](https://github.com/sindresorhus/figures) by sindresorhus

## Install

```
$ nimble install figures
```

## Usage

See the [source](src/figures.nim) for supported symbols.

```nim
import figures

echo(figures.tick & " done")
// On real OSes:  ✔︎ done
// On Windows:    √ done
```

## Figures

| Name               | Real OSes                    | Windows |
| ------------------ | :-------:                    | :-----: |
| tick               | ✔                            | √       |
| cross              | ✖                            | ×       |
| star               | ★                            | *       |
| square             | ▇                            | █       |
| squareSmall        | ◻                            | [ ]     |
| squareSmallFilled  | ◼                            | [█]     |
| play               | ▶                            | ►       |
| circle             | ◯                            | ( )     |
| circleFilled       | ◉                            | (*)     |
| circleDotted       | ◌                            | ( )     |
| circleDouble       | ◎                            | ( )     |
| circleCircle       | ⓞ                            | (○)     |
| circleCross        | ⓧ                            | (×)     |
| circlePipe         | Ⓘ                            | (│)     |
| circleQuestionMark | ?⃝                            | (?)     |
| bullet             | ●                            | *       |
| dot                | ․                            | .       |
| line               | ─                            | ─       |
| ellipsis           | …                            | ...     |
| pointer            | ❯                            | >       |
| pointerSmall       | ›                            | »       |
| info               | ℹ                            | i       |
| warning            | ⚠                            | ‼       |
| hamburger          | ☰                            | ≡       |
| smiley             | ㋡                           | ☺       |
| mustache           | ෴                            | ┌─┐     |
| heart              | ♥                            | ♥       |
| arrowUp            | ↑                            | ↑       |
| [[arrowDown]]      | ↓                            | ↓       |
| arrowLeft          | ←                            | ←       |
| arrowRight         | →                            | →       |
| radioOn            | ◉                            | (*)     |
| radioOff           | ◯                            | ( )     |
| checkboxOn         | ☒                            | [×]     |
| checkboxOff        | ☐                            | [ ]     |
| checkboxCircleOn   | ⓧ                            | (×)     |
| checkboxCircleOff  | Ⓘ                            | ( )     |
| questionMarkPrefix | ?⃝                            | ？      |
| oneHalf            | ½                            | 1/2     |
| oneThird           | ⅓                            | 1/3     |
| oneQuarter         | ¼                            | 1/4     |
| oneFifth           | ⅕                            | 1/5     |
| oneSixth           | ⅙                            | 1/6     |
| oneSeventh         | ⅐                            | 1/7     |
| oneEighth          | ⅛                            | 1/8     |
| oneNinth           | ⅑                            | 1/9     |
| oneTenth           | ⅒                            | 1/10    |
| twoThirds          | ⅔                            | 2/3     |
| twoFifths          | ⅖                            | 2/5     |
| threeQuarters      | ¾                            | 3/4     |
| threeFifths        | ⅗                            | 3/5     |
| threeEighths       | ⅜                            | 3/8     |
| fourFifths         | ⅘                            | 4/5     |
| fiveSixths         | ⅚                            | 5/6     |
| fiveEighths        | ⅝                            | 5/8     |
| sevenEighths       | ⅞                            | 7/8     |
| (array) spinner    | ⠋, ⠙, ⠹, ⠸, ⠼, ⠴, ⠦, ⠧, ⠇, ⠏ |  -, \, I, / ||
