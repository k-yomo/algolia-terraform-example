

.PHONY: create-shared-tf
create-shared-tf:
	touch ./terraform/shared/${file}
	cd  ./terraform/dev && ln -s ../shared/${file}
	cd  ./terraform/prod && ln -s ../shared/${file}
