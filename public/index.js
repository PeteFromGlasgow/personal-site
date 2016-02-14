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
		"Savent",
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
})