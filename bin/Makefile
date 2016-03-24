all: command_t ycm

.PHONY: command_t

COMMANDT_DIR = ../bundle/command-t/ruby/command-t
command_t: $(COMMANDT_DIR)/ext.bundle

$(COMMANDT_DIR)/ext.bundle: $(COMMANDT_DIR)/Makefile
	./build-command-t.sh

$(COMMANDT_DIR)/Makefile: $(COMMANDT_DIR)/extconf.rb
	cd $(COMMANDT_DIR) && env RBENV_VERSION=system ruby extconf.rb

ycm: ../bundle/YouCompleteMe/third_party/ycmd/ycm_core.so

../bundle/YouCompleteMe/third_party/ycmd/ycm_core.so: ../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/CMakeLists.txt
	./build-ycm.sh
