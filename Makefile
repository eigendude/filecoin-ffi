DEPS:=filecoin.h filecoin.pc libfilecoin.a

all: $(DEPS)
.PHONY: all

$(DEPS):
	export CARGO_TOOLCHAIN=$(CARGO_TOOLCHAIN); ./install-filecoin

clean:
	rm -rf $(DEPS)
.PHONY: clean
