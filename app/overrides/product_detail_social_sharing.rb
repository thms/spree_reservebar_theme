Deface::Override.new(:virtual_path => "spree/products/show",
	                   :name => "product_detail_social_sharing",
	                   :insert_before => "div#wishlist-form",
	                   :partial => "spree/hooks/social_bookmarks",
	                   :disabled => false)
