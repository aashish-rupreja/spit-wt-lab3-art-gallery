import { routes } from "./routes.js";

const updateContainer = document.getElementById("update-container");
const pagePathPrefix = "pages/";
const stylePathPrefix = "styles/";
const scriptPathPrefix = "scripts/";

async function loadPage(path) {
    const pageName = routes[path] || `${pagePathPrefix}404`;
    const pageContent = await fetch(`${pagePathPrefix}${pageName}.html`);
    const pageHtml = await pageContent.text();

    applyStyles(pageName);
    applyScripts(pageName);

    // path != "/" ? document.title = document.querySelector(`a[href="${path}"]`).innerText : '';
    updateContainer.innerHTML = pageHtml;
}

function applyStyles(pageName) {
    const linkElements = document.getElementsByTagName('link');
    let applyStyle = true;
    for (const linkElement of linkElements) {
        if (linkElement.href.includes(pageName)) {
            applyStyle = false;
            break;
        }
    }
    if (applyStyle) {
        const styleLink = document.createElement('link');
        styleLink.rel = 'stylesheet';
        styleLink.href = `${stylePathPrefix}${pageName}.css`;
        document.head.appendChild(styleLink);
    }
}

function applyScripts(pageName) {
    const scriptElements = document.getElementsByTagName('script');
    let applyScript = true;
    for (const scriptElement of scriptElements) {
        if (scriptElement.src.includes(pageName)) {
            applyScript = false;
            break;
        }
    }
    if (applyScript) {
        const script = document.createElement('script');
        script.src = `${scriptPathPrefix}${pageName}.js`;
        document.body.appendChild(script);
    }
}

export function handleRoute() {
    const path = window.location.pathname;
    loadPage(path);
}

export function navigateTo(url, state = {}) {
    history.pushState(state, "", url);
    handleRoute();
}
