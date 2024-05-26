# install fzf
if [ -d "~/.fzf" ]; then
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install  --completion --key-bindings --no-update-rc
fi

# install zoxide
if ! type "z" > /dev/null; then
	curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
fi

# install eza
if ! type "eza" > /dev/null; then
	cargo install eza
fi
