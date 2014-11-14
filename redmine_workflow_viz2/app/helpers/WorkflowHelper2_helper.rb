module WorkflowHelper2Helper
  
  def generate_graph(workflows)   
    # generate a string for the google chart api containing the edges
    edges = ""
	
	# generate the chart only for one role and one tracker
	if @roles.length == 1 && @trackers.length == 1
		for workflow in workflows['always']   
			# get the names of the old and the new status of the current workflow transition
			old_status_name = @statuses[workflow.old_status_id - 1].name
			new_status_name = @statuses[workflow.new_status_id - 1].name
      
			# append the workflow transisition to the edges string
			edges << '"' << "#{old_status_name}" << '"->"' << "#{new_status_name}" << '";'
		end
	else
		# show a note that there are several roles or trackers selected.
		edges << '"' << l(:infoIfSeveralItemsSelected) << '";'
	end
  
    # return the URL for the image tag
    "http://chart.apis.google.com/chart?cht=gv&chl=digraph{#{CGI.escape(edges)}}"
  end

end

require 'workflows_helper'
WorkflowsHelper.send :include, WorkflowHelper2Helper
