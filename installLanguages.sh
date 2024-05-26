if ! type "rustc" > /dev/null; then
	curl --proto '=https' -tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --help
fi
if [[ -z "$INSTALL_CLANG" ]]; then
	echo "Skipping installing clang because INSTALL_CLANG was not set"
else
	sudo pacman -S clang
fi
if ! type "nvm" > /dev/null; then
	PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash' > /dev/null

	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm	
	
	nvm install --lts
fi
