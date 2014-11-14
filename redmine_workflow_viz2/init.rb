#Encoding: UTF-8
Redmine::Plugin.register :redmine_workflow_viz2 do
  name 'Redmine Workflow Viz2'
  author 'Henning Kröger'
  description 'Visualization for the workflow configuration. Adapted from the plugin redmine_workflow_viz to work with Redmine 2.x.'
  version '0.9.0'
  url 'https://github.com/macio-gmbh/redmine_workflow_viz2'
  author_url 'http://www.macio.de'
end

require_dependency 'WorkflowHelper2_helper'
