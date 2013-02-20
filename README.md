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

    surf rails my-app.example.com

## TODOs and Notes

1. Install
2. when we need options, use bash's `getopts`
3. passing config files in
4. rails application deploy setup, inc git remote for production
5. use an env var like `SURF_REMOTES=one,two,three` and iterate using those ssh opts for commands
6. check if apt packages are installed so we don't have to run apt-get install every time
7. since we're going to change most/all of git-deploy's default hooks, should we roll our own?
