# General view helpers
module ApplicationHelper
  # Ideally only override @title_prefix in your controller
  def title
    @title_prefix ||= "#{controller_name.singularize} #{action_name}".humanize.titleize
    @title ||= "#{@title_prefix} | #{SETTINGS[:name]}"
  end

  def render_empty(list, message: 'Nothing to display')
    render('empty', message: message) if list.empty?
  end

  def render_errors(model)
    render('errors', model: model) if model.errors.any?
  end
end
