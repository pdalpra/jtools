## What is jtools ?

jtools is a set of scripts, available as a single command, to easily manage your favorite JVM-based tools:
Currently targeted at build tools, it support installation/upgrade/removal of :

* Maven
* SBT
* Gradle
* Leiningen

However, feel free to suggest support for additional tools on [jtools's issue tracker](https://github.com/pdalpra/jtools/issues) !

## Why use jtools when I can use a package manager ?

This is indeed a reasonable question.

You could very well use any package manager available for your OS.
However, using a package manager has two huge flaws :

* They are *so many* package managers, sometimes several per OS/distro, each using their own packaging format. It it hard to manage several computers with possibly different OSes in the same fashions as tools differs.
* They depend on the good will of maintainers that will bundle new versions for each package manager

jtools hope to solve these issues (for JVM-based tools at least) by: 

* Relying only on bash scripts, with as few external dependencies as possible. ATM, only either wget/curl/httpie and Git are required, which are quite common tools for a developer :)
* Installing directly from upstreams source, either through Git or by installing from the official distributions

## Setup

Clone jtools :

```
git clone https://github.com/pdalpra/jtools.git ~/.bin/jtools
```

Then, in your `.bashrc`/`.zshrc`/your shell's startup file, add:

```
export PATH=$PATH:~/.bin/jtools/bin
eval $(jtools init -)
export PATH=$PATH:$(jtools path)
```

## Usage

### Structure
jtools exposes several subcommands, one for each supported tool :

* `jtools maven`
* `jtools gradle`
* `jtools sbt`
* `jtools lein`

In turn, each of those subcommands expose three subcommands :

* `install`
* `update`
* `remove`

This subcommands allows you to either install, update or remove the selected tool.

### Examples 

To install all four tools, type :

```
$ jtools maven install
$ jtools gradle install
$ jtools sbt install
$ jtools lein install 
```

`update` and `remove` works in the same way as `install`:

```
$ jtools maven upgrade
$ jtools gradle upgrade
$ jtools sbt upgrade
$ jtools lein upgrade 
```

### `jtools maven home`

`jtools maven` also offers and an additional subcommand, `home`, to easily export Maven's install path to the `M2_HOME` environment variable:

```
export M2_HOME=$(jtools maven home)
```

## Contributing

### License

jtools is licensed under the MIT license. Pull requests are welcome :)
The source codes lives in [https://github.com/pdalpra/jtools](https://github.com/pdalpra/jtools)

### Issues ? Feature requests ?

Feel free to report any bug or reques additional tools supports or enhancements on [jtools issue tracker](https://github.com/pdalpra/jtools/issues) !
