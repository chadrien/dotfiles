#!/usr/bin/env bash

extenstions=(EditorConfig.EditorConfig akamud.vscode-theme-onedark alefragnani.project-manager dbaeumer.vscode-eslint maptz.camelcasenavigation)
extenstions+=(deerawan.vscode-dash christian-kohler.path-intellisense)

for extenstion in "${extenstions[@]}"; do
  code --install-extension $extenstion
done