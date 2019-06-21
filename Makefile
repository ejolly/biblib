# Minimal makefile for linting bibs
#
.IGNORE: check
.SILENT: check clean
FILE=$(filter-out $@,$(MAKECMDGOALS))
check:
	./biblatex_check.py -b $(FILE) -o $(FILE).html
	open $(FILE).html
	@echo COMPLETE

clean:
	rm -rf *.html
	@echo "Cleaned up HTML reports."


