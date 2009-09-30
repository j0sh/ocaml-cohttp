OCAMLMAKEFILE=OCamlMakefile

SOURCES = http_types.mli http_daemon.mli http_constants.ml http_types.ml http_parser_sanity.ml http_misc.ml http_common.ml \
	http_tcp_server.ml http_parser.ml http_message.ml http_request.ml http_response.ml http_daemon.ml
PACKS = netstring lwt lwt.extra
THREADS = yes
RESULT = cohttp
LIB_PACK_NAME = cohttp
ANNOTATE = yes

.PHONY: all
all: pack-byte-code pack-native-code cohttp.cma
	@ :

META: META.in
	cat META.in | sed -e 's/@DISTVERSION@/$(DISTVERSION)/' > META

-include $(OCAMLMAKEFILE)