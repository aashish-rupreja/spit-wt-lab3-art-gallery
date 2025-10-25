const form = document.getElementById("signup-form");
const signUpHandler = "/api/auth/sign-up.php";

form.addEventListener("submit", async (e) => {
    e.preventDefault();

    const formData = new FormData(form);

    const data = Object.fromEntries(formData.entries());

    try {
        const res = await fetch(signUpHandler, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(data)
        });

        const result = await res.json();
        if (result.success) {
            alert("Registration successful!");
        } else {
            alert("Error: " + result.error);
        }
    } catch (err) {
        console.error(err);
        alert("Network error");
    }
});
