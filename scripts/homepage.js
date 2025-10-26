loadTimeline();
async function loadTimeline() {
  const timelineDiv = document.getElementById("timeline");
  timelineDiv.innerHTML = "<p>Loading timeline...</p>";

  try {
    const res = await fetch("../api/homepage.php");
    if (!res.ok) throw new Error("Failed to load timeline data");

    const data = await res.json();
    renderTimeline(data);
  } catch (err) {
    console.error(err);
    timelineDiv.innerHTML = "<p>Error loading timeline.</p>";
  }
}

function renderTimeline(groups) {
  const timelineDiv = document.getElementById("timeline");
  timelineDiv.innerHTML = "";

  for (const group of groups) {
    const section = document.createElement("section");
    section.classList.add("timeline-century");

    section.innerHTML = `
      <h2>${group.century}</h2>
      <div class="timeline-grid">
        ${group.artworks.map(art => `
          <div class="art-card">
            <img src="${art.art_image}" alt="${art.art_name}">
            <p><strong>${art.art_name}</strong></p>
            <p>${art.artist_name} (${art.year})</p>
            <a href="/view-art?${art.art_name}" data-link>
              <button view-btn data-name=${art.art_name}>View</button>
            </a>
          </div>
        `).join('')}
      </div>
    `;

    timelineDiv.appendChild(section);
  }
}
