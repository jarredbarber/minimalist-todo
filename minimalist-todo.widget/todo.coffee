Version = "0.1.0"

config = {
    font: "PT Mono"  # e.g. "Courier New", "PT Mono", "OperatorMono-Light"
    backgroundBlur: "5px"   # e.g. false, "15px"
    todoFile: "minimalist-todo.widget/example.md"
}

command: "python3 minimalist-todo.widget/parse.py #{config.todoFile}"

render: (output) ->
        "<div id=\"todoid\">#{output}</div>"

refreshFrequency:  1000 

style: """
    z-index: 0
    font-family: #{config.font}
    padding-left: 0.25em
    padding-top: 0.25em
    padding-right: 0.25em
    padding-bottom: 0.25em
    color: #93a1a1
    left: 10px
    top: 10px
    font-size: 80%
    background: linear-gradient(left, rgba(0, 43, 54, 1.0), rgba(0, 43, 54, 0.8))
    if #{config.backgroundBlur}
        -webkit-backdrop-filter: blur(#{config.backgroundBlur})
    div#todoid
    table
        border-collapse: collapse
    tbody.sep
        font-size: 0%
        display: table-row-group
        border: none
    tbody 
        display: table-row-group
        //display: block
        border: 1px solid gray
        border-collapse: collapse
    td
        box-sizing: content-box
        //border: 1px solid red // For debugging layout
        max-width: 95vw
        overflow: hidden
        text-overflow: ellipsis
        white-space: nowrap
    td.todo_check
        font-size:30%
        width: 15px
    td.todo_text
        overflow: hidden
        text-overflow: ellipsis
        white-space: nowrap
    td.duedate
        padding-left: 0.5em
    span.todo_item
        color: #fdf6e3
    span.todo_priority
        color: #fdf6e3
        padding-left: 0.25em
        padding-right: 0.25em
    span.todo_pri_A
        background-color: #dc322f
        font-weight: bold
    span.todo_pri_B
        background-color: #dc322f
    span.todo_pri_C
        background-color: #b58900
        font-weight: bold
    span.todo_pri_D
        background-color: #b58900
    span.todo_pri_E
        font-weight: bold
    span.todo_h1
        font-weight: bold
        font-size: 120%
        color: #2aa198
    span.todo_h2
        font-weight: bold
        color: #859900
        font-size: 100%
    span.todo_star
        font-weight: bold
        font-style: italic
    span.todo_line
        text-decoration: underline
    span.todo_lowlight
        color: #586e75
    span.todo_highlight
        color: #fdf6e3
    span.todo_date
        color: #86989e
    span.todo_delta_future
        color: #586e75
    span.todo_delta_soon
        color: #ff5900
        font-weight: bold
    span.todo_delta_past
        color: #ff0000
        font-weight: bold
    span.todo_done
        text-decoration: line-through
"""
