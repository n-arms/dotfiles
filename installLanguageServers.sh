if [[ -z "$INSTALL_RA" ]]; then
  echo "Skipping installing rust analyzer because the INSTALL_RA flag isn't set"
else
  curl -o rust-analyzer.gz -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz
  gzip -d rust-analyzer.gz
  chmod +x rust-analyzer
  mv rust-analyzer ~/.cargo/bin/rust-analyzer
fi

if ! type "typescript-language-server"; then
  npm install -g typescript-language-server typescript
fi
