// --- Slider ---

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

// --- Nav ---

 window.addEventListener('scroll', function() {
    var nav = document.querySelector('.contenedor-nav');
    if (window.scrollY > 200) { // Cambia 200 por el número de píxeles después del cual quieres que la barra se vuelva fija
        nav.classList.add('fijo');
    } else {
        nav.classList.remove('fijo');
    }
});
