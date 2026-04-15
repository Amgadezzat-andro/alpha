<x-layouts.layout seoTitle="{{ __('Home') }}" layoutView="main-inner">

    @section('content')
    <section class="hero" id="hero">
        <div class="hero-video-container">
            <video autoplay muted loop playsinline id="heroVideo" poster="{{ asset('frontend-static/Assets/banner.jpg') }}">
                <source src="{{ asset('frontend-static/Assets/7855145-uhd_3840_2160_25fps.mp4') }}" type="video/mp4">
            </video>
        </div>
        <div class="hero-content">
            <img src="{{ asset('frontend-static/Assets/logo33.png') }}" alt="Alpha Pack" class="hero-logo">
            <h1>Label It Right</h1>
            <p>High-quality adhesive labels that help brands communicate, stand out, and build trust at first glance.</p>
            <div class="hero-buttons">
                <a href="{{ asset('frontend-static/products.html') }}" class="btn btn-primary">Explore Products</a>
                <a href="{{ asset('frontend-static/contact.html') }}" class="btn btn-outline">Get a Quote</a>
            </div>
        </div>
        <a href="#what-we-do" class="scroll-indicator">
            <i class="fas fa-chevron-down"></i>
        </a>
    </section>

    <section class="stats-bar">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item">
                    <span class="stat-number" data-target="20">0</span><span class="stat-suffix">+</span>
                    <span class="stat-label">Years in Business</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number" data-target="500">0</span><span class="stat-suffix">+</span>
                    <span class="stat-label">Clients Served</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number" data-target="50">0</span><span class="stat-suffix">M+</span>
                    <span class="stat-label">Labels Produced</span>
                </div>
                <div class="stat-item">
                    <span class="stat-number" data-target="6">0</span>
                    <span class="stat-label">Product Categories</span>
                </div>
            </div>
        </div>
    </section>

    <section class="what-we-do section" id="what-we-do">
        <div class="container">
            <div class="section-header" data-scroll="fade-up">
                <span class="section-tag">What We Do</span>
                <h2>Labeling Solutions That Deliver</h2>
                <p>With over 20 years in the business, we've mastered the art of creating high-quality adhesive labels that do more than stick. They help brands communicate, stand out, and build trust at first glance.</p>
            </div>
            <div class="services-grid">
                <div class="service-card" data-scroll="fade-up">
                    <div class="product-card-image">
                        <img src="{{ asset('frontend-static/Assets/product/167101094915040.jpg') }}" alt="Self-Adhesive Labels">
                    </div>
                    <h3>Self-Adhesive Labels</h3>
                    <p>Custom labels in glossy, matte, clear, and metallic finishes for every application and surface type.</p>
                    <a href="{{ asset('frontend-static/product-details.html') }}#self-adhesive" class="card-link">Learn More <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="service-card" data-scroll="fade-up" data-scroll-delay="100">
                    <div class="product-card-image">
                        <img src="{{ asset('frontend-static/Assets/product/16710109704212.jpg') }}" alt="Barcode Labels">
                    </div>
                    <h3>Barcode Labels</h3>
                    <p>High-quality barcode labels for accurate scanning, durability, and reliable performance across industries.</p>
                    <a href="{{ asset('frontend-static/product-details.html') }}#barcode" class="card-link">Learn More <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="service-card" data-scroll="fade-up" data-scroll-delay="200">
                    <div class="product-card-image">
                        <img src="{{ asset('frontend-static/Assets/product/167101099231395.jpg') }}" alt="Tamper Proof Labels">
                    </div>
                    <h3>Tamper Proof Labels</h3>
                    <p>Security labels with void patterns and break seals that protect products and consumers.</p>
                    <a href="{{ asset('frontend-static/product-details.html') }}#tamper-proof" class="card-link">Learn More <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="service-card" data-scroll="fade-up" data-scroll-delay="300">
                    <div class="product-card-image">
                        <img src="{{ asset('frontend-static/Assets/product/167101104424263.jpg') }}" alt="Shrink Sleeves">
                    </div>
                    <h3>Shrink Sleeves</h3>
                    <p>360-degree full-body labels for maximum visual impact and tamper evidence on any container.</p>
                    <a href="{{ asset('frontend-static/product-details.html') }}#shrink-sleeves" class="card-link">Learn More <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="service-card" data-scroll="fade-up" data-scroll-delay="400">
                    <div class="product-card-image">
                        <img src="{{ asset('frontend-static/Assets/product/16710110633883.jpg') }}" alt="Stretch Sleeves">
                    </div>
                    <h3>Stretch Sleeves</h3>
                    <p>Elastic, adhesive-free labels that wrap containers with full 360° branding — no heat required.</p>
                    <a href="{{ asset('frontend-static/product-details.html') }}#stretch-sleeves" class="card-link">Learn More <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="service-card" data-scroll="fade-up" data-scroll-delay="500">
                    <div class="product-card-image">
                        <img src="{{ asset('frontend-static/Assets/product/167101108126559.jpg') }}" alt="In-Mold Labels">
                    </div>
                    <h3>In-Mold Labels</h3>
                    <p>Labels fused directly into containers during molding for permanent, premium-quality branding.</p>
                    <a href="{{ asset('frontend-static/product-details.html') }}#in-mold" class="card-link">Learn More <i class="fas fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </section>

    <section class="blog section section-dark" id="blog">
        <div class="container">
            <div class="section-header" data-scroll="fade-up">
                <span class="section-tag">Blog</span>
                <h2>Latest Articles</h2>
                <p>Insights, tips, and industry knowledge from the world of labels and packaging.</p>
            </div>
            <div class="industries-grid">
                <div class="industry-card" data-scroll="fade-up">
                    <div class="industry-card-image">
                        <img src="https://images.unsplash.com/photo-1586953208448-b95a79798f07?w=800&q=80" alt="Label materials and printing rolls">
                    </div>
                    <div class="industry-card-body">
                        <h3>How to Choose the Right Label Material</h3>
                        <p>A guide to selecting between PP White, PP Clear, Clear-on-Clear, and Aluminum based on your product needs.</p>
                        <a href="{{ asset('frontend-static/blog-label-material.html') }}" class="card-link">Read article <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="industry-card" data-scroll="fade-up" data-scroll-delay="100">
                    <div class="industry-card-image">
                        <img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=800&q=80" alt="Sustainable packaging and recycling">
                    </div>
                    <div class="industry-card-body">
                        <h3>Sustainable Labeling Solutions</h3>
                        <p>How stretch sleeves and recyclable materials are shaping the future of eco-friendly packaging.</p>
                        <a href="{{ asset('frontend-static/blog-sustainable-labeling.html') }}" class="card-link">Read article <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="industry-card" data-scroll="fade-up" data-scroll-delay="200">
                    <div class="industry-card-image">
                        <img src="https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?w=800&q=80" alt="Secure product packaging and tamper evidence">
                    </div>
                    <div class="industry-card-body">
                        <h3>Why Tamper-Proof Labels Matter</h3>
                        <p>Understanding the importance of tamper evidence for consumer safety and brand protection.</p>
                        <a href="{{ asset('frontend-static/blog-tamper-proof-labels.html') }}" class="card-link">Read article <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="industry-card" data-scroll="fade-up" data-scroll-delay="300">
                    <div class="industry-card-image">
                        <img src="https://images.unsplash.com/photo-1558655146-d09347e92766?w=800&q=80" alt="Color printing and design">
                    </div>
                    <div class="industry-card-body">
                        <h3>Color Accuracy in Label Printing</h3>
                        <p>CMYK vs Pantone — how we ensure consistent, vibrant colors across every print run.</p>
                        <a href="{{ asset('frontend-static/blog-color-accuracy.html') }}" class="card-link">Read article <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="industry-card" data-scroll="fade-up" data-scroll-delay="400">
                    <div class="industry-card-image">
                        <img src="https://images.unsplash.com/photo-1620916566398-39f1143ab7be?w=800&q=80" alt="Beverage bottles and sleeves">
                    </div>
                    <div class="industry-card-body">
                        <h3>Shrink Sleeves vs Stretch Sleeves</h3>
                        <p>Comparing two popular 360° labeling solutions — when to use each and their key advantages.</p>
                        <a href="{{ asset('frontend-static/blog-shrink-vs-stretch.html') }}" class="card-link">Read article <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                <div class="industry-card" data-scroll="fade-up" data-scroll-delay="500">
                    <div class="industry-card-image">
                        <img src="https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?w=800&q=80" alt="Barcode scanning in logistics">
                    </div>
                    <div class="industry-card-body">
                        <h3>Barcode Labels: Best Practices</h3>
                        <p>Tips for ensuring your barcode labels scan reliably across retail, logistics, and industrial settings.</p>
                        <a href="{{ asset('frontend-static/blog-barcode-best-practices.html') }}" class="card-link">Read article <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="section-cta">
                <a href="{{ asset('frontend-static/blog.html') }}" class="btn btn-primary">View All Articles</a>
            </div>
        </div>
    </section>

    <section class="pain-points section" id="pain-points">
        <div class="container">
            <div class="section-header" data-scroll="fade-up">
                <span class="section-tag">Why Alpha Pack</span>
                <h2>How We Make Labeling Easy</h2>
                <p>We understand that labeling challenges can slow down production, affect product appearance, and increase costs.</p>
            </div>
            <div class="pain-grid">
                <div class="pain-card" data-scroll="fade-up">
                    <div class="pain-icon"><i class="fas fa-question-circle"></i></div>
                    <h3>Not Sure Which Label Type?</h3>
                    <p>From adhesive labels and barcode labels to shrink sleeves and specialty materials, we help you select the best solution for your application, surface, and environment.</p>
                </div>
                <div class="pain-card" data-scroll="fade-up" data-scroll-delay="100">
                    <div class="pain-icon"><i class="fas fa-exclamation-triangle"></i></div>
                    <h3>Labels Not Performing?</h3>
                    <p>We focus on strong adhesion, durability, and print quality, ensuring labels stay in place and look great throughout the product's lifecycle.</p>
                </div>
                <div class="pain-card" data-scroll="fade-up" data-scroll-delay="200">
                    <div class="pain-icon"><i class="fas fa-sync-alt"></i></div>
                    <h3>Inconsistent Quality?</h3>
                    <p>Our controlled production process guarantees consistent results across every order, reducing errors, waste, and rework.</p>
                </div>
                <div class="pain-card" data-scroll="fade-up" data-scroll-delay="300">
                    <div class="pain-icon"><i class="fas fa-clock"></i></div>
                    <h3>Tight Timelines?</h3>
                    <p>We understand production pressure and work efficiently to deliver reliable labels on time.</p>
                </div>
                <div class="pain-card" data-scroll="fade-up" data-scroll-delay="400">
                    <div class="pain-icon"><i class="fas fa-palette"></i></div>
                    <h3>Generic Solutions?</h3>
                    <p>Alpha Pack offers fully customizable labels in size, material, finish, and format, helping your product stand out on the shelf.</p>
                </div>
                <div class="pain-card" data-scroll="fade-up" data-scroll-delay="500">
                    <div class="pain-icon"><i class="fas fa-eye-dropper"></i></div>
                    <h3>Color Accuracy Matters</h3>
                    <p>We print using CMYK and Pantone color systems to ensure exceptional color accuracy and consistency across every label.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="comparison section section-dark" id="comparison">
        <div class="container">
            <div class="section-header" data-scroll="fade-up">
                <span class="section-tag">Compare</span>
                <h2>Find the Right Label for You</h2>
            </div>
            <div class="table-responsive" data-scroll="fade-up">
                <table class="comparison-table">
                    <thead>
                        <tr>
                            <th>Feature</th>
                            <th>PP White</th>
                            <th>PP Clear</th>
                            <th>Clear-on-Clear</th>
                            <th>Aluminum</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Look &amp; Feel</strong></td>
                            <td>Solid white, bold &amp; vibrant</td>
                            <td>Transparent, modern</td>
                            <td>Invisible "no-label" look</td>
                            <td>Metallic, premium finish</td>
                        </tr>
                        <tr>
                            <td><strong>Brand Impact</strong></td>
                            <td>High color pop &amp; readability</td>
                            <td>Clean, minimal branding</td>
                            <td>Ultra-premium, seamless branding</td>
                            <td>Strong, luxury &amp; technical</td>
                        </tr>
                        <tr>
                            <td><strong>Durability</strong></td>
                            <td>Water &amp; tear resistant</td>
                            <td>Water resistant</td>
                            <td>Water resistant</td>
                            <td>Heat &amp; chemical resistant</td>
                        </tr>
                        <tr>
                            <td><strong>Best Used On</strong></td>
                            <td>Plastic, glass, metal</td>
                            <td>Smooth plastic &amp; glass</td>
                            <td>Clear glass &amp; plastic</td>
                            <td>Glass, metal, plastic</td>
                        </tr>
                        <tr>
                            <td><strong>Ideal For</strong></td>
                            <td>Food, retail, cosmetics</td>
                            <td>Bottles &amp; jars</td>
                            <td>Beverages, cosmetics</td>
                            <td>Pharma, chemicals, luxury</td>
                        </tr>
                        <tr>
                            <td><strong>Why Choose?</strong></td>
                            <td>Cost-effective, versatile, strong brand visibility</td>
                            <td>Modern designs that let product show through</td>
                            <td>High-end "label-free" shelf appearance</td>
                            <td>Unmatched durability with premium metallic look</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <section class="clients section" id="clients">
        <div class="container">
            <div class="section-header" data-scroll="fade-up">
                <span class="section-tag">Trusted By</span>
                <h2>Some of Our Clients</h2>
                <p>We're proud to work with businesses across food, beverage, pharmaceutical, cosmetics, and industrial sectors.</p>
            </div>
            <div class="clients-marquee">
                <div class="clients-track">
                    <div class="client-logo"><i class="fas fa-building"></i><span>Food Corp</span></div>
                    <div class="client-logo"><i class="fas fa-flask"></i><span>PharmaCo</span></div>
                    <div class="client-logo"><i class="fas fa-spa"></i><span>BeautyLine</span></div>
                    <div class="client-logo"><i class="fas fa-wine-glass-alt"></i><span>BevGroup</span></div>
                    <div class="client-logo"><i class="fas fa-industry"></i><span>IndusTech</span></div>
                    <div class="client-logo"><i class="fas fa-leaf"></i><span>NatureCare</span></div>
                    <div class="client-logo"><i class="fas fa-pump-soap"></i><span>CleanPro</span></div>
                    <div class="client-logo"><i class="fas fa-box"></i><span>PackRight</span></div>
                    <div class="client-logo"><i class="fas fa-building"></i><span>Food Corp</span></div>
                    <div class="client-logo"><i class="fas fa-flask"></i><span>PharmaCo</span></div>
                    <div class="client-logo"><i class="fas fa-spa"></i><span>BeautyLine</span></div>
                    <div class="client-logo"><i class="fas fa-wine-glass-alt"></i><span>BevGroup</span></div>
                    <div class="client-logo"><i class="fas fa-industry"></i><span>IndusTech</span></div>
                    <div class="client-logo"><i class="fas fa-leaf"></i><span>NatureCare</span></div>
                    <div class="client-logo"><i class="fas fa-pump-soap"></i><span>CleanPro</span></div>
                    <div class="client-logo"><i class="fas fa-box"></i><span>PackRight</span></div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section" id="catalogue">
        <div class="container">
            <div class="cta-content">
                <h2>Ready to Find Your Perfect Label?</h2>
                <p>Download our catalogue to explore our full range of labeling solutions.</p>
                <a href="#" class="btn btn-primary btn-lg"><i class="fas fa-download"></i> Download Our Catalogue</a>
            </div>
        </div>
    </section>
    @endsection

</x-layouts.layout>

