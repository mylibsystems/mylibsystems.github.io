function scrollFunction(id) {
    var el = document.getElementById(id);

    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        el.classList.add("white-header");
    } else {
        el.classList.remove("white-header");
        //el.style.backgroundColor = "transparent";
    }
}

function scroll() {
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();

            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });
}