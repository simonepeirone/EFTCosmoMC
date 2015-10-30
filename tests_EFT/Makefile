all: compilation test

compilation:
	./test_compilation.sh

test: compilation
	./test_all_models.sh

clean:
	rm ../cosmomc
	rm ../getdist
