loadArt();
async function loadArt() {
    try {
        const res = await fetch(`api/art.php?category=${ window.location.search.slice(1).replaceAll("%20", " ")}`);
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
            btn.classList.add('view-btn');
            btn.setAttribute('data-name', art.art_name)
            btn.textContent = 'View';

            const a = document.createElement('a');
            a.href = `/view-art?${art.art_name}`;
            a.setAttribute('data-link', '');
            a.appendChild(btn);

            const img = document.createElement('img');
            img.src = art.art_image;
            img.alt = art.art_name;

            card.appendChild(img);
            card.appendChild(details);
            card.appendChild(a);

            container.appendChild(card);
        });

    } catch (err) {
        const container = document.getElementById('art-container');
        container.textContent = 'Error loading art';
        console.error(err);
    }
}
