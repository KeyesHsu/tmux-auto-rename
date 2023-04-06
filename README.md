<h1 align="center">Welcome to tmux-auto-rename 👋</h1>
<p>
  <img alt="GitHub tag (latest by date)" src="https://img.shields.io/github/v/tag/KeyesHsu/tmux-auto-rename">
  <a href="https://github.com/KeyesHsu/tmux-auto-rename/blob/main/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>


Automatical rename tmux window with current directory name.

_**Note**_: Now only works when select pane.


##### Resources:
* [Changelog](CHANGELOG.md)


## Installation

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux.conf
set -g @plugin 'tmux-plugins/tmux-resurrect'
```

Hit `prefix + I` to fetch the plugin and source it. You should now be able to use the plugin.

### Manual Installation

Clone the repo:

```sh
$ git clone https://github.com/KeyesHsu/tmux-auto-rename ~/clone/path
```

Add this line to your `.tmux.conf`:

```tmux.conf
run-shell ~/clone/path/auto-rename.tmux
```

## Options

### `@auto-rename-git-only`

Automatic rename only in Git repositories.

Default: `on`

```sh
set -g @auto-rename-git-only "off"
```

### `@show-zoom-indicator`

Show zoom indicator when rename.

Default: `off`

```sh
set -g @show-zoom-indicator "on"
set-hook -g 'after-resize-pane' 'run-shell ~/clone/path/auto-rename.tmux'
```

## Author

👤 **Keyes Hsu**

* Github: [@KeyesHsu](https://github.com/KeyesHsu)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/KeyesHsu/tmux-auto-rename/issues). 

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2022 [Keyes Hsu](https://github.com/KeyesHsu).<br />
This project is [MIT](https://github.com/KeyesHsu/tmux-auto-rename/blob/main/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
