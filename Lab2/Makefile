PROJECT = ripple_adder_cl

all: lib default

lib: 	
	aoc -c -v $(PROJECT)_rtl.xml -o $(PROJECT)_rtl.aoco
	aocl library create -o $(PROJECT)_rtl.aoclib $(PROJECT)_rtl.aoco
	
default:lib
	aoc -g -v -l $(PROJECT)_rtl.aoclib -L . $(PROJECT).cl

optm:	lib
	aoc -g -v -c -l $(PROJECT)_rtl.aoclib -L . $(PROJECT).cl --report
	
clean:
	rm -rf *.aoco *.aoclib *.aocx $(PROJECT) $(PROJECT)_rtl
