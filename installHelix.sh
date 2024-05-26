if [ ! -d "~/.helix" ]; then
	mkdir "~/.helix"
	git clone https://github.com/helix-editor/helix ~/.helix
	cargo install --path ~/.helix/helix-term --locked
fi
