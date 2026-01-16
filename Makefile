render: data
	./bin/render
data:
	./bin/make-data
update-all:
	./bin/update-all
update-rankings:
	./bin/update-rankings

include Makefile.local
