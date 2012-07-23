Deface::Override.new(:virtual_path => "spree/products/show",
	                   :name => "product_detail_gift_packaging_mockup",
	                   :insert_after => "[itemprop='description']",
	                   :sequence => 20,
	                   :partial => "spree/products/gift_packaging_mockup",
	                   :disabled => false)
