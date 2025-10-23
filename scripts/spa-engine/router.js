import { routes } from "./routes.js";

const updateContainer = document.getElementById("update-container");
async function loadPage(path) {
    const pageName = routes[path] || "pages/404";
    const pageContent = await fetch(`${pageName}.html`);
    const pageHtml = await pageContent.text();
    updateContainer.innerHTML = pageHtml;
    // document.title = pageDetails.title;
    const styleLink = document.createElement('link');
    styleLink.rel = 'stylesheet';
    styleLink.href = `styles/${pageName}.css`;
    document.head.appendChild(styleLink);
    window.scrollTo(0, 0);
}

export function handleRoute() {
    const path = window.location.pathname;
    loadPage(path);
}

export function navigateTo(url, state = {}) {
    history.pushState(state, "", url);
    handleRoute();
}
