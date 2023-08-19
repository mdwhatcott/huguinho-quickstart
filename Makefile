#!/usr/bin/make -f

dev:
	echo "Navigate in a browser to http://localhost:7070/" && \
		huguinho-dev -content "./content" -templates "./templates" -target "./dev" -with-drafts -with-future

generate:
	huguinho -base-path "/blog" -content "./content" -templates "./templates" -target "./docs"

clean:
	rm -rf "./rendered" && mkdir "./docs"
