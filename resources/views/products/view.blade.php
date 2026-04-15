<x-layouts.layout seoTitle="{{ $targetItem->title }}" seoDescription="{{ $targetItem->brief }}" seoImage="{{ $targetItem->mainImage?->url ?? $targetItem->mainImage?->getUrl() }}" layoutView="main-inner">

@section('content')
@php
    $heroImage = $targetItem->mainImage?->url ?? $targetItem->mainImage?->getUrl() ?? asset('frontend-static/Assets/banner.jpg');
    $galleryItems = !empty($galleryItems) ? $galleryItems : [['url' => $heroImage, 'alt' => $targetItem->title]];

    $renderParagraphs = function (?string $text) {
        if (empty($text)) {
            return '';
        }

        return collect(preg_split('/\n{2,}/', trim($text)))
            ->map(fn ($paragraph) => '<p>' . nl2br(e(trim($paragraph))) . '</p>')
            ->implode('');
    };
@endphp

<section class="product-hero" style="background-image: url('{{ $heroImage }}');">
    <div class="container">
        <div class="breadcrumb"><a href="{{ route('home', ['locale' => $lng]) }}">Home</a> <span>/</span> <a href="{{ route('products-index', ['locale' => $lng]) }}">Products</a> <span>/</span> <span>{{ $targetItem->title }}</span></div>
        <h1>{{ $targetItem->hero_title ?: $targetItem->title }}</h1>
        <p>{{ $targetItem->brief }}</p>
    </div>
</section>

<section class="section product-tabs-section">
    <div class="container">
        <div class="product-tabs-wrapper">
            <div class="product-tabs">
                <a href="#gallery-tab" class="tab-link active">Gallery</a>
                <a href="#description-tab" class="tab-link">Description</a>
                <a href="#clients-tab" class="tab-link">Clients</a>
            </div>
        </div>
    </div>
</section>

<section class="section product-gallery-section" id="gallery-tab">
    <div class="container">
        <div class="gallery-slider">
            <button class="slider-arrow slider-arrow-left" id="galleryPrev">
                <i class="fas fa-chevron-left"></i>
            </button>

            <div class="slider-container">
                <div class="gallery-items" id="galleryItems">
                    @foreach($galleryItems as $item)
                        <div class="gallery-item">
                            <img src="{{ $item['url'] }}" alt="{{ $item['alt'] }}">
                        </div>
                    @endforeach
                </div>
            </div>

            <button class="slider-arrow slider-arrow-right" id="galleryNext">
                <i class="fas fa-chevron-right"></i>
            </button>
        </div>

        <div class="slider-dots" id="galleryDots"></div>
    </div>
</section>

<section class="section product-description-section" id="description-tab">
    <div class="container">
        @foreach($descriptionSections as $section)
            @if(($section['type'] ?? null) === 'split')
                <div class="description-row {{ ($section['image_position'] ?? 'right') === 'left' ? 'description-row-2' : 'description-row-1' }}" data-scroll="fade-up">
                    @if(($section['image_position'] ?? 'right') === 'left')
                        <div class="description-image">
                            <img src="{{ $section['resolved_image_url'] ?? $heroImage }}" alt="{{ $section['heading'] ?? $targetItem->title }}">
                        </div>
                    @endif

                    <div class="description-text">
                        <h2>{{ $section['heading'] ?? '' }}</h2>
                        {!! $renderParagraphs($section['content'] ?? null) !!}
                    </div>

                    @if(($section['image_position'] ?? 'right') !== 'left')
                        <div class="description-image">
                            <img src="{{ $section['resolved_image_url'] ?? $heroImage }}" alt="{{ $section['heading'] ?? $targetItem->title }}">
                        </div>
                    @endif
                </div>
            @elseif(($section['type'] ?? null) === 'full')
                <div class="description-section-full" data-scroll="fade-up" data-scroll-delay="200">
                    <h3>{{ $section['heading'] ?? '' }}</h3>
                    {!! $renderParagraphs($section['content'] ?? null) !!}
                    <div class="full-image-container">
                        <img src="{{ $section['resolved_image_url'] ?? $heroImage }}" alt="{{ $section['heading'] ?? $targetItem->title }}">
                    </div>
                </div>
            @elseif(($section['type'] ?? null) === 'grid')
                <div class="description-section-full" data-scroll="fade-up" data-scroll-delay="400">
                    <div class="grid-text">
                        <h4>{{ $section['heading'] ?? '' }}</h4>
                        {!! $renderParagraphs($section['content'] ?? null) !!}
                    </div>
                    <div class="feature-images-grid">
                        @foreach(['resolved_image_1_url', 'resolved_image_2_url', 'resolved_image_3_url'] as $imageKey)
                            @if(!empty($section[$imageKey]))
                                <img src="{{ $section[$imageKey] }}" alt="{{ $section['heading'] ?? $targetItem->title }}">
                            @endif
                        @endforeach
                    </div>
                </div>
            @endif
        @endforeach
    </div>
</section>

<section class="clients section" id="clients-tab" data-scroll="fade-up" data-scroll-delay="300">
    <div class="container">
        <div class="section-header" data-scroll="fade-up">
            <span class="section-tag">Trusted By</span>
            <h2>Some of Our Clients</h2>
            <p>We're proud to work with businesses across food, beverage, pharmaceutical, cosmetics, and industrial sectors.</p>
        </div>
        <div class="clients-marquee">
            <div class="clients-track">
                @foreach(array_merge($clientLogos, $clientLogos) as $logo)
                    <div class="client-logo">
                        <i class="{{ $logo['icon'] ?? 'fas fa-building' }}"></i>
                        <span>{{ $logo['label'] }}</span>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<section class="section ask-quote-section" data-scroll="fade-up" data-scroll-delay="300">
    <div style="padding: 0 60px;">
        <h2 style="text-align: center; margin-bottom: 50px;">Ask a Quote</h2>
        <livewire:ask-quote-form />
    </div>
</section>
@endsection

@push('js')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const tabLinks = document.querySelectorAll('.tab-link');

        tabLinks.forEach((link) => {
            link.addEventListener('click', (event) => {
                event.preventDefault();
                const targetId = link.getAttribute('href');
                const targetSection = document.querySelector(targetId);

                if (!targetSection) {
                    return;
                }

                targetSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
                tabLinks.forEach((item) => item.classList.remove('active'));
                link.classList.add('active');
            });
        });

        window.addEventListener('scroll', () => {
            const sections = document.querySelectorAll('.product-gallery-section, .product-description-section, .clients');
            let current = '';

            sections.forEach((section) => {
                const sectionTop = section.offsetTop;
                if (window.pageYOffset >= sectionTop - 200) {
                    current = section.getAttribute('id');
                }
            });

            tabLinks.forEach((link) => {
                link.classList.toggle('active', link.getAttribute('href') === '#' + current);
            });
        });

        const galleryItems = document.getElementById('galleryItems');
        const galleryPrev = document.getElementById('galleryPrev');
        const galleryNext = document.getElementById('galleryNext');
        const dotsContainer = document.getElementById('galleryDots');
        let galleryIndex = 0;

        if (!galleryItems) {
            return;
        }

        function updateGalleryDots() {
            const dots = document.querySelectorAll('#galleryDots .dot');
            dots.forEach((dot, index) => {
                dot.classList.toggle('active', index === galleryIndex);
            });
        }

        function updateGallerySlider() {
            const firstItem = galleryItems.querySelector('.gallery-item');
            if (!firstItem) {
                return;
            }

            const itemWidth = firstItem.offsetWidth + 20;
            galleryItems.style.transform = `translateX(-${galleryIndex * itemWidth}px)`;
            updateGalleryDots();
        }

        function createDots() {
            const count = galleryItems.children.length;
            for (let index = 0; index < count; index++) {
                const dot = document.createElement('button');
                dot.className = 'dot' + (index === 0 ? ' active' : '');
                dot.addEventListener('click', () => {
                    galleryIndex = index;
                    updateGallerySlider();
                });
                dotsContainer.appendChild(dot);
            }
        }

        if (galleryPrev) {
            galleryPrev.addEventListener('click', () => {
                galleryIndex = galleryIndex > 0 ? galleryIndex - 1 : galleryItems.children.length - 1;
                updateGallerySlider();
            });
        }

        if (galleryNext) {
            galleryNext.addEventListener('click', () => {
                galleryIndex = galleryIndex < galleryItems.children.length - 1 ? galleryIndex + 1 : 0;
                updateGallerySlider();
            });
        }

        if (dotsContainer) {
            createDots();
        }
    });
</script>
@endpush

</x-layouts.layout>
