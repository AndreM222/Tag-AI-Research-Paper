# AI Research Paper

<!--toc:start-->
- [AI Research Paper](#ai-research-paper)
  - [Contents](#contents)
  - [Dependencies](#dependencies)
  - [Setup Direction](#setup-direction)
    - [Packages To Install (EX: Brew Package Manager)](#packages-to-install-ex-brew-package-manager)
    - [Create Python Version Env](#create-python-version-env)
    - [Shell Setup (EX: Fish-Shell)](#shell-setup-ex-fish-shell)
    - [Auto Version Setup](#auto-version-setup)
    - [Permissions for direnv](#permissions-for-direnv)
  - [License](#license)
<!--toc:end-->

## Contents

This project has the research paper made in LaTeX of the Tag AI Sandbox

## Dependencies

- Lualatex
- Miniconda
- Direnv
- Noto Serif CJK JP *(Needed For Japanese Form)*

## Setup Direction

### Packages To Install

#### For Homebrew

```bash
brew install miniconda
brew install direnv
```

### Create Python Version Env

```shell
conda create -n tex-py312 python=3.12
```

### Shell Setup

#### Fish-Shell

```fish
direnv hook fish | source
```

### Auto Version Setup

```bash
use conda tex-py312
```

### Permissions for direnv

```bash
direnv allow
```

### Font Download

#### For Homebrew

```bash
brew install --cask font-noto-serif-cjk-jp
brew install --cask font-noto-sans-cjk-jp
brew install --cask font-noto-sans-mono-cjk-jp
```

## License

This project can be used as a template, but the content is owned by me.

[LICENSE](LICENSE)
