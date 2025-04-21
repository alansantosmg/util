
#tech/dev/vscode 

# Switch focus vscode editor and integrated terminal 

```json

 [
    {
        "key": "ctrl+down",
        "command": "workbench.action.terminal.focus",
    },
    {
        "key": "ctrl+up",
        "command": "workbench.action.focusActiveEditorGroup",
        "when": "terminalFocus"
    }
]

```