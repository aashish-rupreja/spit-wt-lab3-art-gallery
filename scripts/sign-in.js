import { updateState } from "./spa-engine/state.js";
import { navigateTo } from "./spa-engine/router.js";    

document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("sign-in-form");
    const errorMsg = document.getElementById("error-msg");

    form.addEventListener("submit", async (e) => {
        e.preventDefault();
        errorMsg.textContent = ""; 

        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value;

        if (!email || !password) {
            errorMsg.textContent = "Please fill in both fields.";
            return;
        }

        try {
            const response = await fetch("/api/sign-in.php", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({ email, password }),
            });

            const data = await response.json();

            if (response.ok && data.success) {
                updateState({ user: data.user });
                navigateTo("/"); 
            } else {
                errorMsg.textContent = data.message || "Invalid email or password.";
            }
        } catch (err) {
            console.error("Sign-in failed:", err);
            errorMsg.textContent = "An error occurred. Please try again.";
        }
    });
});
