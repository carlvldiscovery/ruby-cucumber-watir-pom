# Setup

## Mac

### Install Xcode and then install command line tools.

The command line tools can be installed in Xcode by going to Xcode-> Preferences -> Downloads

### Install RVM

    curl -L https://get.rvm.io | bash

### Install Ruby

    rvm install ruby-2.5.0

To make this the default ruby on your Mac ...

    rvm use ruby-2.5.0 --default

### Install Homebrew

    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
    brew doctor

### Install chromedriver

Install `chromedriver` using Homebrew or npm:

    brew install chromedriver

### Install the bundler gem

    gem install bundler --no-ri --no-rdoc

## Windows

The following instructions show how to bootstrap a Windows ruby environment.

- Download and Install Ruby (at least 2.5) from http://rubyinstaller.org/downloads/
- Download and install chromedriver from http://chromedriver.storage.googleapis.com/index.html

Make sure the chromedriver is in your PATH enviroment variable.

From here you can follow the same instructions as above.

# Using the demo

The demo is split into 3 parts, each one adding another concept:

1. _**cucumber**_
2. cucumber + _**browser**_ automation
3. cucumber + browser automation + _**'pom' framework**_

They are intended to be explored / played with _in that order_. For each of these folders:

1.  Go to the folder (`cucumber` first):

        cd cucumber

2.  Read the README.md in that folder.

3.  Install any new dependencies:

        bundle install

4.  Run the tests (you can use this to check any changes you make too):

        cucumber

5.  Play around / experiment - if you get stuck, you undo all your changes with:

        git checkout .

6.  Once you're comfortable with the concept that this sub-project describes (i.e. 'cucumber'), repeat these steps for `browser`, then `pom-framework`.
