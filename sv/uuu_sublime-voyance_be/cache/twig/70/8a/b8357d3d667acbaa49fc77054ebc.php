<?php

/* navbar_footer.html */
class __TwigTemplate_708ab8357d3d667acbaa49fc77054ebc extends Twig_Template
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
        return array (  128 => 24,  119 => 23,  117 => 22,  106 => 20,  103 => 19,  86 => 17,  76 => 13,  47 => 11,  213 => 61,  152 => 52,  126 => 45,  122 => 44,  97 => 25,  83 => 16,  77 => 14,  73 => 12,  64 => 15,  56 => 13,  29 => 7,  24 => 4,  20 => 2,  372 => 101,  366 => 99,  363 => 98,  354 => 92,  351 => 91,  336 => 84,  318 => 81,  312 => 80,  309 => 79,  299 => 78,  295 => 76,  272 => 71,  247 => 65,  245 => 64,  237 => 60,  228 => 58,  214 => 54,  212 => 60,  206 => 51,  204 => 50,  198 => 49,  177 => 48,  162 => 44,  150 => 41,  129 => 37,  93 => 18,  92 => 31,  89 => 20,  80 => 26,  51 => 12,  44 => 10,  37 => 9,  27 => 3,  160 => 39,  153 => 42,  145 => 51,  138 => 39,  125 => 30,  112 => 28,  84 => 23,  68 => 21,  46 => 11,  38 => 9,  36 => 8,  30 => 4,  25 => 5,  406 => 109,  404 => 108,  401 => 107,  400 => 106,  397 => 105,  395 => 104,  388 => 102,  375 => 101,  373 => 100,  369 => 99,  360 => 98,  358 => 97,  348 => 90,  345 => 95,  343 => 87,  335 => 90,  332 => 89,  330 => 88,  322 => 86,  320 => 85,  311 => 84,  308 => 83,  304 => 81,  292 => 80,  242 => 64,  241 => 62,  217 => 55,  196 => 52,  193 => 57,  192 => 50,  183 => 48,  180 => 47,  169 => 46,  157 => 44,  142 => 34,  141 => 42,  135 => 38,  134 => 48,  127 => 34,  118 => 29,  110 => 32,  107 => 31,  105 => 26,  102 => 34,  88 => 25,  81 => 24,  74 => 22,  61 => 19,  50 => 16,  45 => 10,  43 => 9,  40 => 10,  39 => 11,  32 => 7,  26 => 6,  433 => 140,  430 => 139,  420 => 135,  416 => 111,  414 => 132,  408 => 128,  407 => 127,  403 => 125,  390 => 124,  389 => 103,  384 => 120,  376 => 103,  368 => 114,  362 => 97,  356 => 93,  352 => 111,  347 => 89,  344 => 88,  341 => 107,  340 => 86,  334 => 103,  329 => 101,  324 => 99,  313 => 97,  305 => 96,  293 => 86,  284 => 79,  280 => 73,  279 => 78,  274 => 79,  270 => 70,  261 => 72,  257 => 70,  248 => 68,  246 => 66,  243 => 66,  234 => 63,  232 => 61,  220 => 58,  215 => 57,  207 => 58,  190 => 56,  184 => 40,  182 => 54,  179 => 38,  176 => 37,  167 => 53,  158 => 45,  155 => 33,  148 => 31,  139 => 50,  136 => 49,  131 => 27,  124 => 26,  121 => 25,  111 => 36,  108 => 21,  98 => 33,  95 => 27,  85 => 28,  82 => 15,  69 => 21,  67 => 19,  52 => 15,  41 => 8,  35 => 7,  22 => 2,  301 => 74,  298 => 73,  297 => 77,  294 => 87,  289 => 68,  288 => 75,  277 => 66,  276 => 77,  271 => 78,  268 => 62,  266 => 74,  263 => 68,  258 => 71,  256 => 67,  230 => 55,  229 => 54,  224 => 60,  221 => 59,  219 => 56,  216 => 49,  211 => 46,  209 => 52,  200 => 50,  189 => 43,  188 => 42,  185 => 55,  173 => 47,  170 => 39,  168 => 38,  165 => 45,  164 => 36,  161 => 35,  154 => 31,  149 => 30,  143 => 28,  140 => 27,  132 => 38,  130 => 47,  123 => 23,  116 => 22,  101 => 26,  96 => 25,  94 => 18,  91 => 17,  90 => 16,  87 => 29,  75 => 14,  72 => 14,  71 => 20,  63 => 18,  60 => 8,  58 => 14,  57 => 17,  54 => 16,  48 => 15,  34 => 7,  31 => 6,  19 => 1,);
    }
}
