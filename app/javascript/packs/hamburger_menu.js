toggleBurger = () => {
    let burgerIcon = document.getElementById('burger');
    let showMenu = document.getElementById('navbarBasicExample');
    burgerIcon.classList.toggle('is-active');
    showMenu.classList.toggle('is-active');
};