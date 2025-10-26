import { navigateTo, handleRoute } from "./router.js";

document.addEventListener("click", (e) => {
    const link = e.target.closest("a[data-link]");
    if (link) {
        e.preventDefault();
        navigateTo(link.href);
    }
});

window.addEventListener("popstate", () => {
    handleRoute(window.location.pathname + window.location.search);
});

window.addEventListener("DOMContentLoaded", () => {
    history.replaceState({}, "", window.location.pathname + window.location.search);
    handleRoute(window.location.pathname + window.location.search);
});
