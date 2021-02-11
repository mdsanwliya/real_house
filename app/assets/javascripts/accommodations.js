$(document).on('change load', '#asset_type',function(){
	assetSelect();
})

$( window ).on( "load", function() {
	assetSelect();
})

function assetSelect(){
	asset_type = $('select#asset_type option:selected').val();
	if (asset_type == 'House') {
		$('.complex-building, .commecial-unit').css('display', 'none')
		$('.house').css('display', 'block')
	}
	if (asset_type == 'CommecialUnit') {
		$('.complex-building, .house').css('display', 'none')
		$('.commecial-unit').css('display', 'block')
	}
	if (asset_type == 'ComplexBuilding') {
		$('.commecial-unit, .house').css('display', 'none')
		$('.complex-building').css('display', 'block')
	}
}