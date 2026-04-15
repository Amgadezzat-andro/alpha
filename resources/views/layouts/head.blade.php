<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $seoTitle ? 'ALPHA - ' . $seoTitle : 'ALPHA' }}</title>
    <link rel="icon" href="{{ $favIcon?->largeUrl }}">

    @php
        $seoDescription = strip_tags($seoDescription);
        $seoDescription = trim(preg_replace('/\s+/', ' ', $seoDescription));
    @endphp

    <x-common.seo
        :seoTitle="$seoTitle"
        :seoDescription="$seoDescription"
        :seoKeywords="$seoKeywords"
        :seoAuther="$seoAuther"
        :seoImage="$seoImage"
        :seoOGType="$seoOGType"
        :seoTwitterType="$seoTwitterType"
        :seoSchema="$seoSchema"
    />

    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    @stack('css')

    @livewireStyles

    <link href="{{ asset('css/custom.css') }}" type="text/css" rel="stylesheet">

    <x-common.external-analytics />
</head>
