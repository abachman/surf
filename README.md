# SURF IS NOT PRODUCTION READY IT IS SUPER BROKEN DON'T USE IT YET


# surf

Surf the cloud, bro

## Install

Should be easy like https://github.com/37signals/pow/blob/master/install.sh

## Usage

    surf help

## Example

Update apt and upgrade packages

    surf remote my-app.example.com apt-upgrade

Our suggested rails stack

    surf rails myapp.example.com myapp

## Idempotence

Surf is an idempotent system. That means when you run it repeatedly it won't re-execute what does not need to be done. For example, it will only update apt if the package cache is older than 1 day. It won't re-install packages from apt (or even try to) if they're already installed.

Running surf on a system that has already been setup should take no actions and complete in a few seconds after checks are complete.

## Configuration by fork

Surf's structure is inspired by sub: it is a scaffold full of conventions and defaults. Surf as it exists here is full of my personal choices with no room for configuration.

If you would like to change my decisions, please fork surf, make your changes, and use your own surf. Please don't send pull requests for subjective changes.

If you would like to add recipes or fix broken or buggy recipes, please send pull requests, I appreciate it.

## TODOs and Notes

1. Install
2. command docs
