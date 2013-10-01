Spree::BaseHelper.class_eval do 
  def reverse_taxons_tree(root_taxon, current_taxon, max_level = 1)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, :class => 'taxons-list' do
      root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current' : nil
        content_tag :li, :class => css_class do
         link_to(taxon.name, seo_url(taxon)) +
         taxons_tree(taxon, current_taxon, max_level - 1)
        end
      end.reverse.join("\n").html_safe
    end
  end
  
  def menu_taxons_tree(root_taxon, current_taxon, max_level = 1, extra_items = nil)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, :class => 'nav navbar-nav' do
      root_taxon.children.each_with_index.map do |taxon, index|
        css_class = 'dropdown'
        css_class += ' last' if index == root_taxon.children.count - 1
        content_tag :li, :class => css_class do
          link_to(taxon.name, '#', :class => "dropdown-toggle", 'data-toggle' => "dropdown") +
          taxons_tree_responsive(taxon, current_taxon, max_level - 1)
        end
      end.join("\n").html_safe
    end
  end
  
  def taxons_tree_responsive(root_taxon, current_taxon, max_level = 1)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, :class => 'dropdown-menu' do
      root_taxon.children.each_with_index.map do |taxon, index|
        css_class = taxon.children.empty? ? '': 'dropdown-submenu'
        css_class += ' last' if index == root_taxon.children.count - 1
        content_tag :li, :class => css_class do
          link_to(taxon.name, seo_url(taxon)) +
          taxons_tree_responsive(taxon, current_taxon, max_level - 1)
        end
      end.join("\n").html_safe
    end
  end
  
  
  # First level main menu, only called once, then uses standard taxon tree for the inner items
  # This is deprecated, implemented the old version of Woody's design
  def menu_taxons_tree_old(root_taxon, current_taxon, max_level = 1, extra_items = nil)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, :class => 'taxons-list' do
      menu = root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current' : nil
        # Disabling the top level menus breaks hover on iOS, so we need to keep them as links (at least for this type of device)
        user_agent = UserAgent.parse(request.user_agent)
        content_tag :li, :class => "#{taxon.permalink} #{css_class}" do
        ##content_tag :li, :class => css_class do
          if ['iPad', 'iPhone'].include? user_agent
            link_to(taxon.name, seo_url(taxon)) +
            taxons_tree(taxon, current_taxon, max_level - 1)
          else
            content_tag(:span, taxon.name) +
            taxons_tree(taxon, current_taxon, max_level - 1)
          end
        end
      end
      if extra_items
        menu << content_tag(:li, link_to(extra_items.first[0], extra_items.first[1]))
      end
      menu.join("\n").html_safe
    end
  end
  
  def short_breadcrumbs(taxon, separator="&nbsp;&raquo;&nbsp;")
    return "" if current_page?("/") || taxon.nil?
    separator = raw(separator)
    crumbs = [content_tag(:li, link_to(t(:home) , root_path) + separator)]
    if taxon
      ancestors = taxon.ancestors
      ancestors.delete_at(0) if ancestors.first.name == 'Type'
      crumbs << ancestors.collect { |ancestor| content_tag(:li, link_to(ancestor.name , seo_url(ancestor)) + separator)} unless ancestors.empty?
      crumbs << content_tag(:li, content_tag(:span, link_to(taxon.name , seo_url(taxon))))
    end
    crumb_list = content_tag(:ul, raw(crumbs.flatten.map{|li| li.mb_chars}.join), :class => 'inline')
    content_tag(:div, crumb_list, :id => 'breadcrumbs')
  end
  
end
