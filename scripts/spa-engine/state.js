let appState = {
    user: null,
    favorites: [],
    listeners: []
};


export function initState() {
    const storedUser = localStorage.getItem("user");
    const storedFavs = localStorage.getItem("favorites");

    if (storedUser) appState.user = JSON.parse(storedUser);
    if (storedFavs) appState.favorites = JSON.parse(storedFavs);
}


export function setUser(userData) {
    appState.user = userData;
    if (userData) {
        localStorage.setItem("user", JSON.stringify(userData));
    } else {
        localStorage.removeItem("user");
    }
    notifyListeners();
}

export function getUserState() {
    return appState.user;
}


export function toggleFavorite(artId) {
    if (!appState.user) return false;

    const index = appState.favorites.indexOf(artId);
    if (index >= 0) {
        appState.favorites.splice(index, 1);
    } else {
        appState.favorites.push(artId);
    }

    localStorage.setItem("favorites", JSON.stringify(appState.favorites));
    notifyListeners();
    return true;
}

export function getFavorites() {
    return appState.favorites;
}


export function subscribe(listenerFn) {
    appState.listeners.push(listenerFn);
}


function notifyListeners() {
    appState.listeners.forEach(fn => fn(appState));
}
