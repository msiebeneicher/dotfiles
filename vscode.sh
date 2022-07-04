#!/usr/bin/env bash

# Install vscode extensions via command-line tool
code --version  >/dev/null 2>&1 || exit 1

vscode_extension=(
    4ops.packer
    # donjayamanne.githistory
    eamodio.gitlens
    EditorConfig.EditorConfig
    eriklynd.json-tools
    golang.go
    hashicorp.hcl
    hashicorp.terraform
    howardzuo.vscode-favorites
    ms-azuretools.vscode-docker
    ms-kubernetes-tools.vscode-kubernetes-tools
    ms-vscode.makefile-tools
    oderwat.indent-rainbow
    PascalReitermann93.vscode-yaml-sort
    redhat.vscode-yaml
    smulyono.reveal
    streetsidesoftware.code-spell-checker
    streetsidesoftware.code-spell-checker-german
    tamasfe.even-better-toml
    Tim-Koehler.helm-intellisense
    timonwong.shellcheck
    wayou.vscode-todo-highlight
    yzhang.markdown-all-in-one
)

for ext in "${vscode_extension[@]}"; do
    code --install-extension "${ext}"
done
