// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function()
{
	$('.turn-me-into-datepicker')
		.datePicker({inline:true, dateFormat: 'yy-mm-dd'})
		.bind(
			'dateSelected',
			function(e, selectedDate, $td)
			{
				$('#given_lunch_date_of_lunch').val(selectedDate.asString());
			}
		);
});