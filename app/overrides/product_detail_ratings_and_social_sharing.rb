 Deface::Override.new(:virtual_path => "spree/products/show",
 	                   :name => "product_detail_social_sharing",
 	                   :insert_after => "[itemprop='description']",
 	                   :partial => "spree/hooks/ratings_and_social_bookmarks",
 	                   :disabled => false)
