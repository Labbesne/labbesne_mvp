//----------------------- Product Filters ----------------------
window.productFilter = function(){
  $('#men-toggler').click(function(){
    if($(this).prop('checked')){
      if($('#women-toggler').prop('checked')){
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=all`);
      } else {
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=male`);
      }
    } else{
      if($('#women-toggler').prop('checked')){
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=female`);
      } else {
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=all`);
      }
    };
  });
  $('#women-toggler').click(function(){
    if($(this).prop('checked')){
      if($('#men-toggler').prop('checked')){
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=all`);
      } else {
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=female`);
      }
    } else{
      if($('#men-toggler').prop('checked')){
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=male`);
      } else {
        $('.dynamic-deck').load(($('.next_deck').attr('href')).slice(0, -1) + (parseInt($('.next_deck').attr('href').slice(-1))-1) + `&gender=all`);
      }
    };
  });
  $('#top-toggler').click(function(){
    genderChecker('top', $(this).prop('checked'));
  });
  $('#pants-toggler').click(function(){
    genderChecker('pants', $(this).prop('checked'));
  });
  $('#shoes-toggler').click(function(){
    genderChecker('shoes', $(this).prop('checked'));
  });
};

var genderChecker = function(type, checked){
  if(checked){
      if($('#men-toggler').prop('checked')){
        $('li[data-type=' + type + ']').filter('[data-gender="Men"]').show()
      }
      if($('#women-toggler').prop('checked')){
        $('li[data-type=' + type + ']').filter('[data-gender="Women"]').show()
      }
  } else {
    $('li[data-type=' + type + ']').hide();
    $('li[data-type=' + type + ']').prependTo($('#out_deck'));
  }
};
