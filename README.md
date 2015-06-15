# Redmine Select2 Plugin

[![Build Status](https://travis-ci.org/Undev/redmine__select2.png?branch=master)](https://travis-ci.org/Undev/redmine__select2)

This plugin adds [Select2 3.4.0] (https://select2.github.io/) to Redmine.

## Compatibility

This plugin version is compatible only with Redmine 2.3.x and later.

## Installation

1. To install the plugin
    * Download the .ZIP archive, extract files and copy the plugin directory into #{REDMINE_ROOT}/plugins.
    
    Or

    * Change you current directory to your Redmine root directory:  

            cd {REDMINE_ROOT}
            
      Copy the plugin from GitHub using the following commands:
      
            git clone https://github.com/Undev/redmine__select2.git plugins/redmine__select2
            
2. Install the required gems using the command:  

        bundle install  

    * In case of bundle install errors, remove the Gemfile.lock file, update the local package index and install the required dependencies. Then execute the `bundle install` command again:  

            rm Gemfile.lock
            sudo apt-get update
            sudo apt-get install -y libxml2-dev libxslt-dev libpq-dev
            bundle install
            
3. Restart Redmine.

Now you should be able to see the plugin in **Administration > Plugins**.

## Usage

This plugin is used by other Redmine plugins, for example, [Redmine Customization Plugin](https://github.com/Undev/redmine_customize), [Redmine Digest Plugin](https://github.com/Undev/redmine_digest), and [Redmine Simple Plugin](https://github.com/Undev/redmine_simple).

## Maintainers

Danil Tashkinov, [github.com/nodecarter](https://github.com/nodecarter)

## License

Copyright (c) 2014 Undev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
