require 'redmine'

Redmine::Plugin.register :redmine_all_issues do
  name 'Redmine All Issues plugin'
  author 'Jan Niggemann'
  description 'This plugin extends the top menu to display the link "View all issues" next to "Projects"'
  version '0.0.1'
  url 'https://github.com/jniggemann/Redmine-All-Issues'
  author_url 'mailto:jn@hz6.de'

  menu :top_menu, :all_issues, { :controller => 'issues', :action => 'index', :project_id => @project, :set_filter => 1}, :caption => :label_issue_view_all
end

