loadEvents();
async function loadEvents() {
    const eventsContainer = document.getElementById("events-container");
    eventsContainer.innerHTML = "<p>Loading events...</p>";

    try {
        const res = await fetch("../api/events.php");
        if (!res.ok) throw new Error("Failed to load event data");

        const result = await res.json();
        renderEvents(result);
    } catch (err) {
        console.error(err);
        eventsContainer.innerHTML = "<p>Error loading events. Please try again later.</p>";
    }
}

function renderEvents(result) {
    const eventsContainer = document.getElementById("events-container");
    eventsContainer.innerHTML = "";

    if (result.status === "success" && result.data.length > 0) {
        eventsContainer.innerHTML = result.data.map(event => `
            <div class="event-card">
                <img src="${event.event_thumbnail_url}" alt="${event.event_name}" class="event-thumbnail">
                <div class="event-info">
                    <h3>${event.event_name}</h3>
                    <p><strong>Type:</strong> ${event.event_type}</p>
                    <p><strong>Venue:</strong> ${event.venue}</p>
                    <p><strong>Date & Time:</strong> ${new Date(event.event_datetime).toLocaleString()}</p>
                    <p>${event.event_description}</p>
                    <button class="register-btn">Register</button>
                </div>
            </div>
        `).join("");
    } else {
        eventsContainer.innerHTML = "<p>No upcoming events found.</p>";
    }
}
