module ApplicationHelper
  include CacheRocket

  def monkey_button(monkey)
    return unless monkey
    link_to monkey.name, monkey_path(monkey), class: 'pure-button pure-button-primary'
  end

  def googs_button(monkey)
    return unless monkey
		link_to "Search for #{monkey.name}", "http://google.com?q=#{ERB::Util.html_escape(monkey.name)}", class: 'pure-button'
  end

  def rcache(name = {}, options = nil, &block)
    if controller.perform_caching
      safe_concat(fragment_for(name, options, &block))
    else
      yield
    end
    nil
  end

  def replace_monkeys_hash
    {
      monkey_button:        ->(monkey) { monkey_button(monkey) },
      monkey_friend_button: ->(monkey) { monkey_button(monkey.best_friend) },
      googs_buttons:        ->(monkey) { googs_button(monkey) + googs_button(monkey.best_friend) },
    }

  end

end
