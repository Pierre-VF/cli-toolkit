#!/bin/bash

# ---------------------------------------------
# Starts the local SSH agent for Git
# ---------------------------------------------

# Loading key
eval "$(ssh-agent)"
ssh-add
