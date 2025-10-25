const artName = window.location.search.slice(1).replaceAll("%20", " ");

if (artName) {
    viewArt(artName);
}

async function viewArt(artName) {
    const detailsDiv = document.getElementById("art-details");
    const contentDiv = document.getElementById("art-details-content");
    const main = document.querySelector('nav + main');

    if (!detailsDiv || !contentDiv) {
        console.error("Missing art details container in DOM");
        return;
    }

    const grid = document.querySelector(".art-grid");
    if (grid) grid.style.display = "none";

    detailsDiv.style.display = "block";
    contentDiv.innerHTML = "Loading...";

    try {
        const res = await fetch(`api/view-art.php?name=${encodeURIComponent(artName)}`);
        if (!res.ok) throw new Error("Failed to fetch art details");

        const art = await res.json();

        main.style.background = `url(${art.art_image}) no-repeat`;

        contentDiv.innerHTML = `
            <h2>${art.art_name}</h2>
            <p><strong>Artist:</strong> ${art.artist_name}</p>
            <p><strong>Year:</strong> ${art.year}</p>
            <p><strong>Description:</strong> ${art.description}</p>
        `;

    } catch (err) {
        console.error(err);
        contentDiv.textContent = "Error loading art details.";
    }
}
