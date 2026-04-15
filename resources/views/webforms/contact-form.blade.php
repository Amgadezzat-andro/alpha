<x-layouts.layout seoTitle="Contact Us" layoutView="main-inner">

@section('content')
@php
    $ci = $contactInfo ?? [];
    $heroImage = $contactHeader?->mainImage?->url ?? $contactHeader?->mainImage?->getUrl() ?? asset('frontend-static/Assets/banner1.jpg');
    $heroTitle = $contactHeader?->title ?: 'Get In Touch';
    $heroBrief = $contactHeader?->brief ?: 'Ready to discuss your labeling needs? We\'re here to help you find the perfect solution.';
    $catalogueUrl = $catalogueUrl ?? null;
    $cleanPhone = preg_replace('/\s+/', '', $ci['phone'] ?? '');
@endphp

<section class="page-hero" style="background-image: url('{{ $heroImage }}');">
    <div class="container">
        <div class="breadcrumb"><a href="{{ url(app()->getLocale()) }}">Home</a> <span>/</span> <span>Contact</span></div>
        <h1>{{ $heroTitle }}</h1>
        <p>{{ $heroBrief }}</p>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="contact-grid">
            <div class="contact-form">
                <h2 style="color: var(--primary); margin-bottom: 8px;">Send Us a Message</h2>
                <p style="color: var(--text-light); margin-bottom: 30px;">Fill out the form below and our team will get back to you promptly.</p>
                <livewire:contact-us-form />
            </div>

            <div>
                <div class="contact-info-card">
                    <h3>Contact Information</h3>

                    <div class="contact-info-item">
                        <i class="fas fa-envelope"></i>
                        <div>
                            <h4>Email</h4>
                            <p>
                                <a href="mailto:{{ $ci['email'] ?? '' }}" style="color: var(--accent);">{{ $ci['email'] ?: '-' }}</a>
                            </p>
                        </div>
                    </div>

                    <div class="contact-info-item">
                        <i class="fas fa-phone"></i>
                        <div>
                            <h4>Phone</h4>
                            <p>
                                <a href="tel:{{ $cleanPhone }}" style="color: var(--accent);">{{ $ci['phone'] ?: '-' }}</a>
                            </p>
                        </div>
                    </div>

                    <div class="contact-info-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <div>
                            <h4>Address</h4>
                            <p>{{ $ci['address'] ?: '-' }}</p>
                        </div>
                    </div>

                    <div class="contact-info-item">
                        <i class="fas fa-clock"></i>
                        <div>
                            <h4>Business Hours</h4>
                            <p>{!! nl2br(e($ci['business_hours'] ?: '-')) !!}</p>
                        </div>
                    </div>

                    <div style="margin-top: 30px; padding-top: 20px; border-top: 1px solid rgba(255,255,255,0.15);">
                        <h4 style="margin-bottom: 12px;">Follow Us</h4>
                        <x-common.social-media-links />
                    </div>
                </div>

                <div style="margin-top: 24px; background: var(--off-white); border-radius: var(--radius); padding: 28px;">
                    <h3 style="color: var(--primary); margin-bottom: 12px;"><i class="fas fa-download" style="color: var(--accent);"></i> Download Our Catalogue</h3>
                    <p style="color: var(--text-light); font-size: 0.9rem; margin-bottom: 16px;">Explore our full range of labeling solutions - from self-adhesive labels to shrink sleeves and in-mold labels.</p>
                    @if(!empty($catalogueUrl))
                        <a href="{{ $catalogueUrl }}" target="_blank" rel="noopener" class="btn btn-primary" style="width: 100%; justify-content: center;"><i class="fas fa-download"></i> Download Catalogue</a>
                    @else
                        <a href="#" class="btn btn-primary" style="width: 100%; justify-content: center; pointer-events: none; opacity: .6;"><i class="fas fa-download"></i> Download Catalogue</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

</x-layouts.layout>
