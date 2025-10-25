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

    initState();

    const user = getUserState();
    updateHeader(user);

    subscribe((newState) => {
        updateHeader(newState.user);
    });

    handleRoute();
});

function updateHeader(user) {
    const headerRight = document.getElementById("h-right");
    if (!headerRight) return;

    headerRight.innerHTML = "";

    if (user && user.name) {
        headerRight.innerHTML = `
            <span class="light-text">Hi, ${user.name}</span>
            <a href="/favorites" data-link>Favorites</a>
            <a href="#" id="logout-btn" class="light-text">Logout</a>
        `;

        const logoutBtn = document.getElementById("logout-btn");
        logoutBtn.addEventListener("click", (e) => {
            e.preventDefault();
            localStorage.removeItem("user");
            updateHeader(null);
            navigateTo("/sign-in");
        });
    } else {
        headerRight.innerHTML = `<a class="light-text" href="/sign-in" data-link>Sign In</a>`;
    }
}
