<?php   defined('C5_EXECUTE') or die("Access Denied.");
$navItems = $controller->getNavItems(true);
echo '<ul class="breadcrumb">';
    for ($i = 0; $i < count($navItems); $i++) {
        $ni = $navItems[$i];

        if ($ni->isCurrent) {
            echo '<li class="active '. $ni->classes . '">' . $ni->name . '</a>';
        } else {
            echo '<li class="'. $ni->classes . '"><a href="' . $ni->url . '" target="' . $ni->target . '">' . $ni->name . '</a><span class="divider">/</span></li>';
        }
    }
echo '</ul>';
