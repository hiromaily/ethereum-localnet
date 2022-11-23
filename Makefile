
.PHONY: enter
enter:
	docker compose exec execution-setup /bin/sh
	# geth --datadir /root/.ethereum/private account new
	# geth init --datadir /root/.ethereum/private genesis.json
	# geth --datadir /root/.ethereum/private --networkid 88888 console 2>> /root/.ethereum/private/info.log

.PHONY: help-lodestar
help-lodestar:
	docker compose exec lodestar-localnet --help

.PHONY: run-execution
run-execution:
	docker compose up execution

.PHONY: build-lodestar
build-lodestar:
	./scripts/lodestar-image.sh

.PHONY: run-lodestar
run-lodestar:
	docker compose up lodestar-localnet

# console
# docker compose exec -it execution geth attach ipc://root/.ethereum/geth.ipc

# check lodestar help
# docker run chainsafe/lodestar --help