Redmine::Plugin.register :add_ext_id_to_issues do
  name 'Add Ext Id To Issues plugin'
  author 'Anton Nekrasov'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/an280420/redmine-plug-add-column'
  author_url 'https://github.com/an280420'
end

Issue.safe_attributes 'ext_id'
