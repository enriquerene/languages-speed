SHELL := /bin/bash
.PHONY: js py sh c cpp php

all: js py sh c cpp php


js:
	@echo '****************'
	@echo '** JavaScript **'
	@echo '**            **'
	time node loop100k.js
	@echo '**            **'
	@echo '****************'

py:
	@echo '****************'
	@echo '**   Python   **'
	@echo '**            **'
	time python loop100k.py
	@echo '**            **'
	@echo '****************'

c: loop100kc
	@echo '****************'
	@echo '**     C      **'
	@echo '**            **'
	time ./loop100kc
	@echo '**            **'
	@echo '****************'

cpp: loop100kcpp
	@echo '****************'
	@echo '**    C++     **'
	@echo '**            **'
	time ./loop100kcpp
	@echo '**            **'
	@echo '****************'

php:
	@echo '****************'
	@echo '**    PHP     **'
	@echo '**            **'
	time php loop100k.php
	@echo '**            **'
	@echo '****************'

sh:
	@echo '****************'
	@echo '**    Bash    **'
	@echo '**            **'
	time sh loop100k.bash
	@echo '**            **'
	@echo '****************'

loop100kc: loop100k.c
	gcc -o loop100kc loop100k.c

loop100kcpp: loop100k.cpp
	g++ -o loop100kcpp loop100k.cpp

