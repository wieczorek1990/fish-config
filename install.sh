#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd "$DIR"
mkdir -p ~/.config/fish/
cp -r config.fish functions ~/.config/fish/

