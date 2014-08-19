#!/bin/bash

git fetch origin && git merge FETCH_HEAD
vim +PluginInstall +qa
