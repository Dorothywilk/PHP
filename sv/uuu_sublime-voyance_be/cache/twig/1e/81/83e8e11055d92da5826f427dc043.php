<?php

/* simple_header.html */
class __TwigTemplate_1e8183e8e11055d92da5826f427dc043 extends Twig_Template
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
        echo "<!DOCTYPE html>
<html dir=\"";
        // line 2
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo "\" lang=\"";
        echo (isset($context["S_USER_LANG"]) ? $context["S_USER_LANG"] : null);
        echo "\">
<head>
<meta charset=\"utf-8\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />
";
        // line 6
        echo (isset($context["META"]) ? $context["META"] : null);
        echo "
<title>";
        // line 7
        echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
        echo " &bull; ";
        if ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("MCP");
            echo " &bull; ";
        } elseif ((isset($context["S_IN_UCP"]) ? $context["S_IN_UCP"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("UCP");
            echo " &bull; ";
        }
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        echo "</title>

<link href=\"";
        // line 9
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/print.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"print\" title=\"printonly\" />
";
        // line 10
        if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
            echo "<link href=\"//fonts.googleapis.com/css?family=Open+Sans:600&amp;subset=latin,cyrillic-ext,latin-ext,cyrillic,greek-ext,greek,vietnamese\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\" />";
        }
        // line 11
        echo "<link href=\"";
        echo (isset($context["T_STYLESHEET_LINK"]) ? $context["T_STYLESHEET_LINK"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\" />
<link href=\"";
        // line 12
        echo (isset($context["T_STYLESHEET_LANG_LINK"]) ? $context["T_STYLESHEET_LANG_LINK"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\" />
<link href=\"";
        // line 13
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/responsive.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"only screen and (max-width: 700px), only screen and (max-device-width: 700px)\" />

";
        // line 15
        if (((isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null) == "rtl")) {
            // line 16
            echo "\t<link href=\"";
            echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
            echo "/bidi.css?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\" />
";
        }
        // line 18
        echo "
<!--[if lte IE 8]>
\t<link href=\"";
        // line 20
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/tweaks.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\" />
<![endif]-->

";
        // line 23
        $value = 1;
        $context['definition']->set('POPUP', $value);
        // line 24
        echo "
";
        // line 25
        // line 26
        echo "
";
        // line 27
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "STYLESHEETS");
        echo "

";
        // line 29
        // line 30
        echo "
</head>

<body id=\"phpbb\" class=\"nojs ";
        // line 33
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo " ";
        echo (isset($context["BODY_CLASS"]) ? $context["BODY_CLASS"] : null);
        echo "\">

";
        // line 35
        // line 36
        echo "
<div id=\"wrap\">
\t<a id=\"top\" class=\"anchor\" accesskey=\"t\"></a>
\t<div id=\"page-body\" role=\"main\">
";
    }

    public function getTemplateName()
    {
        return "simple_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  125 => 35,  118 => 33,  113 => 30,  112 => 29,  107 => 27,  103 => 25,  100 => 24,  97 => 23,  89 => 20,  85 => 18,  77 => 16,  75 => 15,  68 => 13,  64 => 12,  59 => 11,  55 => 10,  49 => 9,  35 => 7,  31 => 6,  22 => 2,  703 => 159,  690 => 158,  676 => 156,  674 => 155,  669 => 152,  664 => 150,  659 => 149,  647 => 148,  643 => 147,  639 => 146,  632 => 141,  626 => 138,  620 => 137,  613 => 136,  610 => 135,  608 => 134,  605 => 133,  600 => 131,  597 => 130,  595 => 129,  592 => 128,  584 => 125,  580 => 124,  577 => 123,  575 => 122,  567 => 116,  552 => 113,  549 => 112,  543 => 110,  537 => 109,  533 => 108,  515 => 107,  501 => 106,  476 => 105,  468 => 104,  465 => 103,  462 => 102,  459 => 101,  456 => 100,  451 => 97,  448 => 96,  442 => 95,  438 => 94,  423 => 93,  419 => 92,  414 => 91,  411 => 90,  403 => 89,  397 => 88,  382 => 87,  376 => 86,  357 => 85,  355 => 84,  347 => 78,  339 => 72,  337 => 71,  327 => 68,  324 => 67,  321 => 66,  318 => 65,  315 => 64,  309 => 63,  303 => 59,  295 => 58,  289 => 57,  274 => 56,  268 => 55,  246 => 54,  238 => 48,  236 => 47,  233 => 46,  228 => 43,  223 => 41,  218 => 40,  206 => 39,  202 => 38,  198 => 37,  192 => 33,  181 => 31,  177 => 30,  174 => 29,  156 => 28,  140 => 24,  136 => 22,  131 => 21,  126 => 36,  122 => 19,  115 => 17,  104 => 26,  102 => 15,  99 => 14,  93 => 11,  90 => 10,  78 => 9,  71 => 8,  58 => 7,  47 => 4,  34 => 3,  21 => 2,  19 => 1,);
    }
}
