require 'redmine'
require 'redmine_select2'

Redmine::Plugin.register :redmine__select2 do
  name        'Redmine Select2 Plugin'
  description 'This plugin adds the Select2 component to Redmine.'
  author      'Undev'
  version     '1.0.5'
  url         'https://github.com/Undev/redmine__select2'

  requires_redmine :version_or_higher => '2.1'
end
