<x-layouts.layout seoTitle="{{ __('Not Found') }}" layoutView="main-inner">

    @section('content')
        <section class="page-hero" style="background-image: url('{{ asset('frontend-static/Assets/banner1.jpg') }}');">
            <div class="container">
                <div class="breadcrumb">
                    <a href="{{ url(app()->getLocale()) }}">Home</a>
                    <span>/</span>
                    <span>404</span>
                </div>
                <h1>Page Not Found</h1>
                <p>The page you are looking for does not exist or may have been moved.</p>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <div class="cta-content" style="max-width: 760px; margin: 0 auto; text-align: center;">
                    <h2>We could not find that URL</h2>
                    <p>Please check the link, or return to the homepage to continue browsing Alpha Pack.</p>
                    <a href="{{ url(app()->getLocale()) }}" class="btn btn-primary btn-lg">Back to Home</a>
                </div>
            </div>
        </section>
    @endsection

</x-layouts.layout>
