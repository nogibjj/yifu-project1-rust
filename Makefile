install:
	cargo clean &&\
		cargo build -j 1

build:
	docker build -t ip .

rundocker:
	docker run -it --rm -p 8080:8080 ip

format:
	cargo fmt --quiet

lint:
	cargo clippy --quiet

test:
	cargo test --quiet

run:
	cargo run 

all: format lint test run