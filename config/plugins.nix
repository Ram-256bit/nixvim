{
  colorschemes = {
    catppuccin = {
      enable = true;
    };
  };

  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
    nvim-autopairs = {
      enable = true;
      settings = {
        disable_filetype = [
          "TelescopePrompt"
          "vim"
        ];
      };
    };
    tmux-navigator.enable = true;

  };
}
