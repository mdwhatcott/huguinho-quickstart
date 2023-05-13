#!/usr/bin/make -f

dev:
	echo "Navigate a browser to http://localhost:7070/" && \
		huguinho-dev -content "./content" -templates "./templates" -target "./docs" -with-drafts -with-future

generate:
	huguinho -content "./content" -templates "./templates" -target "./docs"

clean:
	rm -rf "./rendered" && mkdir "./docs"
