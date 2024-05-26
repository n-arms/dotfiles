if ! type "rustc" > /dev/null; then
	curl --proto '=https' -tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --help
fi
if [[ -z "$INSTALL_CLANG" ]]; then
	echo "Skipping installing clang because INSTALL_CLANG was not set"
else
	sudo pacman -S clang
fi
