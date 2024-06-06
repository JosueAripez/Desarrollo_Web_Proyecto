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

const productos = [
    "Manzana",
    "Platano",
    "Fresa",
    "Naranja",
    "Pera",
    "Uva",
    "Kiwi",
    "Mango",
    "Piña",
    "Sandia",
    "Melon",
    "Cereza",
    "Limon",
    "Mandarina",
    "Papaya",
    "Frambuesa",
    "pepino",
    "Durazno"
];

function mostrarSugerencias(value) {
    const sugerencias = document.getElementById('sugerencias');
    sugerencias.innerHTML = '';
    
    if (value.length === 0) {
        return;
    }
    
    const filteredProducts = productos.filter(product => product.toLowerCase().includes(value.toLowerCase()));
    
    filteredProducts.forEach(product => {
        const div = document.createElement('div');
        div.classList.add('suggestion');
        div.innerText = product;
        div.onclick = () => seleccionarProducto(product);
        sugerencias.appendChild(div);
    });
}

function seleccionarProducto(product) {
    document.getElementById('buscador').value = product;
    document.getElementById('sugerencias').innerHTML = '';
}

function buscarProducto() {
    const query = document.getElementById('buscador').value;
    document.getElementById('query').value = query;
    return true;
}
