Deface::Override.new(:virtual_path => "spree/checkout/_address",
                     :name => "fix_button_position",
                     :insert_before => "div.form-buttons",
                     :text => "<div style='margin-top:28px;' class='clearfix'></div>",
                     :disabled => false)