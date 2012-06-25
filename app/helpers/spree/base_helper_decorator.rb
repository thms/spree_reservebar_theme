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
  
  def menu_taxons_tree(root_taxon, current_taxon, max_level = 1, extra_items)
    return '' if max_level < 1 || root_taxon.children.empty?
    content_tag :ul, :class => 'taxons-list' do
      menu = root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current' : nil
        content_tag :li, :class => css_class do
         link_to(taxon.name, seo_url(taxon)) +
         taxons_tree(taxon, current_taxon, max_level - 1)
        end
      end
      menu << content_tag(:li, link_to(extra_items.first[0], extra_items.first[1]))
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
