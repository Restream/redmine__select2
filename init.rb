require 'redmine'

Redmine::Plugin.register :redmine__select2 do
  name        'Redmine Select2 Plugin'
  description 'This plugin adds the Select2 component to Redmine.'
  author      'Undev'
  version     '1.1.0'
  url         'https://github.com/Undev/redmine__select2'
end

require 'redmine_select2'
