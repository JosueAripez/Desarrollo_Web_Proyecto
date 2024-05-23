let slideIndex = 0;
showSlide(slideIndex);

function moveSlide(n) {
    slideIndex += n;
    showSlide(slideIndex);
}

function showSlide(n) {
    let slides = document.querySelectorAll('.slide');
    if (n >= slides.length) {
        slideIndex = 0;
    } else if (n < 0) {
        slideIndex = slides.length - 1;
    }
    slides.forEach(slide => {
        let adjustedIndex = slideIndex % slides.length;
        slide.style.transform = `translateX(-${adjustedIndex * 100}%)`;
    });
}

setInterval(() => {
    moveSlide(1);
}, 3000);
