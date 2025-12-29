install:
	brew install --build-from-source ./Formula/mantui.rb

version = 0.1.1

download:
	curl -LO https://github.com/preiter93/mantui/releases/download/v$(version)/mantui-$(version)-aarch64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/mantui/releases/download/v$(version)/mantui-$(version)-x86_64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/mantui/releases/download/v$(version)/mantui-$(version)-aarch64-unknown-linux-gnu.tar.gz
	curl -LO https://github.com/preiter93/mantui/releases/download/v$(version)/mantui-$(version)-x86_64-unknown-linux-gnu.tar.gz
	mv mantui-* bin/.

shasum:
	shasum -a 256 bin/mantui-$(version)-aarch64-apple-darwin.tar.gz
	shasum -a 256 bin/mantui-$(version)-x86_64-apple-darwin.tar.gz
	shasum -a 256 bin/mantui-$(version)-aarch64-unknown-linux-gnu.tar.gz
	shasum -a 256 bin/mantui-$(version)-x86_64-unknown-linux-gnu.tar.gz
