#/bin/bash

GEMS_PATH=`ruby -e "print Gem.default_dir"`

ruby "$GEMS_PATH"/gems/MicroNAS-0.0.1/webui/routes.rb
