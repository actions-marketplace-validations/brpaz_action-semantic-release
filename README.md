# Semantic Release Action

[![GitHub Action](https://img.shields.io/badge/GitHub-Action-blue?style=for-the-badge)](https://github.com/features/actions)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![GitHub Actions](https://github.com/brpaz/action-semantic-release/workflows/ci/badge.svg?style=for-the-badge)](https://github.com/brpaz/action-semantic-release/actions)

> GitHub Action to automate releases using [Semantic release](https://github.com/semantic-release/semantic-release).

## What is included

This action includes [semantic-release](https://github.com/semantic-release/semantic-release) cli tool with the following plugins pre-installed:

* @semantic-release/npm 
* @semantic-release/git 
* @semantic-release/changelog
* @semantic-release/github

## Usage

On your GitHub Actions workflow file, add the following step:

```yml
steps:
    uses: brpaz/semantic-release@v1
```

This will run the "semantic-release" command without arguments. 
The action allows you to specify the following options:

* dry_run: Indicates where you want to run semantic release in "dry-run" mode. Defaults to false.
* install_plguins: Specify a list of [Semantic Release Plugins](https://semantic-release.gitbook.io/semantic-release/extending/plugins-list) to install. Note that some plugins might depend on libraries that are not present in this action.
* branch: Specify the branch to release from. Defaults to "master"

```yml
steps:
    uses: brpaz/semantic-release@v1
    with:
        dry_run: "false"
        install_plugins: "semantic-release-docker semantic-release-gcr"
        branch: master

```

### Installing extra plugins.

Semantic release has a big amount of [Plugins](https://semantic-release.gitbook.io/semantic-release/extending/plugins-list). Some of the most popular plugins like npm, git and changelog came pre-installed with this action, but you can install any other plugin by specifiyng the envrionment variable "EXTRA_PLUGINS" with a list of plugin names.

```yml
steps:
    uses: brpaz/semantic-release@v1
    env:
        EXTRA_PLUGINS: "semantic-release-docker semantic-release-gcr"
```

## 🤝 Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

Please look at [CONTRIBUTING](CONTRIBUTING.md) for details how to get started.

## Author

👤 **Bruno Paz**

* Website: [https://brunopaz.net](https://brunopaz.net)
* Github: [@brpaz](https://github.com/brpaz)

## 📝 License

Copyright © 2019 [Bruno Paz](https://github.com/brpaz).

This project is [MIT](LICENSE) licensed.
