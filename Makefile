.PHONY: build_frontend install_dependencies setup_node_environment

build_frontend:
	export NVM_DIR="$$HOME/.nvm" ; . "$$NVM_DIR/nvm.sh" ; nvm use --lts ; npx yarn build

install_dependencies:
	make setup_node_environment
	pipenv install --ignore-pipfile
	export NVM_DIR="$$HOME/.nvm" ; . "$$NVM_DIR/nvm.sh" ; nvm use --lts ; npx yarn install -D

setup_node_environment:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
	export NVM_DIR="$$HOME/.nvm" ; . "$$NVM_DIR/nvm.sh" ; nvm install
