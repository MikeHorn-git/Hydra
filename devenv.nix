{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ git mdformat nixfmt-classic ruff tshark ];

  # https://devenv.sh/languages/
  languages.python.enable = true;
  languages.python.venv.enable = true;
  languages.python.uv = {
    enable = true;
    sync.enable = true;
    sync.allExtras = true; # Sync dev dependencies
  };

  # https://devenv.sh/scripts/
  scripts = {
    "lint:run".exec = ''
      mdformat README.md
      nixfmt devenv.nix
      ruff check
      ruff format'';
  };

  # https://devenv.sh/basics/
  enterShell = ''
    echo "Available commands:"
    echo " - lint         : Lint repository"
  '';

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
  };

  # See full reference at https://devenv.sh/reference/options/
}
