require 'redmine'
require 'redmine_select2'

Redmine::Plugin.register :redmine_select2 do
  name        'Redmine Select2 plugin'
  description 'Plugin add select2 component to redmine'
  author      'Undev'
  version     '0.0.1'
  url         'https://github.com/Undev/redmine_select2'

  requires_redmine :version_or_higher => '2.1'
end
