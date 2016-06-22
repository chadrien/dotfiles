#!/bin/bash

# vscode
vscode_extensions=(EditorConfig.EditorConfig alefragnani.project-manager dbaeumer.vscode-eslint vsmobile.vscode-react-native ow.vscode-subword-navigation)
vscode_extensions+=(donjayamanne.githistory deerawan.vscode-dash andischerer.theme-atom-one-dark)
for vscode_extension in "${vscode_extensions[@]}"; do
    code --install-extension $vscode_extension
done

(cd $DOTFILES_ROOT/apps/stow && stow -t $HOME home)
