<h1 align="center">Welcome to tmux-auto-rename 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/KeyesHsu/tmux-auto-rename/blob/main/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>


Automatical rename tmux window with tmux `pane_current_path` directory name.

_**Note**_: Now only works when select windows.

## Installation

Clone the repo:
```sh
$ git clone https://github.com/KeyesHsu/tmux-auto-rename ~/clone/path
```

Add this line to your `.tmux.conf`:
```sh
set-hook -g 'after-select-pane' 'run-shell ~/clone/path/auto-rename.tmux'
```

## Options

### `@auto-rename-git-only`

Automatic rename only in Git repositories.

Default: `on`

```sh
set -g @auto-rename-git-only "off"
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
