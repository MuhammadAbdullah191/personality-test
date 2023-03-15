$(document).ready(function (e) {
	if ($(".test-div")[0]) {
		$(".step:not(#step-1)").hide();
		$(".next-btn").click(function (e) {
			e.preventDefault();
			var currentStep = $(this).closest(".step");
			var nextStep = currentStep.next(".step");
			currentStep.hide();
			nextStep.show();
		});

		$(".prev-btn").click(function (e) {
			e.preventDefault();
			var currentStep = $(this).closest(".step");
			var prevStep = currentStep.prev(".step");
			currentStep.hide();
			prevStep.show();
		});

		$('input[type="radio"]').click(function () {
			let checkedAnswers = $("input[type=radio]:checked").length;
			let count = parseInt(document.getElementsByClassName('step').length)
			if (count === checkedAnswers) {
				$(".submit-btn").removeClass("disabled");
			} else {
				$(".submit-btn").addClass("disabled");
			}
		});
	}
});