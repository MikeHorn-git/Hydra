{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ git tshark ];

  # https://devenv.sh/languages/
  languages.python.enable = true;
  languages.python.venv.enable = true;
  languages.python.uv = {
    enable = true;
    sync.enable = true;
    sync.allExtras = true; # Sync dev dependencies
  };

  enterTest = ''
    python3 hydra.py -h
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    mdformat.enable = true;
    nixfmt-classic.enable = true;
    ruff.enable = true;
    ruff-format.enable = true;
    trim-trailing-whitespace.enable = true;
    uv-check.enable = true;
    uv-lock.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
