(function(){

  let i;

  function $set_year(){
    for(i = 2020; i > 1919; i--){
      $('#user_birth_year').append($("<option>").val(i).text(i));
    }
  }

  function $set_month(){
    for(i = 1; i <= 12; i++){
      $('#user_birth_month').append($("<option>").val(i).text(i));
    }
  }

  function $set_day(){
    let children = $('#user_birth_day').children('option')
    $('#user_birth_day').children('option').remove();
    $('#user_birth_day').append($("<option>").val('--').text('--'));
    
    if($('#user_birth_year').val() !== '' &&  $('#user_birth_month').val() !== ''){
      const last_day = new Date($('#user_birth_year').val(),$('#user_birth_month').val(),0).getDate()
      for (i = 1; i <= last_day; i++) {
        $('#user_birth_day').append($("<option>").val(i).text(i));
      }
    }
  }

  window.onload = function(){
    $set_year();
    $set_month();
    $set_day();
    $('#user_birth_year').change($set_day)
    $('#user_birth_month').change($set_day)
  }
})();