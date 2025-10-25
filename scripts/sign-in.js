import { updateState } from "./spa-engine/state.js";
import { navigateTo } from "./spa-engine/router.js";

const signInHandler = "/api/auth/sign-in.php";
const form = document.getElementById("login-form");
console.log("sign in loaded");

form.addEventListener("submit", async (e) => {
    e.preventDefault();
    
    const formData = new FormData(form);
    const data = Object.fromEntries(formData.entries());
    console.log(data);

    if (!email || !password) {
        
        return;
    }

    try {
        const response = await fetch(signInHandler, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(data)
        });

        const res = await response.json();

        if (response.ok && res.success) {
            updateState({ user: res.user });
            navigateTo("/");
        } else {
            
        }
    } catch (err) {
        console.error("Sign-in failed:", err);
        
    }
});

