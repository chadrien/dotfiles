#!/usr/bin/env bash

extenstions=(EditorConfig.EditorConfig alefragnani.project-manager dbaeumer.vscode-eslint maptz.camelcasenavigation)
extenstions+=(silverlakesoftware.searchdocsets-vscode patbenatar.advanced-new-file steoates.autoimport eg2.tslint)

for extenstion in "${extenstions[@]}"; do
  code --install-extension $extenstion
done