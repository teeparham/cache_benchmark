module ApplicationHelper
  include CacheRocket

  def cat_button(cat)
    return unless cat
    link_to cat.name, cat_path(cat), class: 'pure-button pure-button-primary'
  end

  def googs_button(cat)
    return unless cat
		link_to "Search for #{cat.name}", "http://google.com?q=#{ERB::Util.html_escape(cat.name)}", class: 'pure-button'
  end

  def rcache(name = {}, options = nil, &block)
    if controller.perform_caching
      safe_concat(fragment_for(name, options, &block))
    else
      yield
    end
    nil
  end

  def replace_cats_hash
    {
      cat_button:        ->(cat) { cat_button(cat) },
      cat_friend_button: ->(cat) { cat_button(cat.best_friend) },
      googs_buttons:     ->(cat) { googs_button(cat) + googs_button(cat.best_friend) },
    }

  end

end
