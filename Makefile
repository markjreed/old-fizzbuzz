default: test

prereq-ok: prereq.sh
	@./prereq.sh

test: prereq-ok
	@./test.sh
