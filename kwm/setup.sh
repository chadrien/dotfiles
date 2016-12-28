#!/usr/bin/env bash

[ ! -f "$HOME/Library/Application Support/Übersicht/widgets/focused-window.coffee" ] && rm -rf "$HOME/Library/Application Support/Übersicht/widgets" && git clone https://github.com/chadrien/nerdbar.widget.git "$HOME/Library/Application Support/Übersicht/widgets"