const artName = window.location.search.slice(1).replaceAll("%20", " ");

if (artName) {
    console.log("Detected art:", artName);
    viewArt(artName);
}

async function viewArt(artName) {
    console.log("Fetching art details for:", artName);

    const detailsDiv = document.getElementById("art-details");
    const contentDiv = document.getElementById("art-details-content");

    if (!detailsDiv || !contentDiv) {
        console.error("❌ Missing art details container in DOM");
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

        contentDiv.innerHTML = `
            <button id="back-btn">← Back</button>
            <h2>${art.art_name}</h2>
            <img src="images/${art.art_name}.jpg" alt="${art.art_name}" />
            <p><strong>Artist:</strong> ${art.artist_name}</p>
            <p><strong>Year:</strong> ${art.year}</p>
            <p><strong>Description:</strong> ${art.description}</p>
        `;

        document.getElementById("back-btn").addEventListener("click", () => {
            window.history.back();
        });

    } catch (err) {
        console.error(err);
        contentDiv.textContent = "Error loading art details.";
    }
}
