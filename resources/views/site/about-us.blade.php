<x-layouts.layout seoTitle="{{ __('About Us') }}" layoutView="main-inner">

    @section('content')
    <section class="page-hero" style="background-image: url('{{ $aboutHeader?->mainImage?->url ?? $aboutHeader?->mainImage?->getUrl() ?? asset('frontend-static/Assets/banner1.jpg') }}');">
        <div class="container">
            <div class="breadcrumb"><a href="{{ url(app()->getLocale()) }}">Home</a> <span>/</span> <span>About Us</span></div>
            <h1>{{ $aboutHeader?->title ?: 'About Alpha Pack' }}</h1>
            <p>{{ $aboutHeader?->brief ?: 'Over 20 years of mastering the art of creating high-quality adhesive labels that help brands communicate, stand out, and build trust.' }}</p>
        </div>
    </section>

    <section class="product-intro">
        <div class="container">
            <div class="product-intro-grid">
                <div class="product-intro-text">
                    <h2>{{ $aboutWhoWeAre?->title ?: 'Who We Are' }}</h2>
                    @if(!empty($aboutWhoWeAre?->brief))
                        <p>{{ $aboutWhoWeAre->brief }}</p>
                    @endif

                    @if(!empty($aboutWhoWeAre?->content))
                        {!! $aboutWhoWeAre->content !!}
                     @endif
                 </div>
                 <div class="product-intro-image">
                     <img src="{{ $aboutWhoWeAre?->mainImage?->url ?? $aboutWhoWeAre?->mainImage?->getUrl() ?? asset('frontend-static/Assets/banner.jpg') }}" alt="{{ $aboutWhoWeAre?->title ?: 'Alpha Pack' }}">
                 </div>
             </div>
         </div>
     </section>

     <section class="section section-dark" id="history">
         <div class="container">
             <div class="section-header">
                 <span class="section-tag">Our Story</span>
                 <h2>Our History</h2>
                 <p>From humble beginnings to industry leadership, our journey of innovation and quality.</p>
             </div>
             <div class="history-timeline">
                 @foreach(($aboutHistoryCards ?? collect()) as $card)
                     <div class="timeline-item">
                         <div class="timeline-dot"></div>
                         <div class="timeline-content">
                             <h3>{{ $card->title }}</h3>
                             <p>{{ $card->brief }}</p>
                         </div>
                     </div>
                 @endforeach
             </div>
         </div>
     </section>

     <section class="section" id="testimonials">
         <div class="container">
             <div class="section-header">
                 <span class="section-tag">Testimonials</span>
                 <h2>What Our Clients Say</h2>
             </div>
             <div class="testimonials-grid">
                 @foreach(($aboutTestimonials ?? collect()) as $testimonial)
                     <div class="testimonial-card">
                         <p>{{ $testimonial->brief }}</p>
                         <span class="testimonial-author">{{ $testimonial->title }}</span>
                         <span class="testimonial-role">{{ $testimonial->second_title ?: '-' }}</span>
                     </div>
                 @endforeach
             </div>
         </div>
     </section>

     <section class="section section-dark" id="terms">
         <div class="container">
             <div class="section-header">
                 <span class="section-tag">Legal</span>
                 <h2>Terms &amp; Conditions</h2>
             </div>
             <div class="terms-content">
                 @if(!empty($aboutTerms?->content))
                     {!! $aboutTerms->content !!}
                 @else
                     <h3>1. General</h3>
                     <p>These terms and conditions govern the supply of goods and services. By placing an order, you agree to be bound by these terms.</p>
                     <h3>2. Orders &amp; Pricing</h3>
                     <p>All quotations are valid for 30 days unless otherwise stated. Prices are subject to change based on material costs and specifications.</p>
                     <h3>3. Production &amp; Delivery</h3>
                     <p>Delivery timelines are estimated and may vary. We make reasonable efforts to meet agreed schedules.</p>
                     <h3>4. Liability</h3>
                     <p>Liability is limited to the value of the goods supplied. We are not responsible for indirect losses.</p>
                 @endif
             </div>
         </div>
     </section>

     <section class="cta-section">
         <div class="container">
             <div class="cta-content">
                 <h2>Ready to Work With Us?</h2>
                 <p>Let us discuss how Alpha Pack can deliver the perfect labeling solution for your brand.</p>
                 <a href="{{ url(app()->getLocale() . '/contact-us') }}" class="btn btn-primary btn-lg">Contact Us</a>
             </div>
         </div>
     </section>
    @endsection

</x-layouts.layout>
