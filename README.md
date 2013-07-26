resume
======

Latex code for my resme

requirements
============
https://help.ubuntu.com/community/LaTeX on a linux system
ruby 1.9.*

plans
=====
- package tasks into a gem
  - with a railtie.rb and tasks.rake file
	Makefile:
		- accomplish logic through tasks

- view:
  - rails g controller latex_resume index generate source
	- two buttons: generate and source
		- run method, copy file to public/tmp/<source name> and reroute to file

- config/resume.tex

- view:
  - view raw resume.tex
  - generate and view document
  
