<x-layouts.layout seoTitle="Products" seoDescription="Premium quality labels and packaging solutions designed for your diverse business needs" layoutView="main-inner">

@section('content')
@php
    $heroImage = $productsBanner?->mainImage?->url ?? $productsBanner?->mainImage?->getUrl() ?? 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?q=80&w=870&auto=format&fit=crop';
    $heroTitle = $productsBanner?->title ?: 'Our Product Range';
    $heroBrief = $productsBanner?->brief ?: 'Premium quality labels and packaging solutions designed for your diverse business needs';
    $introTitle = $productsBanner?->second_title ?: 'Explore Our Solutions';
    $introText = $productsBanner?->content ?: 'From self-adhesive labels to innovative shrink sleeves and in-mold labels, we deliver reliable, high-quality solutions for every application. Each product is designed with precision and quality at every step.';
    $whyChooseImage = $productsWhyChoose?->mainImage?->url ?? $productsWhyChoose?->mainImage?->getUrl() ?? asset('frontend-static/Assets/banner.jpg');
    $processImage = $productsProcess?->mainImage?->url ?? $productsProcess?->mainImage?->getUrl() ?? 'https://plus.unsplash.com/premium_photo-1661382011487-cd3d6b1d9dff?q=80&w=871&auto=format&fit=crop';
@endphp

<section class="products-hero">
    <img src="{{ $heroImage }}" alt="Products" class="hero-image">
    <div class="hero-overlay"></div>
    <div class="container hero-content">
        <div class="breadcrumb"><a href="{{ route('home', ['locale' => $lng]) }}">Home</a> <span>/</span> <span>Products</span></div>
        <h1>{{ $heroTitle }}</h1>
        <p>{{ $heroBrief }}</p>
    </div>
</section>

<section class="section products-section">
    <div class="container">
        <div class="section-intro" data-scroll="fade-up">
            <h2>{{ $introTitle }}</h2>
            <p>{{ $introText }}</p>
        </div>

        <div class="filter-controls">
            <button class="filter-btn active" data-filter="all">All Products</button>
            @foreach($productCategories as $category)
                <button class="filter-btn" data-filter="{{ $category->slug }}">{{ $category->title }}</button>
            @endforeach
        </div>

        <div class="products-grid" id="productsGrid">
            @foreach($allProducts as $product)
                <div class="product-card" data-category="{{ $product->category?->slug ?? 'all' }}" data-scroll="fade-up">
                    <div class="product-card-image">
                        <img src="{{ $product->mainImage?->url ?? $product->mainImage?->getUrl() ?? asset('frontend-static/Assets/banner.jpg') }}" alt="{{ $product->title }}">
                    </div>
                    <div class="product-card-content">
                        <h3>{{ $product->title }}</h3>
                        <a href="{{ route('products-view', ['locale' => $lng, 'slug' => $product->slug]) }}" class="learn-more">View Details <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>

<section class="section content-section" data-scroll="fade-up" data-scroll-delay="200">
    <div class="container">
        <div class="content-text-full">
            <h2>{{ $productsWhyChoose?->title ?: 'Why Choose Our Labels?' }}</h2>

            @if(!empty($productsWhyChoose?->brief))
                <p>{{ $productsWhyChoose->brief }}</p>
            @endif

            @if(!empty($productsWhyChoose?->content))
                {!! $productsWhyChoose->content !!}
            @endif
        </div>
    </div>
</section>

<section class="section content-image-section" data-scroll="fade-up" data-scroll-delay="400">
    <div class="content-image-full">
        <img src="{{ $whyChooseImage }}" alt="Why Choose Us">
    </div>
</section>

<section class="section content-section" data-scroll="fade-up" data-scroll-delay="200">
    <div class="container">
        <div class="content-text-full">
            <h2>{{ $productsProcess?->title ?: 'Our Process' }}</h2>

            @if(!empty($productsProcess?->brief))
                <p>{{ $productsProcess->brief }}</p>
            @endif

            @if(!empty($productsProcess?->content))
                {!! $productsProcess->content !!}
            @endif
        </div>
    </div>
</section>

<section class="section content-image-section" data-scroll="fade-up" data-scroll-delay="400">
    <div class="content-image-full">
        <img src="{{ $processImage }}" alt="Our Process">
    </div>
</section>

<section class="section ask-quote-section" data-scroll="fade-up" data-scroll-delay="300">
    <div style="padding: 0 60px;">
        <h2 style="text-align: center; margin-bottom: 50px;">Ask a Quote</h2>
        <livewire:ask-quote-form />
    </div>
</section>

<section class="section cta-section">
    <div class="container">
        <h2>Ready to get started?</h2>
        <a href="{{ route('contact-us', ['locale' => $lng]) }}" class="btn btn-primary">Contact Us</a>
    </div>
</section>
@endsection

@push('js')
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const buttons = document.querySelectorAll('.filter-btn');
        const cards = document.querySelectorAll('.product-card');

        buttons.forEach((button) => {
            button.addEventListener('click', function () {
                const filter = this.dataset.filter;

                buttons.forEach((item) => item.classList.remove('active'));
                this.classList.add('active');

                cards.forEach((card) => {
                    const category = card.dataset.category;
                    card.style.display = filter === 'all' || filter === category ? '' : 'none';
                });
            });
        });
    });
</script>
@endpush

</x-layouts.layout>
