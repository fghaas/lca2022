#!/bin/bash

cat vision.md \
    <(echo) \
    projection.md \
    <(echo) \
    freeviewing.md \
    <(echo) \
    photography.md \
    <(echo) \
    gimp.md \
    <(echo) \
    videography.md \
    <(echo) \
    conclusion.md > full-talk.md

pandoc -t ms -V pointsize=16pt -V lineheight=20pt -o full-talk.pdf full-talk.md

pandoc -o full-talk.html full-talk.md
