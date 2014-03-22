@echo off
REM Thanks to https://github.com/mwhite/resume
python resume.py html < README.md > resume.md
pandoc --mathjax -s --css css\resume.css -H src\header.html resume.md -o resume.html
del resume.md