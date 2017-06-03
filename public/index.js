var madlibs = {
	"adjective": [
		"Awesome",
		"Bearded",
		"Geeky",
		"Drunk",
		"Travelling"
	],
	"noun": [
		"Code",
		"Software",
		"Website",
		"Beer",
		"DIY"
	],
	"job": [
		"Architect",
		"Creator",
		"Consumer"
	]
}


$(document).ready(function(){
	$(document).foundation();

	/**
	 * Generates a subtitle for the page
	 * @return {String} Words randomly stuck together
	 */
	function madLib(){
		return _.sample(madlibs.adjective)+" "+_.sample(madlibs.noun)+" "+_.sample(madlibs.job);
	}

	$("#main-subtitle").html(madLib());

	var offcanvas = $(document)
	offcanvas.on("opened.zf.offcanvas", function(){
		$("#menu-burger").html("&#10539;")
	})

	offcanvas.on("closed.zf.offcanvas", function(){
		$("#menu-burger").html("&#9776;")
	})
})
