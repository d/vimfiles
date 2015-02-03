all: command_t ycm

command_t: ../bundle/command-t/ruby/command-t/ext.bundle

../bundle/command-t/ruby/command-t/ext.bundle: ../bundle/command-t/ruby/command-t/ext.c
	./build-command-t.sh

ycm: ../bundle/YouCompleteMe/third_party/ycmd/ycm_core.so ../bundle/YouCompleteMe/third_party/ycmd/ycm_client_support.so

../bundle/YouCompleteMe/third_party/ycmd/ycm_core.so: ../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_client_support.cpp
	./build-ycm.sh

../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_core.cpp:../bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/ycm_core.cpp
	./build-ycm.sh
