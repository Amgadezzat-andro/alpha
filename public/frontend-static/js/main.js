/* ============================================
   ALPHA PACK - Main JavaScript
   ============================================ */

document.addEventListener('DOMContentLoaded', function () {

    // ---- Navbar Scroll Effect ----
    const navbar = document.getElementById('navbar');
    function handleNavbarScroll() {
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
    }
    window.addEventListener('scroll', handleNavbarScroll);
    handleNavbarScroll();

    // ---- Mobile Nav Toggle ----
    const navToggle = document.getElementById('navToggle');
    const navMenu = document.getElementById('navMenu');

    if (navToggle && navMenu) {
        navToggle.addEventListener('click', function () {
            navMenu.classList.toggle('active');
            navToggle.classList.toggle('active');
        });

        // Sidebar dropdown toggle on mobile
        var dropdowns = navMenu.querySelectorAll('.dropdown');
        dropdowns.forEach(function (dropdown) {
            var parentLink = dropdown.querySelector(':scope > a');
            if (parentLink) {
                parentLink.addEventListener('click', function (e) {
                    if (window.innerWidth <= 768) {
                        e.preventDefault();
                        dropdown.classList.toggle('open');
                    }
                });
            }
        });

        // Close menu when clicking a sub-link (not the parent toggle)
        navMenu.querySelectorAll('.dropdown-menu a').forEach(function (link) {
            link.addEventListener('click', function () {
                navMenu.classList.remove('active');
                navToggle.classList.remove('active');
            });
        });

        // Close menu on non-dropdown link click
        navMenu.querySelectorAll(':scope > li > a').forEach(function (link) {
            if (!link.parentElement.classList.contains('dropdown')) {
                link.addEventListener('click', function () {
                    navMenu.classList.remove('active');
                    navToggle.classList.remove('active');
                });
            }
        });
    }

    // ---- Stat Counter Animation ----
    const statNumbers = document.querySelectorAll('.stat-number[data-target]');
    let statsAnimated = false;

    function animateStats() {
        if (statsAnimated) return;
        const statsBar = document.querySelector('.stats-bar');
        if (!statsBar) return;

        const rect = statsBar.getBoundingClientRect();
        if (rect.top < window.innerHeight && rect.bottom > 0) {
            statsAnimated = true;
            statNumbers.forEach(function (el) {
                const target = parseInt(el.getAttribute('data-target'), 10);
                const duration = 2000;
                const step = target / (duration / 16);
                let current = 0;

                function updateCounter() {
                    current += step;
                    if (current >= target) {
                        el.textContent = target;
                    } else {
                        el.textContent = Math.floor(current);
                        requestAnimationFrame(updateCounter);
                    }
                }
                requestAnimationFrame(updateCounter);
            });
        }
    }

    window.addEventListener('scroll', animateStats);
    animateStats();

    // ---- Fade In on Scroll ----
    const fadeElements = document.querySelectorAll('.fade-in');

    function handleFadeIn() {
        fadeElements.forEach(function (el) {
            const rect = el.getBoundingClientRect();
            if (rect.top < window.innerHeight - 60) {
                el.classList.add('visible');
            }
        });
    }

    window.addEventListener('scroll', handleFadeIn);
    handleFadeIn();

    // ---- data-scroll Scroll Animations ----
    var scrollEls = document.querySelectorAll('[data-scroll]');
    function handleScrollAnims() {
        scrollEls.forEach(function (el) {
            var rect = el.getBoundingClientRect();
            var delay = parseInt(el.getAttribute('data-scroll-delay') || '0', 10);
            if (rect.top < window.innerHeight - 50) {
                setTimeout(function () {
                    el.classList.add('visible');
                }, delay);
            }
        });
    }
    window.addEventListener('scroll', handleScrollAnims);
    handleScrollAnims();

    // ---- Product Filter ----
    var filterBtns = document.querySelectorAll('.filter-btn');
    if (filterBtns.length) {
        // Select both service-card and product-card elements with data-category
        var allCards = document.querySelectorAll('.service-card[data-category], .product-card[data-category]');
        
        filterBtns.forEach(function (btn) {
            btn.addEventListener('click', function () {
                filterBtns.forEach(function (b) { b.classList.remove('active'); });
                btn.classList.add('active');
                var filter = btn.getAttribute('data-filter');
                
                allCards.forEach(function (card) {
                    if (filter === 'all' || card.getAttribute('data-category') === filter) {
                        card.classList.remove('filter-hidden');
                    } else {
                        card.classList.add('filter-hidden');
                    }
                });
            });
        });
    }

    // ---- Service Card Stagger Animation ----
    const animCards = document.querySelectorAll('[data-aos]');
    function handleCardAnimations() {
        animCards.forEach(function (card) {
            const rect = card.getBoundingClientRect();
            if (rect.top < window.innerHeight - 40) {
                const delay = parseInt(card.getAttribute('data-aos-delay') || '0', 10);
                setTimeout(function () {
                    card.style.opacity = '1';
                    card.style.transform = 'translateY(0)';
                }, delay);
            }
        });
    }

    // Set initial state for animated cards
    animCards.forEach(function (card) {
        card.style.opacity = '0';
        card.style.transform = 'translateY(30px)';
        card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    });

    window.addEventListener('scroll', handleCardAnimations);
    handleCardAnimations();

    // ---- Smooth scroll for anchor links ----
    document.querySelectorAll('a[href^="#"]').forEach(function (anchor) {
        anchor.addEventListener('click', function (e) {
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            const target = document.querySelector(targetId);
            if (target) {
                e.preventDefault();
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });

    // ---- Video fallback: show poster if video fails ----
    const heroVideo = document.getElementById('heroVideo');
    if (heroVideo) {
        heroVideo.addEventListener('error', function () {
            heroVideo.style.display = 'none';
            var container = heroVideo.parentElement;
            var img = document.createElement('img');
            img.src = heroVideo.poster;
            img.alt = 'Alpha Pack';
            img.style.width = '100%';
            img.style.height = '100%';
            img.style.objectFit = 'cover';
            container.appendChild(img);
        });

        // Also check after a delay in case source doesn't load
        setTimeout(function () {
            if (heroVideo.readyState === 0 || heroVideo.networkState === 3) {
                heroVideo.style.display = 'none';
                var container = heroVideo.parentElement;
                if (!container.querySelector('img')) {
                    var img = document.createElement('img');
                    img.src = heroVideo.poster;
                    img.alt = 'Alpha Pack';
                    img.style.width = '100%';
                    img.style.height = '100%';
                    img.style.objectFit = 'cover';
                    container.appendChild(img);
                }
            }
        }, 2000);
    }
});
