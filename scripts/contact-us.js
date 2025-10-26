const form = document.querySelector(".contact-form");

form.addEventListener("submit", async (e) => {
    e.preventDefault();

    const formData = new FormData(form);
    const data = Object.fromEntries(formData.entries());

    // Optional: simple validation
    if (!data.name || !data.email || !data.query) {
        alert("Please fill in all required fields.");
        return;
    }

    try {
        const res = await fetch("../api/contact_submit.php", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(data),
        });

        const result = await res.json();

        if (result.status === "success") {
            alert("Message sent successfully! Thank you for reaching out.");
            form.reset();
        } else {
            alert("Error: " + result.message);
        }
    } catch (err) {
        console.error(err);
        alert("Failed to send message. Please try again later.");
    }
});