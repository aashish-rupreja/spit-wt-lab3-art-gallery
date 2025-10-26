loadExploreArt();
async function loadExploreArt() {
    try {
        // Fetch categories
        document.querySelector('main').style.maxWidth = '1200px';
        const resCats = await fetch("../api/categories.php");
        if (!resCats.ok) throw new Error("Failed to fetch categories");
        const categories = await resCats.json();

        document.getElementById("explore-art-container").innerHTML = "";

        for (const cat of categories) {
            const section = document.createElement("section");
            section.classList.add("category-section");

            const h2 = document.createElement("h2");
            h2.textContent = cat.name;
            section.appendChild(h2);

            const artGrid = document.createElement("div");
            artGrid.classList.add("art-grid");

            // Fetch 3 arts per category
            const resArts = await fetch(`../api/art.php?category=${cat.name}&limit=3`);
            if (!resArts.ok) throw new Error("Failed to fetch arts");
            const arts = await resArts.json();

            for (const art of arts) {
                const card = document.createElement("div");
                card.classList.add("art-card");

                card.innerHTML = `
                    <img src="${art.art_image}" alt="${art.art_name}" />
                    <div class="art-details">
                        <p><strong>Name:</strong> ${art.art_name}</p>
                        <p><strong>Made by:</strong> ${art.artist_name}</p>
                        <p><strong>Year:</strong> ${art.year}</p>
                    </div>
                `;
                const btn = document.createElement('button');
                btn.classList.add('view-btn');
                btn.setAttribute('data-name', art.art_name)
                btn.textContent = 'View';

                const a = document.createElement('a');
                a.href = `/view-art?${art.art_name}`;
                a.setAttribute('data-link', '');
                a.appendChild(btn);
                card.appendChild(a);

                artGrid.appendChild(card);
            }

            section.appendChild(artGrid);
            document.getElementById("explore-art-container").appendChild(section);
        }

    } catch (err) {
        console.error(err);
        document.getElementById("explore-art-container").innerHTML = "<p>Failed to load art collections.</p>";
    }
}