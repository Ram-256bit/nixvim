_: {
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./lsp.nix
    ./settings.nix
    ./file_types.nix
    ./auto_cmds.nix
    ./themes.nix
    ./keymaps.nix

    #UI
    ./ui/bufferline.nix
    ./ui/lualine.nix
    ./ui/startup.nix

    # Plugins
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/fidget.nix
    ./plugins/plugins.nix
    ./plugins/cmp-copilot.nix
    ./plugins/copilot-chat.nix
    ./plugins/neotree.nix
    ./plugins/undotree.nix
    ./plugins/lazygit.nix
    #####
    ./plugins/markdown-preview.nix
    ./plugins/telescope.nix
    ./plugins/toggleterm.nix

  ];
}
