$(document).ready(function (e) {
	// Hide all steps except the first one
	$(".step:not(#step-1)").hide();

	// Handle next button clicks
	$(".next-btn").click(function (e) {
		e.preventDefault();
		var currentStep = $(this).closest(".step");
		var nextStep = currentStep.next(".step");
		currentStep.hide();
		nextStep.show();
	});

	// Handle previous button clicks
	$(".prev-btn").click(function (e) {
		e.preventDefault();
		var currentStep = $(this).closest(".step");
		var prevStep = currentStep.prev(".step");
		currentStep.hide();
		prevStep.show();
	});

	// Handle form submission
	$('input[type="radio"]').click(function () {
		let checkedAnswers = $("input[type=radio]:checked").length;
		let count = parseInt(document.getElementsByClassName('step').length)
		if (count === checkedAnswers) {
			$(".submit-btn").removeClass("disabled");
		} else {
			$(".submit-btn").addClass("disabled");
		}
	});
});