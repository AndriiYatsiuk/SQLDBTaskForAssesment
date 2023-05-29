$(document).ready(function () {
	$('.header__burger').click(function (event) {
		$('.header__burger,.header__menu').toggleClass('active');
		$('body').toggleClass('lock')
	});
});

//zoom back img by click. Get all the images with the "zoomable" class
const images = document.querySelectorAll('.clients-adv-content img, .nextadventure-mainpage img');

// Attach a click event listener to each image
images.forEach(image => {
	image.addEventListener('click', function () {
		this.classList.toggle('zoomed');
	});
});
