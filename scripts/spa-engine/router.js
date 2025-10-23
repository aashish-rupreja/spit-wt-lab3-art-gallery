import { routes } from "./routes.js";
console.log("LOLE");

const updateContainer = document.getElementById("update-container");
const pagePathPrefix = "pages/";
const stylePathPrefix = "styles/";

async function loadPage(path) {
    const pageName = routes[path] || `${pagePathPrefix}404`;
    const pageContent = await fetch(`${pagePathPrefix}${pageName}.html`);
    const pageHtml = await pageContent.text();

    const linkElements = document.getElementsByTagName('link');
    let applyStyle = true;
    for (const linkElement of linkElements) {
        if (linkElement.href.includes(pageName)) {
            applyStyle = false;
        }
    }
    if (applyStyle) {
        const styleLink = document.createElement('link');
        styleLink.rel = 'stylesheet';
        styleLink.href = `${stylePathPrefix}${pageName}.css`;
        document.head.appendChild(styleLink);
    }

    // path != "/" ? document.title = document.querySelector(`a[href="${path}"]`).innerText : '';
    updateContainer.innerHTML = pageHtml;
}

export function handleRoute() {
    const path = window.location.pathname;
    loadPage(path);
}

export function navigateTo(url, state = {}) {
    history.pushState(state, "", url);
    handleRoute();
}
