# surf

Surf the cloud, bro

## Install

Should be easy like https://github.com/37signals/pow/blob/master/install.sh

## Usage

    surf help

## Example

Update apt and upgrade packages

    surf remote "-p 2222 ubuntu@my-vm" apt-upgrade

Our suggested rails stack

    surf rails -p 2222 ubuntu@my-vm

## TODOs and Notes

1. Install
2. when we need options, use bash's `getopts`
