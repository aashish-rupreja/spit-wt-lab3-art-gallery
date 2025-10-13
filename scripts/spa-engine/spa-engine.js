let spaLinkToPageMap = new Map([
    ["explore-art", "homepage"],
    ["categories", "homepage"]
]);
let updateContainer = document.querySelector('main.content');
let spaLinks = document.querySelectorAll('[data-spa-link]');
spaLinks.forEach(spaLink => spaLink.addEventListener('click', updateMainContent));

function updateMainContent(event) {
    const spaLink = event.srcElement.getAttribute('data-spa-link');
    const page = spaLinkToPageMap.get(spaLink);
    fetch(`${page}.html`)
        .then(response => response.text())
        .then(html => {
            updateContainer.innerHTML = html;
        })
        .catch(err => console.error(err));
}