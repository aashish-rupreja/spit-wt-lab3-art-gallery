import { navigateTo, handleRoute } from "./router.js";
import { initState, getUserState, subscribe } from "./state.js";

document.addEventListener("click", (e) => {
    const link = e.target.closest("a[data-link]");
    if (link) {
        e.preventDefault();
        navigateTo(link.href);
    }
});

window.addEventListener("popstate", (e) => {
    handleRoute(e.state);
});

window.addEventListener("DOMContentLoaded", () => {
    history.replaceState({}, "", window.location.pathname);
    handleRoute();
});

