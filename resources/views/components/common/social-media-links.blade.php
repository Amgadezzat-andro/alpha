@if(isset($socialMediaLinks) && $socialMediaLinks->isNotEmpty())
<div class="{{ ($view ?? null) == 'social-links' ? 'social-links' : 'footer-social' }}">
    @foreach ($socialMediaLinks as $socialMediaLink)
        <a {!! \App\Classes\Utility::printAllUrl($socialMediaLink->url) !!} aria-label="{{ $socialMediaLink->title ?? 'Social' }}">
            <i class="{{ $socialMediaLink->getIcon() }}" aria-hidden="true"></i>
        </a>
    @endforeach
</div>
@endif
