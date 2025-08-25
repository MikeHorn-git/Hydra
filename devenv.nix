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

  # https://devenv.sh/tasks/
  tasks = {
    "lint:run".exec = ''
      mdformat README.md
       git ls-files --cached --others --exclude-standard '*.nix' | xargs nixfmt
       ruff check
       ruff format'';
  };

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
