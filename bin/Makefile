all: command_t ycm

.PHONY: command_t

COMMANDT_DIR = ../bundle/command-t/ruby/command-t
command_t: $(COMMANDT_DIR)/ext.bundle

$(COMMANDT_DIR)/ext.bundle: $(COMMANDT_DIR)/Makefile
	./build-command-t.sh

$(COMMANDT_DIR)/Makefile: $(COMMANDT_DIR)/extconf.rb
	cd $(COMMANDT_DIR) && env RBENV_VERSION=system ruby extconf.rb

ycm: ../bundle/YouCompleteMe/third_party/ycmd/ycm_core.so ../bundle/YouCompleteMe/third_party/ycmd/ycm_client_support.so

../bundle/YouCompleteMe/third_party/ycmd/ycm_core.so: ../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_client_support.cpp
	./build-ycm.sh

../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_core.cpp:../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_core.cpp
	./build-ycm.sh
