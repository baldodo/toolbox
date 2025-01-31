MD=$(wildcard *.md)
MAN=${MD:.md=.1}

all: $(MAN)

%.md:
	sed 's/CMD/$*/g' man.tpl > "$@"
%.1: %.md
	awk -f man.awk "$<" > "$@"
clean:
	rm -f ${MAN}
