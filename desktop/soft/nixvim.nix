{ pkgs, ... }:
#### This config was written by claude
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    # Не задаём colorscheme — используются цвета из терминала.
    # Прозрачность: убираем фон у обычных и плавающих окон.
    highlight = {
      Normal = { ctermbg = "NONE"; };
      NormalNC = { ctermbg = "NONE"; };
      NormalFloat = { ctermbg = "NONE"; };
      SignColumn = { ctermbg = "NONE"; };
      LineNr = { ctermbg = "NONE"; };
      EndOfBuffer = { ctermbg = "NONE"; };

      # indent-blankline требует эти группы; берём цвета из терминальной палитры (cterm), не hex
      IblIndent = { ctermfg = 8; };  # обычно "bright black" / серый в 16-цветной палитре
      IblScope = { ctermfg = 4; };   # "blue" по умолчанию — поменяй под свою палитру, если не нравится
    };

    globalOpts = {
      number = true;
      relativenumber = true;

      # ВАЖНО: выключаем true color, чтобы код красился 16-цветной
      # ANSI-палитрой терминала (foot), а не hex-цветами neovim
      termguicolors = false;

      # Системный буфер обмена (wl-clipboard/xclip)
      clipboard = "unnamedplus";

      # Табуляция = 2 пробела
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
      expandtab = true;
    };

    globals.mapleader = " "; # leader = space

    plugins = {
      treesitter = {
        enable = true;
        settings.highlight.enable = true;
        settings.indent.enable = true;
      };

      lsp = {
        enable = true;
        servers = {
          # Web: html/css (+ json/ts на всякий, легко убрать если не нужно)
          html.enable = true;
          cssls.enable = true;
          emmet_ls.enable = true;

          # C
          clangd.enable = true;

          # Python
          pyright.enable = true;

          # Nix (раз уж правишь конфиг системы)
          nil_ls.enable = true;
	  # rust
	  rust_analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;
          };
        };
      };

      lspkind.enable = true;

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
        ];
        settings.mapping = {
          "<Tab>" = "cmp.mapping.select_next_item()";
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
        };
      };

      luasnip.enable = true;
      friendly-snippets.enable = true;

      telescope = {
        enable = true;
        keymaps = {
          "<leader>ff" = "find_files";
          "<leader>fg" = "live_grep";
          "<leader>fb" = "buffers";
        };
      };

      lualine = {
        enable = true;
        # без темы — подхватит текущие highlight-группы терминала
      };

      web-devicons.enable = true;

      nvim-autopairs.enable = true;

      indent-blankline.enable = true;

      which-key.enable = true;

      neo-tree.enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>Neotree toggle<CR>";
        options.desc = "Toggle file tree";
      }
    ];

    extraPackages = with pkgs; [
      stylua
      black
    ];
  };
}
