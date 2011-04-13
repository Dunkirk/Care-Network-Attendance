# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def sort_link(title, column, options = {})
    condition = options[:unless] if options.has_key?(:unless)
    sort_dir = params[:d] == 'up' ? 'down' : 'up'
    link_to_remote title, request.parameters.merge({ :url => { :action => :change_sort_report },
    	:with => "'c=#{column}&d=#{sort_dir}&service_id=' + $('service_id').value" })
  end

end

