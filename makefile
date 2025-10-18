test:
	python -m unittest discover tests

config:
	conda env export > environment.yml

install:
	conda init
	conda deactivate
	conda env create -f environment.yml
	conda init
	conda activate ai4se
	
docs:
	mkdocs build

clean:
	rm -rf .venv
	rm -rf ./__pycache__
	rm -rf ./gui/__pycache__
	rm -rf site
