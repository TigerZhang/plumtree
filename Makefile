.PHONY: deps compile rel

DIALYZER_APPS = kernel stdlib erts sasl eunit syntax_tools compiler crypto
REBAR="./rebar3"
DEP_DIR="_build/lib"

all: compile

include tools.mk

compile: deps
	./rebar3 compile
