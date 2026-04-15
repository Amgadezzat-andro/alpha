<nav class="navbar" id="navbar">
    <div class="nav-container">
        <a href="{{ url('/') }}" class="nav-logo" aria-label="{{ setting("{$lng}.general.title") }}">
            <img src="{{ asset('frontend-static/Assets/logo33.png') }}" alt="Alpha Pack Logo">
        </a>

        <button class="nav-toggle" id="navToggle" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <ul class="nav-menu" id="navMenu">
            <x-common.header-menu />
        </ul>
    </div>
</nav>
