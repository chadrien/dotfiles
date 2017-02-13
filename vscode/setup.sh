#!/usr/bin/env bash

extenstions=(EditorConfig.EditorConfig akamud.vscode-theme-onedark alefragnani.project-manager dbaeumer.vscode-eslint maptz.camelcasenavigation)
extenstions+=(silverlakesoftware.searchdocsets-vscode patbenatar.advanced-new-file TeddyDD.fish)
extenstions+=(sandy081.todotasks vscodevim.vim)

for extenstion in "${extenstions[@]}"; do
  code --install-extension $extenstion
done