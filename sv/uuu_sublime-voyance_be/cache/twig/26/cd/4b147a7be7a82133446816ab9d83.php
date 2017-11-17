<?php

/* navbar_footer.html */
class __TwigTemplate_26cd4b147a7be7a82133446816ab9d83 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"navbar\" role=\"navigation\">
\t<div class=\"inner\">

\t<ul id=\"nav-footer\" class=\"linklist bulletin\" role=\"menubar\">
\t\t<li class=\"small-icon icon-home breadcrumbs\">
\t\t\t";
        // line 6
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo "<span class=\"crumb\"><a href=\"";
            echo (isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null);
            echo "\" data-navbar-reference=\"home\">";
            echo $this->env->getExtension('phpbb')->lang("SITE_HOME");
            echo "</a></span>";
        }
        // line 7
        echo "\t\t\t";
        // line 8
        echo "\t\t\t<span class=\"crumb\"><a href=\"";
        echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        echo "\" data-navbar-reference=\"index\">";
        echo $this->env->getExtension('phpbb')->lang("INDEX");
        echo "</a></span>
\t\t\t";
        // line 9
        // line 10
        echo "\t\t</li>
\t\t";
        // line 11
        if (((isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null) && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
            echo "<li class=\"small-icon icon-";
            if ((isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null)) {
                echo "unsubscribe";
            } else {
                echo "subscribe";
            }
            echo "\" data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null);
            echo "\" title=\"";
            echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
            echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"small-icon icon-";
            if ((!(isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null))) {
                echo "unsubscribe";
            } else {
                echo "subscribe";
            }
            echo "\" data-toggle-text=\"";
            echo (isset($context["S_WATCH_FORUM_TOGGLE"]) ? $context["S_WATCH_FORUM_TOGGLE"] : null);
            echo "\" data-toggle-url=\"";
            echo (isset($context["U_WATCH_FORUM_TOGGLE"]) ? $context["U_WATCH_FORUM_TOGGLE"] : null);
            echo "\">";
            echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
            echo "</a></li>";
        }
        // line 12
        echo "
\t\t";
        // line 13
        // line 14
        echo "\t\t<li class=\"rightside\">";
        echo (isset($context["S_TIMEZONE"]) ? $context["S_TIMEZONE"] : null);
        echo "</li>
\t\t";
        // line 15
        // line 16
        echo "\t\t";
        if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
            // line 17
            echo "\t\t\t<li class=\"small-icon icon-delete-cookies rightside\"><a href=\"";
            echo (isset($context["U_DELETE_COOKIES"]) ? $context["U_DELETE_COOKIES"] : null);
            echo "\" data-ajax=\"true\" data-refresh=\"true\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("DELETE_COOKIES");
            echo "</a></li>
\t\t\t";
            // line 18
            if ((isset($context["S_DISPLAY_MEMBERLIST"]) ? $context["S_DISPLAY_MEMBERLIST"] : null)) {
                echo "<li class=\"small-icon icon-members rightside\" data-last-responsive=\"true\"><a href=\"";
                echo (isset($context["U_MEMBERLIST"]) ? $context["U_MEMBERLIST"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("MEMBERLIST_EXPLAIN");
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("MEMBERLIST");
                echo "</a></li>";
            }
            // line 19
            echo "\t\t";
        }
        // line 20
        echo "\t\t";
        // line 21
        echo "\t\t";
        if ((isset($context["U_TEAM"]) ? $context["U_TEAM"] : null)) {
            echo "<li class=\"small-icon icon-team rightside\" data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_TEAM"]) ? $context["U_TEAM"] : null);
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("THE_TEAM");
            echo "</a></li>";
        }
        // line 22
        echo "\t\t";
        // line 23
        echo "\t\t";
        if ((isset($context["U_CONTACT_US"]) ? $context["U_CONTACT_US"] : null)) {
            echo "<li class=\"small-icon icon-contact rightside\" data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_CONTACT_US"]) ? $context["U_CONTACT_US"] : null);
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("CONTACT_US");
            echo "</a></li>";
        }
        // line 24
        echo "\t</ul>

\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "navbar_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  128 => 24,  119 => 23,  117 => 22,  106 => 20,  103 => 19,  86 => 17,  76 => 13,  47 => 11,  44 => 10,  36 => 8,  34 => 7,  213 => 61,  212 => 60,  152 => 52,  145 => 51,  126 => 45,  122 => 44,  101 => 26,  97 => 25,  89 => 20,  83 => 16,  73 => 12,  64 => 15,  56 => 13,  51 => 12,  46 => 11,  29 => 7,  25 => 5,  24 => 4,  20 => 2,  406 => 109,  404 => 108,  401 => 107,  400 => 106,  397 => 105,  395 => 104,  388 => 102,  375 => 101,  373 => 100,  369 => 99,  360 => 98,  358 => 97,  348 => 96,  345 => 95,  343 => 94,  335 => 90,  332 => 89,  330 => 88,  322 => 86,  320 => 85,  311 => 84,  308 => 83,  304 => 81,  292 => 80,  276 => 77,  266 => 74,  263 => 73,  258 => 71,  242 => 64,  241 => 63,  221 => 59,  217 => 57,  196 => 52,  193 => 57,  192 => 50,  185 => 55,  183 => 48,  180 => 47,  169 => 46,  157 => 44,  142 => 43,  141 => 42,  135 => 38,  134 => 48,  130 => 47,  127 => 34,  118 => 33,  110 => 32,  107 => 31,  105 => 30,  102 => 29,  88 => 25,  81 => 24,  74 => 22,  61 => 19,  50 => 16,  48 => 15,  45 => 10,  43 => 9,  40 => 12,  39 => 11,  32 => 7,  26 => 6,  433 => 140,  430 => 139,  420 => 135,  416 => 111,  414 => 132,  408 => 128,  407 => 127,  403 => 125,  390 => 124,  389 => 103,  384 => 120,  376 => 115,  368 => 114,  362 => 113,  356 => 112,  352 => 111,  347 => 109,  344 => 108,  341 => 107,  340 => 93,  334 => 103,  329 => 101,  324 => 99,  313 => 97,  305 => 96,  294 => 87,  293 => 86,  284 => 79,  280 => 82,  279 => 78,  274 => 79,  271 => 78,  270 => 77,  261 => 72,  257 => 70,  248 => 68,  246 => 66,  243 => 66,  234 => 63,  232 => 61,  224 => 60,  220 => 58,  215 => 57,  209 => 56,  207 => 58,  200 => 50,  190 => 56,  184 => 40,  182 => 54,  179 => 38,  176 => 37,  167 => 53,  158 => 45,  155 => 33,  148 => 31,  139 => 50,  136 => 49,  131 => 27,  124 => 26,  121 => 25,  111 => 23,  108 => 21,  98 => 20,  95 => 27,  85 => 17,  82 => 15,  69 => 21,  67 => 12,  63 => 10,  52 => 9,  41 => 8,  31 => 6,  22 => 2,  93 => 18,  79 => 16,  77 => 14,  72 => 14,  62 => 11,  58 => 14,  54 => 9,  49 => 6,  35 => 7,  21 => 2,  19 => 1,);
    }
}
