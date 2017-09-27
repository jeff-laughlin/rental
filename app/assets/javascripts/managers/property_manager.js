var property_manager = property_manager || (function()
{

  return {
    // listen for interaction
    // --
    listen : function()
    {

      $('.details').on('click', function(e){
        e.preventDefault();
        var details_prompt = $(this).children('#details_prompt').first();
        var chevron = $(this).children('.fa').first();
        var id = $(this).data('id');
        var selector = '#units_' + id;
        if(details_prompt.text() == 'show details')
        {

          $(selector).removeClass('hidden');
          details_prompt.text('hide details')
          chevron.removeClass('fa-chevron-down');
          chevron.addClass('fa-chevron-up');
        }
        else
        {
          $(selector).addClass('hidden');
          details_prompt.text('show details')
          chevron.removeClass('fa-chevron-up');
          chevron.addClass('fa-chevron-down');
        }
      })
    }
  };
}());
