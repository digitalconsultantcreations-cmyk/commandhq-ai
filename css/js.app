// ======================================
// CommandHQ AI
// app.js
// ======================================

// Current Year (Footer)
const footer = document.querySelector("footer p");

if (footer) {
    footer.innerHTML = `© ${new Date().getFullYear()} CommandHQ AI. All Rights Reserved.`;
}

// Smooth Scroll for Navigation Links
document.querySelectorAll('a[href^="#"]').forEach(link => {

    link.addEventListener("click", function (e) {

        const target = document.querySelector(this.getAttribute("href"));

        if (target) {

            e.preventDefault();

            target.scrollIntoView({
                behavior: "smooth"
            });

        }

    });

});

// Header Scroll Effect
const header = document.querySelector("header");

window.addEventListener("scroll", () => {

    if (window.scrollY > 50) {

        header.style.background = "rgba(7,12,22,.96)";
        header.style.boxShadow = "0 10px 30px rgba(0,0,0,.45)";

    } else {

        header.style.background = "rgba(11,17,32,.90)";
        header.style.boxShadow = "none";

    }

});

// Fade-in Animation
const cards = document.querySelectorAll(".card, .price-card, .dashboard-card");

const observer = new IntersectionObserver((entries) => {

    entries.forEach(entry => {

        if (entry.isIntersecting) {

            entry.target.style.opacity = "1";
            entry.target.style.transform = "translateY(0px)";

        }

    });

}, {
    threshold: 0.2
});

cards.forEach(card => {

    card.style.opacity = "0";
    card.style.transform = "translateY(40px)";
    card.style.transition = "all .7s ease";

    observer.observe(card);

});

// Hero Buttons
const primaryBtn = document.querySelector(".primary-btn");
const secondaryBtn = document.querySelector(".secondary-btn");

if (primaryBtn) {

    primaryBtn.addEventListener("click", (e) => {

        e.preventDefault();

        alert("🚀 Free Trial will be available in the next version of CommandHQ AI.");

    });

}

if (secondaryBtn) {

    secondaryBtn.addEventListener("click", (e) => {

        e.preventDefault();

        alert("🎬 Interactive Demo coming soon!");

    });

}

// Card Hover Effect
document.querySelectorAll(".card").forEach(card => {

    card.addEventListener("mouseenter", () => {

        card.style.transform = "translateY(-10px) scale(1.02)";

   
