# clean-start

Configuration and dot files I use when installing my development setup on a new machine.

## Install

#### Text Editor(s)
- Download sublime text
- `sudo mkdir -p "/usr/local/bin/" && sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl`

#### Terminal
- Download iTerm2
- Install oh-my-zsh `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#### Ruby
- RVM: `curl -sSL https://get.rvm.io | bash -s stable`
- Install a ruby version: `rvm install 2.3.0`
- `echo "gem: --no-document" >> ~/.gemrc`

#### iOS Dev
- xcversion: `gem install xcode-install`

#### Git
- p4merge
- gitup
