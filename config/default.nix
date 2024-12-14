_: {
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./lsp.nix
    ./settings.nix

    # Plugins
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/fidget.nix
    ./plugins/plugins.nix

  ];
}
