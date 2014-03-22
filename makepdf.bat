@echo off
REM Thanks to https://github.com/mwhite/resume
python resume.py tex < README.md > resume.md
pandoc -s resume.md -H src\header.tex -o resume.tex
pdflatex resume.tex
del resume.md resume.aux resume.log resume.out