<x-layouts.layout seoTitle="Blog" layoutView="main-inner">

@section('content')
@php
    $heroImage = $blogBanner?->mainImage?->url ?? 'https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?w=1920&q=80';
@endphp

<section class="page-hero" style="background-image: url('{{ $heroImage }}');">
    <div class="container">
        <div class="breadcrumb"><a href="{{ route('home', ['locale' => $lng]) }}">Home</a> <span>/</span> <span>Blog</span></div>
        <h1>{{ $blogBanner?->title ?? 'Our Blog' }}</h1>
        <p>{{ $blogBanner?->brief ?? 'Insights, tips, and industry knowledge from the world of labels and packaging.' }}</p>
    </div>
</section>

@forelse($allBlogs as $blog)
    @php
        $isDark = $loop->even;
        $bulletSource = strip_tags((string) ($blog->brief ?: $blog->content));
        $bulletItems = collect(preg_split('/[\r\n]+|\.(?!\d)/', $bulletSource))
            ->map(fn ($item) => trim($item))
            ->filter()
            ->take(5);
        $imageUrl = $blog->mainImage?->url ?? 'https://images.unsplash.com/photo-1586953208448-b95a79798f07?w=1200&q=80';
    @endphp

    <section class="section {{ $isDark ? 'section-dark' : '' }}" id="{{ $blog->slug }}">
        <div class="container">
            <div class="product-intro-grid" @if($isDark) style="direction: rtl;" @endif>
                <div class="product-intro-text" @if($isDark) style="direction: ltr;" @endif>
                    <span class="section-tag">Blog Article</span>
                    <h2>{{ $blog->title }}</h2>

                    @if($bulletItems->isNotEmpty())
                        <ul class="feature-list">
                            @foreach($bulletItems as $bullet)
                                <li>{{ \Illuminate\Support\Str::limit($bullet, 140) }}</li>
                            @endforeach
                        </ul>
                    @else
                        <p>{{ \Illuminate\Support\Str::limit(strip_tags((string) $blog->content), 260) }}</p>
                    @endif

                    <a href="{{ route('blog-view', ['locale' => $lng, 'slug' => $blog->slug]) }}" class="btn btn-primary" style="margin-top:20px;">Read Article</a>
                </div>

                <div class="product-intro-image" @if($isDark) style="direction: ltr;" @endif>
                    <img src="{{ $imageUrl }}" alt="{{ $blog->title }}">
                </div>
            </div>
        </div>
    </section>
@empty
    <section class="section">
        <div class="container">
            <p style="text-align:center; color: var(--text-light);">No blog posts available yet.</p>
        </div>
    </section>
@endforelse

<section class="cta-section">
    <div class="container">
        <div class="cta-content">
            <h2>Need Labels for Your Product?</h2>
            <p>Tell us about your application and we will recommend materials, finishes, and formats.</p>
            <a href="{{ route('contact-us', ['locale' => $lng]) }}" class="btn btn-primary btn-lg">Contact Us</a>
        </div>
    </div>
</section>

@endsection
</x-layouts.layout>
