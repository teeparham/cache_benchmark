module ApplicationHelper
  include CacheReplace

  def monkey_button(monkey)
    return unless monkey
    link_to monkey.name, monkey_path(monkey), class: "random#{rand(2)}"
  end

  def googs_button(monkey)
    return unless monkey
		link_to "Search the Googs for #{monkey.name}", "http://google.com?q=#{ERB::Util.html_escape(monkey.name)}"
  end

end
