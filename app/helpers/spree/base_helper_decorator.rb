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
  
  def short_breadcrumbs(taxon, separator="&nbsp;&raquo;&nbsp;")
    return "" if current_page?("/") || taxon.nil?
    separator = raw(separator)
    crumbs = []
    if taxon
      crumbs << taxon.ancestors.collect { |ancestor| content_tag(:li, link_to(ancestor.name , seo_url(ancestor)) + separator) } unless taxon.ancestors.empty?
      crumbs << content_tag(:li, content_tag(:span, link_to(taxon.name , seo_url(taxon))))
    end
    crumb_list = content_tag(:ul, raw(crumbs.flatten.map{|li| li.mb_chars}.join), :class => 'inline')
    content_tag(:div, crumb_list, :id => 'breadcrumbs')
  end
  
end
