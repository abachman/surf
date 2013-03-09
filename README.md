# Alpha Software Notice

Surf is currently "alpha software". It works and can provision rails applications and set them up for deployment. It's unfriendly and inexperienced. I'm going to use it in production but you're on your own if you choose to do so.

# surf: set up rails fast

`surf` is an easy and fast way to set up ruby on rails on an ubuntu server quickly.

`surf` focuses on convention over configuration. It is, in my opinion, the best way to setup rails on ubuntu on a vps. The only configurable option right now is application name, nothing else can be changed.

`surf` celebrates minimism and simplicity by not being a generalized solution. Surf is less than 100k at the time of this writing.

`surf` is a command build with [sub](http://github.com/37signals/sub) and only needs bash, sed, ssh, scp, and git to function.

## Install

Download surf:

    git clone http://github.com/ngauthier/surf .surf

Initialize surf:

bash:

    echo 'eval "$($HOME/.surf/bin/surf init -)"' >> ~/.bash_profile
    exec bash

zsh:

    echo 'eval "$($HOME/.surf/bin/surf init -)"' >> ~/.zshenv
    source ~/.zshenv

## Usage

    surf help

## Example

Our suggested rails stack

    surf rails myapp.example.com myapp

Update apt and upgrade packages

    surf remote my-app.example.com apt-upgrade

## Idempotence

Surf is an idempotent system. That means when you run it repeatedly it won't re-execute what does not need to be done. For example, it will only update apt if the package cache is older than 1 day. It won't re-install packages from apt (or even try to) if they're already installed.

Running surf on a system that has already been setup should take no actions and complete in a few seconds after checks are complete.

## Configuration by fork

Surf's structure is inspired by sub: it is a scaffold full of conventions and defaults. Surf as it exists here is full of my personal choices with no room for configuration.

If you would like to change my decisions, please fork surf, make your changes, and use your own surf. Please don't send pull requests for subjective changes.

If you would like to add recipes or fix broken or buggy recipes, please send pull requests, I appreciate it.

## TODOs and Notes

1. Install via bash command
2. command docs
3. [automatic security updates](https://help.ubuntu.com/community/AutomaticSecurityUpdates)
4. Ruby 2.0 from https://gist.github.com/ngauthier/5039249
