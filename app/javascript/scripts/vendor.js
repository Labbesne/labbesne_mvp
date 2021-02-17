window.vendor = function(){
  $(document).on('click','.vendor_mark_ready', {} ,function(e){
    shipment = $(this).data('s')
    req = `/vendor/order_ready?s=${shipment}`

    $.post(req, function(){
      req = `/vendor/slip?s=${shipment}`
      window.open(req)
    })
  });
  $(document).on('click','.vendor_tab', {} ,function(e){
    $('.vendor_tab').removeClass('vendor_active_tab')
    $(this).addClass('vendor_active_tab')
  });
  $(document).on('click','.vendor_tab_orders', {} ,function(e){
    $('.vendor_main').load('orders')
  });
  $(document).on('click','.vendor_tab_products', {} ,function(e){
    $('.vendor_main').load('products')
  });
  $(document).on('click','.vendor_tab_analytics', {} ,function(e){
    $('.vendor_main').load('orders')
  });
  $(document).on('click','.vendor_tab_account', {} ,function(e){
    $('.vendor_main').load('profile')
  });
  $(document).on('focusout','.vendor_info_input', {} ,function(e){
    $('.loading_area').removeClass('hidden');
    value = ''
    input = $(this).data('action')
    if(input == 'address'){
       $(".vendor_address").each(function(index) {
        value = value + $(this).val() + " "
      });
    } else {
      value = $(this).val()
    }
    req = `/vendor/profile_change?value=${value}&input=${input}`
    $.post(req,function(){
      $('.loading_area').addClass('hidden');
    })
  });
}
window.vendor_product_pagination = function(){
  $(document).ready(function(){
    $('a.page-link').click(function(e){
      e.preventDefault()
      req = 'products?page=' + $(this)[0].href.slice(-1)
      $('.vendor_main').load(req)
    });
    $("#vendor_search").on("change paste keyup", function() {
      req = `search?sku=${$(this).val()}&page=${$(this).data('page')}`
       $('.dynamic_vendor_products_list').load(req)
    });
    $(document).on('click', '.vendor_lock', function(){
      $(this).addClass('hidden');
      $(this).next().removeClass('hidden');
      $(this).closest('li').attr('data-locked', 'false')
      $(this).closest('li').find('.vendor_product_details').prop('disabled', false)
      $(this).closest('li').find('.btn-vendor-save').removeClass('hidden')
      $(this).closest('li').find('.vendor_image_input').prop('disabled', false)
    });
    $('.btn-vendor-save').on('click',function(){
      $(this).closest('li').find('.loading_area_save_product').removeClass('hidden')
      p = $(this).data('p')
      $.each($(this).closest('li').find('.vendor_product_details'),function(){
        if($(this).data('prev') != $(this).val()){
          val = $(this).val()
          if($(this).data('type') == 'stock'){
            val = parseInt($(this).val()) - parseInt($(this).data('prev'))
          }
          req = `/vendor/product/edit?type=${$(this).data('type')}&val=${val}&p=${p}`
          butt = $(this)
          $.post(req, function(){
            butt.closest('li').find('.loading_area_save_product').addClass('hidden')
          });
        }
      });
      if($(this).closest('li').find('.vendor_image_input').val().length > 0){
        $(this).closest('li').find('.vendor_upload_image_trigger').click();
      }
      $(this).closest('li').find('.vendor_unlock').addClass('hidden')
      $(this).closest('li').find('.vendor_lock').removeClass('hidden')
      $(this).closest('li').find('.vendor_product_details').prop('disabled', true)
      $(this).closest('li').find('.loading_area_save_product').addClass('hidden')
      $(this).addClass('hidden')
    });
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
          $(input).closest('li').find('.vendor_product_row_image').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]); // convert to base64 string
      }
    }
    $(document).on('change', ".vendor_image_input", function(){
      readURL(this);
    });
    $(document).on('click', ".vendor_product_row_image", function(){
      $(this).closest('li').find('.vendor_image_input').click();
    });
    $(document).on('click', ".btn_new_product", function(){
      $('#new_vendor_product_row').removeClass('hidden');
    });
    $(document).on('click', ".btn-vendor-new-save", function(){
      $('#new_product_loader').removeClass('hidden')
      inputs = []
      $.each($(this).closest('li').find('.vendor_product_details'),function(){
        if($(this).val().length == 0){
          inputs.push($(this))
        }
      });
      if($(this).closest('li').find('#new_stock').val() == 0){
        inputs.push($(this).closest('li').find('#new_stock'))
      }
      if($('#new_attachment').val().length == 0){
        inputs.push($('#new_attachment'))
        $(this).closest('li').find('.vendor_upload_image').addClass('vendor_missing_input')
      }
      if(isNaN(parseInt($('#vendor_new_product_price').val()))){
        inputs.push($('#vendor_new_product_price'))
      }
      $.each(inputs, function(){
        $(this).addClass('vendor_missing_input')
      });
      if(inputs.length == 0){
        name = $(this).closest('li').find('#vendor_new_product_name').val()
        vendorSKU = $(this).closest('li').find('#vendor_new_sku').val()
        brand = $(this).closest('li').find('#vendor_new_product_brand').val()
        gender = $(this).closest('li').find('#vendor_new_product_gender').val()
        price = $(this).closest('li').find('#vendor_new_product_price').val()
        fabric = $(this).closest('li').find('#vendor_new_product_fabric').val()
        sizes = $(this).closest('li').find('#vendor_new_product_sizes').val()
        req = `/vendor/product/new?name=${name}&vendorSKU=${vendorSKU}&gender=${gender}&price=${price}&brand=${brand}&fabric=${fabric}&sizes=${sizes}`
        $.post(req, function(r){
          $('#new_viewable').val(r.vid)
          $('#new_image_form').prop('action',`/shop/admin/products/${r.id}/images`)
          $('#vendor_new_product_trigger').click();
        });
      } else{
        $('#new_product_loader').addClass('hidden')
      }
    });
    $(document).on('click', ".vendor_upload_image", function(){
      $(this).closest('li').find('#new_attachment').click();
    });
    $(document).on('change', "#new_attachment", function(){
      readURL(this);
      $(this).closest('li').find('.vendor_product_row_image').removeClass('new_image_placeholder')
      $('#new_upload_icon').addClass('hidden')
    });
    $(document).on('ajax:success', "#new_image_form", function(){
      $('#new_product_loader').addClass('hidden')
      $('.vendor_main').load('products')
    });
  });
}
