{ pkgs, ... }:
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

  # Illuminate plugin
  plugins.illuminate = {
    enable = true;
    underCursor = false;
    filetypesDenylist = [
      "Outline"
      "TelescopePrompt"
      "alpha"
      "harpoon"
      "reason"
    ];
  };

  plugins = {
    indent-blankline = {
      enable = true;
    };
  };

  plugins.navic = {
    enable = true;
    settings = {
      separator = "  ";
      highlight = true;
      depthLimit = 5;
      lsp = {
        autoAttach = true;
      };
      icons = {
        Array = "󱃵  ";
        Boolean = "  ";
        Class = "  ";
        Constant = "  ";
        Constructor = "  ";
        Enum = " ";
        EnumMember = " ";
        Event = " ";
        Field = "󰽏 ";
        File = " ";
        Function = "󰡱 ";
        Interface = " ";
        Key = "  ";
        Method = " ";
        Module = "󰕳 ";
        Namespace = " ";
        Null = "󰟢 ";
        Number = " ";
        Object = "  ";
        Operator = " ";
        Package = "󰏖 ";
        String = " ";
        Struct = " ";
        TypeParameter = " ";
        Variable = " ";
      };
    };
  };

  plugins.todo-comments = {
    enable = true;
    settings = {
      colors = {
        error = [
          "DiagnosticError"
          "ErrorMsg"
          "#ED8796"
        ];
        warning = [
          "DiagnosticWarn"
          "WarningMsg"
          "#EED49F"
        ];
        info = [
          "DiagnosticInfo"
          "#EED49F"
        ];
        default = [
          "Identifier"
          "#F5A97F"
        ];
        test = [
          "Identifier"
          "#8AADF4"
        ];
      };
    };
  };

  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      highlight.enable = true;
    };
    folding = false;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  plugins.treesitter-textobjects = {
    enable = false;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "aa" = "@parameter.outer";
        "ia" = "@parameter.inner";
        "af" = "@function.outer";
        "if" = "@function.inner";
        "ac" = "@class.outer";
        "ic" = "@class.inner";
        "ii" = "@conditional.inner";
        "ai" = "@conditional.outer";
        "il" = "@loop.inner";
        "al" = "@loop.outer";
        "at" = "@comment.outer";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]m" = "@function.outer";
        "]]" = "@class.outer";
      };
      gotoNextEnd = {
        "]M" = "@function.outer";
        "][" = "@class.outer";
      };
      gotoPreviousStart = {
        "[m" = "@function.outer";
        "[[" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[M" = "@function.outer";
        "[]" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>a" = "@parameters.inner";
      };
      swapPrevious = {
        "<leader>A" = "@parameter.outer";
      };
    };
  };

  plugins.gitsigns = {
    enable = true;
    settings = {
      signs = {
        add = {
          text = " ";
        };
        change = {
          text = " ";
        };
        delete = {
          text = " ";
        };
        untracked = {
          text = "";
        };
        topdelete = {
          text = "󱂥 ";
        };
        changedelete = {
          text = "󱂧 ";
        };
      };
    };
  };

}
