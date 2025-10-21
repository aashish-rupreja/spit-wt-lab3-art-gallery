import { linkToPageMap } from "./spa-link-to-page-map.js";

let updateContainer = document.querySelector('#update-container');
let spaLinks = document.querySelectorAll('[data-spa-link]');
spaLinks.forEach(spaLink => spaLink.addEventListener('click', updateMainContent));

async function updateMainContent(event) {
    const spaLink = event.srcElement.getAttribute('data-spa-link');
    const pageDetails = linkToPageMap.get(spaLink);
    try {
        const response = await fetch(`${pageDetails.page}.html`);
        const html = await response.text();
        updateContainer.innerHTML = html;
        document.title = pageDetails.title;
        const styleLink = document.createElement('link');
        styleLink.rel = 'stylesheet';
        styleLink.href = `/styles/${pageDetails.page}.css`;
        document.head.appendChild(styleLink);
        return html; // returned for potential further use
    } catch (err) {
        console.error(err);
        return null;
    }
}