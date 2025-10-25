const categoryName = window.location.search.slice(1);
loadArt(categoryName);
async function loadArt(categoryName) {
    try {
        const res = await fetch(`api/art.php?category=${categoryName}`);
        if (!res.ok) throw new Error('Failed to fetch art');

        const artPieces = await res.json();
        const container = document.getElementById('art-container');
        container.innerHTML = '';

        if (artPieces.length === 0) {
            container.textContent = 'No art pieces found in this category.';
            return;
        }

        artPieces.forEach(art => {
            const card = document.createElement('div');
            card.className = 'art-card';

            const details = document.createElement('div');
            details.className = 'art-details';
            details.innerHTML = `
                <p><strong>Name:</strong> ${art.art_name}</p>
                <p><strong>Made by:</strong> ${art.artist_name}</p>
                <p><strong>Year:</strong> ${art.year}</p>
            `;

            const btn = document.createElement('button');
            btn.textContent = 'View';

            card.appendChild(details);
            card.appendChild(btn);

            container.appendChild(card);
        });

    } catch (err) {
        const container = document.getElementById('art-container');
        container.textContent = 'Error loading art';
        console.error(err);
    }
}
