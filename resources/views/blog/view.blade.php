<x-layouts.layout seoTitle="{{ $targetItem->title }}" seoDescription="{{ $targetItem->brief }}"
    seoImage="{{ $targetItem->mainImage?->url }}">
    @section('content')

        <article class="section blog-detail-article" id="{{ $targetItem->slug }}">
            <div class="container blog-detail-inner">
                <div class="breadcrumb"><a href="{{ route('home', ['locale' => $lng]) }}">Home</a> <span>/</span> <a href="{{ route('blog-index', ['locale' => $lng]) }}">Blog</a> <span>/</span> <span>{{ $targetItem->category?->title ?? 'Details' }}</span></div>
                <h1>{{ $targetItem->title }}</h1>

                <p class="blog-detail-meta">
                    <i class="far fa-clock"></i>
                    {{ $targetItem->reading_time ? $targetItem->reading_time . ' min read' : 'About 4 min read' }}
                    <span> · </span>
                    {{ $targetItem->published_at?->format('F d, Y') ?? 'N/A' }}
                </p>

                @if ($targetItem->mainImage?->url)
                    <img class="blog-detail-hero" src="{{ $targetItem->mainImage->url }}" alt="{{ $targetItem->title }}">
                @endif

                <div class="blog-detail-content">
                    @if ($targetItem->brief)
                        <p>{{ $targetItem->brief }}</p>
                    @endif

                    {!! $targetItem->content !!}
                </div>
                <div class="blog-detail-actions">
                    <a href="{{ route('contact-us', ['locale' => $lng]) }}" class="btn btn-primary">Get a Quote</a>
                    <a href="{{ route('blog-index', ['locale' => $lng]) }}" class="btn btn-outline">Back to Blog</a>
                </div>
            </div>
        </article>

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
