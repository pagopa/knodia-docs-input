#! /usr/bin/env bash

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${SCRIPTS_DIR}"

for i in lifecycle-agreement.mermaid lifecycle-eservice.mermaid lifecycle-purpose-provide.mermaid lifecycle-purpose-receive.mermaid; do
    mmdc -i "$i" -o "../gitbook/resources/${i%.mermaid}.svg"
done
