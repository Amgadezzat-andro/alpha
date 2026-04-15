@if (isset($menuParents) && $menuParents)
    @foreach ($menuParents as $item)
        @php
            $currentPath = '/' . ltrim(request()->path(), '/');
            $itemLink = (string) $item->link;
            $itemPath = parse_url($itemLink, PHP_URL_PATH) ?: $itemLink;
            $itemPath = '/' . ltrim($itemPath, '/');
            $isHomeLink = $itemPath === '/';
            $isActive = $isHomeLink
                ? request()->routeIs('home')
                : ($currentPath === $itemPath || Str::endsWith($currentPath, $itemPath));
            $hasChildren = isset($item->childs) && $item->childs->count();
        @endphp

        @if ($hasChildren)
            <li class="dropdown">
                <a {!! \App\Classes\Utility::printAllUrl($item->link) !!} class="{{ trim(($item->custom_color_class ?? '') . ' ' . ($isActive ? 'active' : '')) }}">
                    {{ $item->title }} <i class="fas fa-chevron-down"></i>
                </a>
                <ul class="dropdown-menu">
                    @foreach ($item->childs as $subItem)
                        @if (isset($subItem->childs) && $subItem->childs->count())
                            @foreach ($subItem->childs as $subSubItem)
                                <li><a {!! \App\Classes\Utility::printAllUrl($subSubItem->link) !!}>{{ $subSubItem->title }}</a></li>
                            @endforeach
                        @else
                            <li><a {!! \App\Classes\Utility::printAllUrl($subItem->link) !!}>{{ $subItem->title }}</a></li>
                        @endif
                    @endforeach
                </ul>
            </li>
        @else
            <li>
                <a {!! \App\Classes\Utility::printAllUrl($item->link) !!} class="{{ trim(($item->custom_color_class ?? '') . ' ' . ($isActive ? 'active' : '')) }}">
                    {{ $item->title }}
                </a>
            </li>
        @endif
    @endforeach
@endif
