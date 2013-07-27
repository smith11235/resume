resume
======

Latex code for my resme

requirements
============
https://help.ubuntu.com/community/LaTeX on a linux system
ruby 1.9.*

plans
=====
- install latex, and precheck task for verification

	Makefile:
		- accomplish logic through tasks: tasks.rake

- view:
	index:
		- generate: run config/resume.tex and reroute to output in public/...
	generate:
		- run latex command for @latex_file 
		- put output in public/tmp/gen/File.basename(@latex_file)
		- reroute to public file

- config/resume.tex


