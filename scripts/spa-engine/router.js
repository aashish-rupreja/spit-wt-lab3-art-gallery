import { routes } from "./routes.js";

const updateContainer = document.getElementById("update-container");
const pagePathPrefix = "pages/";
const stylePathPrefix = "styles/";
const scriptPathPrefix = "scripts/";

async function loadPage(path, query = "") {
    const pageName = routes[path] || `${pagePathPrefix}404`;
    const pageContent = await fetch(`${pagePathPrefix}${pageName}.html`);
    const pageHtml = await pageContent.text();

    applyStyles(pageName);

    const urlParams = new URLSearchParams(query);
    window.currentPageParams = Object.fromEntries(urlParams.entries());

    const newUrl = query ? `${path}${query}` : path;
    history.replaceState({}, "", newUrl);

    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
    updateContainer.style.opacity = 0;
    updateContainer.innerHTML = pageHtml;
    await new Promise(resolve => setTimeout(resolve, 500));
    applyScripts(pageName);
    updateContainer.style.opacity = 1;
}



function applyStyles(pageName) {
    const linkElements = document.getElementsByTagName('link');
    for (const linkElement of linkElements) {
        if (linkElement.href.includes(pageName)) {
            linkElement.remove();
            break;
        }
    }
    const styleLink = document.createElement('link');
    styleLink.rel = 'stylesheet';
    styleLink.href = `${stylePathPrefix}${pageName}.css`;
    document.head.appendChild(styleLink);
}

function applyScripts(pageName) {
    const scriptElements = document.getElementsByTagName('script');
    for (const scriptElement of scriptElements) {
        if (scriptElement.src.includes("view-art")) scriptElement.remove();
        if (scriptElement.src.includes(pageName)) {
            scriptElement.remove();
            break;
        }
    }
    const script = document.createElement('script');
    script.src = `${scriptPathPrefix}${pageName}.js`;
    document.body.appendChild(script);
}

export function handleRoute() {
    const path = window.location.pathname;
    const query = window.location.search;
    const main = document.querySelector('main');
    main.classList.remove("view-art-page");
    main.style.background = "";
    main.style.maxWidth = "";
    loadPage(path, query);
}


export function navigateTo(url, state = {}) {
    history.pushState(state, "", url);
    handleRoute();
}
