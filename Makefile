all: Makefile.coq .merlin
	+make -f Makefile.coq all

clean: Makefile.coq
	+make -f Makefile.coq clean
	rm -f Makefile.coq Makefile.coq.conf .merlin src/tactician.o src/tactician.cmx src/tactician.cmi

Makefile.coq: _CoqProject
	$(COQBIN)coq_makefile -f _CoqProject -o Makefile.coq

_CoqProject: ;

%: Makefile.coq
	+make -f Makefile.coq $@

.PHONY: all clean
