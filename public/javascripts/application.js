// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults



$(document).ready(function() {
  	$('#display-inline-block input').change(function () {
	    if ($(this).attr("checked")) {
	        //do the stuff that you would do when 'checked'
			$(this).parent().parent().css('background-color', 'lightyellow');
			$(this).parent().parent().css('color', '#000');
	        return;
	    }
	    
		// Uncheck today's day => lightblue
		$(this).parent().parent().css('background-color', '#7195aa');
		$(this).parent().parent().css('color', '#fff');
	});
	
	$(function()
	{
		$('.turn-me-into-datepicker')
			.datePicker({
				inline:true, 
				dateFormat: 'yy-mm-dd',
				startDate: new Date(2011, 1 - 1, 1),
				endDate:new Date(2011, 12 - 1, 31),
			})
			.bind(
				'dateSelected',
				function(e, selectedDate, $td)
				{
					$('#given_lunch_date_of_lunch').val(selectedDate.asString());
				}
			);
	});
});




