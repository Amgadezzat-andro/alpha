<x-layouts.layout seoTitle="{{ __('Home') }}" layoutView="main-inner">

    @section('content')
        <!-- Header Section -->
        @if ($header)
            <section class="hero" id="hero">
                <div class="hero-video-container">
                    <video autoplay muted loop playsinline id="heroVideo"
                        poster="{{ asset('frontend-static/Assets/banner.jpg') }}">
                        <source src="{{ asset('storage/' . ltrim($header->mainImage->path, '/')) }}" type="video/mp4">
                    </video>
                </div>
                <div class="hero-content">
                    <img src="{{ asset('frontend-static/Assets/logo33.png') }}" alt="Alpha Pack" class="hero-logo">
                    <h1>{{ $header->title }}</h1>
                    <p>{{ $header->brief }}</p>
                    <div class="hero-buttons">
                        <a href="{{ route('products-index', $lng) }}"
                            class="btn btn-primary">{{ __('Explore Products') }}</a>
                        <a href="{{ route('contact-us', $lng) }}" class="btn btn-outline">{{ __('Get a Quote') }}</a>
                    </div>
                </div>
                <a href="#what-we-do" class="scroll-indicator">
                    <i class="fas fa-chevron-down"></i>
                </a>
            </section>
        @endif

        <!-- Stats Section -->
        @if ($stats)
            <section class="stats-bar" id="stats-section">
                <div class="container">
                    <div class="stats-grid">
                        @forelse($stats->json_items ?? [] as $item)
                            <div class="stat-item">
                                <span class="stat-number" data-target="{{ $item['number'] ?? 0 }}">0</span>
                                @if ($item['suffix'] ?? null)
                                    <span class="stat-suffix">{{ $item['suffix'] }}</span>
                                @endif
                                <span class="stat-label">{{ $item['label_en'] ?? '' }}</span>
                            </div>
                        @empty
                            <div class="stat-item">
                                <span class="stat-number" data-target="20">0</span><span class="stat-suffix">+</span>
                                <span class="stat-label">{{ __('Years in Business') }}</span>
                            </div>
                            <div class="stat-item">
                                <span class="stat-number" data-target="500">0</span><span class="stat-suffix">+</span>
                                <span class="stat-label">{{ __('Clients Served') }}</span>
                            </div>
                            <div class="stat-item">
                                <span class="stat-number" data-target="50">0</span><span class="stat-suffix">M+</span>
                                <span class="stat-label">{{ __('Labels Produced') }}</span>
                            </div>
                            <div class="stat-item">
                                <span class="stat-number" data-target="6">0</span>
                                <span class="stat-label">{{ __('Product Categories') }}</span>
                            </div>
                        @endforelse
                    </div>
                </div>
            </section>
        @endif

        <!-- Products Section -->
        @if ($promotedProducts->count() > 0)
            <section class="what-we-do section" id="what-we-do">
                <div class="container">
                    <div class="section-header" data-scroll="fade-up">
                        <span class="section-tag">{{ __('What We Do') }}</span>
                        <h2>{{ __('Labeling Solutions That Deliver') }}</h2>
                        <p>{{ __('With over 20 years in the business, we\'ve mastered the art of creating high-quality adhesive labels that do more than stick. They help brands communicate, stand out, and build trust at first glance.') }}
                        </p>
                    </div>
                    <div class="services-grid">
                        @forelse($promotedProducts as $product)
                            @php($primaryGalleryItem = $product->getResolvedGalleryItems()[0] ?? null)
                            <div class="service-card" data-scroll="fade-up"
                                @if($loop->index > 0) data-scroll-delay="{{ $loop->index * 100 }}" @endif>
                                <div class="product-card-image">
                                    @if ($primaryGalleryItem)
                                        <img src="{{ $primaryGalleryItem['url'] }}"
                                            alt="{{ $primaryGalleryItem['alt'] }}">
                                    @else
                                        <img src="{{ asset('frontend-static/Assets/placeholder.jpg') }}"
                                            alt="{{ $product->title }}">
                                    @endif
                                </div>
                                <h3>{{ $product->title }}</h3>
                                <p>{{ Str::limit($product->description, 100) }}</p>
                                <a href="{{ route('products-view', [$lng, $product->slug]) }}"
                                    class="card-link">{{ __('Learn More') }} <i class="fas fa-arrow-right"></i></a>
                            </div>
                        @empty
                            <p>{{ __('No products available') }}</p>
                        @endforelse
                    </div>
                </div>
            </section>
        @endif

        <!-- Blog Section -->
        @if ($promotedBlogs->count() > 0)
            <section class="blog section section-dark" id="blog">
                <div class="container">
                    <div class="section-header" data-scroll="fade-up">
                        <span class="section-tag">{{ __('Blog') }}</span>
                        <h2>{{ __('Latest Articles') }}</h2>
                        <p>{{ __('Insights, tips, and industry knowledge from the world of labels and packaging.') }}</p>
                    </div>
                    <div class="industries-grid">
                        @foreach ($promotedBlogs as $blog)
                            <div class="industry-card" data-scroll="fade-up"
                                @if($loop->index > 0) data-scroll-delay="{{ $loop->index * 100 }}" @endif>
                                @if ($blog->mainImage)
                                    <div class="industry-card-image">
                                        <img src="{{ asset('storage/' . ltrim($blog->mainImage->path, '/')) }}"
                                            alt="{{ $blog->title }}">
                                    </div>
                                @endif
                                <div class="industry-card-body">
                                    <h3><a href="{{ route('blog-view', [$lng, $blog->slug]) }}">{{ $blog->title }}</a>
                                    </h3>
                                    <p>{{ Str::limit($blog->brief, 120) }}</p>
                                    <a href="{{ route('blog-view', [$lng, $blog->slug]) }}"
                                        class="card-link">{{ __('Read More') }} <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="section-cta">
                        <a href="{{ route('blog-index', $lng) }}"
                            class="btn btn-primary">{{ __('View All Articles') }}</a>
                    </div>
                </div>
            </section>
        @endif

        <!-- Why Labeling Easy Section -->
        @if ($whyLabelingEasy->count() > 0)
            <section class="pain-points section" id="pain-points">
                <div class="container">
                    <div class="section-header" data-scroll="fade-up">
                        <span class="section-tag">{{ __('Why Alpha Pack') }}</span>
                        <h2>{{ __('How We Make Labeling Easy') }}</h2>
                        <p>We understand that labeling challenges can slow down production, affect product appearance, and
                            increase costs.</p>

                    </div>
                    <div class="pain-grid">
                        @foreach ($whyLabelingEasy as $item)
                            <div class="pain-card" data-scroll="fade-up"
                                @if($loop->index > 0) data-scroll-delay="{{ $loop->index * 100 }}" @endif>
                                <div class="pain-icon">
                                    <i class="fas fa-{{ $item->json_items[0]['icon'] ?? 'check' }}"></i>
                                </div>
                                <h3>{{ $item->title }}</h3>
                                <p>{{ $item->brief }}</p>
                            </div>
                        @endforeach
                    </div>
                </div>
            </section>
        @endif



        <!-- Find Right Label Section -->
        @if ($findRightLabel)
            <section class="comparison section section-dark" id="comparison">
                <div class="container">
                    <div class="section-header" data-scroll="fade-up">
                        <span class="section-tag">{{ __('Compare') }}</span>
                        <h2>{{ $findRightLabel->title }}</h2>
                    </div>
                    <div class="table-responsive" data-scroll="fade-up">
                        {!! \App\Classes\Content::inlineStyleToClasses($findRightLabel->content) !!}
                    </div>
                </div>
            </section>
        @endif

        <!-- Our Clients Section -->
        @if ($ourClients)
            <section class="clients section" id="clients">
                <div class="container">
                    <div class="section-header" data-scroll="fade-up">
                        <span class="section-tag">{{ __('Trusted By') }}</span>
                        <h2>{{ $ourClients->title }}</h2>
                        <p>{{ __('We\'re proud to work with businesses across food, beverage, pharmaceutical, cosmetics, and industrial sectors.') }}
                        </p>
                    </div>
                    <div class="clients-marquee">
                        <div class="clients-track">
                            @forelse($ourClients->json_items ?? [] as $client)
                                <div class="client-logo">
                                    <i class="fas fa-{{ $client['icon'] ?? 'building' }}"></i>
                                    <span>{{ $client['label_en'] ?? '' }}</span>
                                </div>
                            @empty
                                <p>{{ __('Coming soon') }}</p>
                            @endforelse
                        </div>
                    </div>
                </div>
            </section>
        @endif

        <section class="cta-section" id="catalogue">
            <div class="container">
                <div class="cta-content">
                    <h2>{{ __('Ready to Find Your Perfect Label?') }}</h2>
                    <p>{{ __('Download our catalogue to explore our full range of labeling solutions.') }}</p>
                    @if(!empty($catalogueUrl))
                        <a href="{{ $catalogueUrl }}" target="_blank" rel="noopener" class="btn btn-primary btn-lg" ><i class="fas fa-download"></i> Download Catalogue</a>
                    @else
                        <a href="#" class="btn btn-primary btn-lg" ><i class="fas fa-download"></i> Download Catalogue</a>
                    @endif
                </div>
            </div>
        </section>
    @endsection

</x-layouts.layout>
