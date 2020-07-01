# `minimalist-todo` Übersicht widget
Minimalist todo list widget for [Übersicht](http://tracesof.net/uebersicht/). Todo lists are stored in a single Markdown file; the goal here is to provide a very simple text-based interface for managing todo lists.

## Instructions
1. Install [Übersicht](http://tracesof.net/uebersicht/)
1. Copy (or symlink) `minimalist-todo.widget` to your Übersicht widget folder (`~/Library/Application Support/Übersicht/widgets`)
2. Edit `minimalist-todo.widget/todo.coffee` to change the location of your todo Markdown file (line 6). It defaults to the included `example.md`; I put mine in `~/org/todo.md`.

The example file:
```markdown
# Dates to keep track of
- Karen's wedding <2020-08-25>
- Trip to Taiwan <2020-10-13>
# Work
## Status reports
- TPS report <2020-07-01>
- Status update slides <2020-06-25>
## Project A
- Set up meeting with Jim
- Create **git** repo for CRUD system
# Home projects
## Refinish deck
x Buy deck stain
x Sand deck
- Stain deck <2020-07-11>
## Yard work
- Mow lawn
```
gets rendered as:

![Screenshot of widget](https://raw.githubusercontent.com/jarredbarber/minimalist-todo/master/example.png)

We only supports basic Markdown:
* Sections (`#`)
* Projects (`##`)
* TODO items (`-` or `x` for completed items)
* Basic formatting: `**` for bold and `_` for italics
* Dates (`<YYYY-MM-DD>`); dates at the end of a line get a countdown
