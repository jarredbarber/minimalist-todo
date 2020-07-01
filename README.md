# minimalist-todo
Minimalist todo list widget for Übersicht

A basic tool for parsing simple todo lists from Markdown files. The goal here is to provide some basic organization without overwhelming the user with features. A basic example file:

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

This only supports basic Markdown:
* Sections (`#`)
* Projects (`##`)
* TODO items (`-` or `x` for completed items)
* Basic formatting: `**` for bold and `_` for italics
* Dates (`<YYYY-MM-DD>`); dates at the end of a line get a countdown
