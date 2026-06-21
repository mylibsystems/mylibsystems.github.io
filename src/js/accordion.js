function expand(header, id) {
    collapseAll();

    var el = document.getElementById(id);
    el.classList.toggle("accordion");
    header.classList.toggle("accordion");
}

function collapseAll() {
    var elements = document.getElementsByClassName('accordion');

    while (elements.length > 0) {
        elements[0].classList.remove('accordion');
    }
}