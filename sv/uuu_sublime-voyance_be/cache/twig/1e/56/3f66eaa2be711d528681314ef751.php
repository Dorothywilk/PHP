<?php

/* simple_footer.html */
class __TwigTemplate_1e563f66eaa2be711d528681314ef751 extends Twig_Template
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
        echo "\t</div>

\t<div class=\"copyright\" role=\"contentinfo\">";
        // line 3
        echo (isset($context["CREDIT_LINE"]) ? $context["CREDIT_LINE"] : null);
        echo "
\t\t";
        // line 4
        if ((isset($context["TRANSLATION_INFO"]) ? $context["TRANSLATION_INFO"] : null)) {
            echo "<br />";
            echo (isset($context["TRANSLATION_INFO"]) ? $context["TRANSLATION_INFO"] : null);
        }
        // line 5
        echo "\t\t";
        if ((isset($context["DEBUG_OUTPUT"]) ? $context["DEBUG_OUTPUT"] : null)) {
            echo "<br />";
            echo (isset($context["DEBUG_OUTPUT"]) ? $context["DEBUG_OUTPUT"] : null);
        }
        // line 6
        echo "\t</div>

\t<div id=\"darkenwrapper\" data-ajax-error-title=\"";
        // line 8
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TITLE");
        echo "\" data-ajax-error-text=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT");
        echo "\" data-ajax-error-text-abort=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_ABORT");
        echo "\" data-ajax-error-text-timeout=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_TIMEOUT");
        echo "\" data-ajax-error-text-parsererror=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_PARSERERROR");
        echo "\">
\t\t<div id=\"darken\">&nbsp;</div>
\t</div>
\t<div id=\"loading_indicator\"></div>

\t<div id=\"phpbb_alert\" class=\"phpbb_alert\" data-l-err=\"";
        // line 13
        echo $this->env->getExtension('phpbb')->lang("ERROR");
        echo "\" data-l-timeout-processing-req=\"";
        echo $this->env->getExtension('phpbb')->lang("TIMEOUT_PROCESSING_REQ");
        echo "\">
\t\t<a href=\"#\" class=\"alert_close\"></a>
\t\t<h3 class=\"alert_title\"></h3><p class=\"alert_text\"></p>
\t</div>
\t<div id=\"phpbb_confirm\" class=\"phpbb_alert\">
\t\t<a href=\"#\" class=\"alert_close\"></a>
\t\t<div class=\"alert_text\"></div>
\t</div>
</div>

<script type=\"text/javascript\" src=\"";
        // line 23
        echo (isset($context["T_JQUERY_LINK"]) ? $context["T_JQUERY_LINK"] : null);
        echo "\"></script>
";
        // line 24
        if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
            echo "<script type=\"text/javascript\">window.jQuery || document.write(unescape('%3Cscript src=\"";
            echo (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null);
            echo "/javascript/jquery.min.js?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" type=\"text/javascript\"%3E%3C/script%3E'));</script>";
        }
        // line 25
        echo "<script type=\"text/javascript\" src=\"";
        echo (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null);
        echo "/javascript/core.js?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\"></script>
";
        // line 26
        $asset_file = "forum_fn.js";
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            $asset->add_assets_version('6');
            $asset_file = $asset->get_url();
            }
        }
        $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
        // line 27
        $asset_file = "ajax.js";
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            $asset->add_assets_version('6');
            $asset_file = $asset->get_url();
            }
        }
        $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
        // line 28
        echo "
";
        // line 29
        // line 30
        echo "
";
        // line 31
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SCRIPTS");
        echo "

</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "simple_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  92 => 26,  73 => 23,  27 => 4,  23 => 3,  225 => 81,  221 => 80,  217 => 79,  208 => 72,  200 => 68,  195 => 67,  190 => 65,  183 => 63,  178 => 62,  175 => 61,  167 => 58,  162 => 57,  159 => 56,  157 => 55,  150 => 53,  145 => 52,  134 => 46,  129 => 31,  120 => 41,  106 => 36,  91 => 30,  86 => 29,  83 => 28,  81 => 27,  67 => 17,  65 => 16,  54 => 15,  48 => 14,  42 => 8,  38 => 6,  37 => 9,  32 => 5,  25 => 3,  125 => 29,  118 => 33,  113 => 30,  112 => 39,  107 => 27,  103 => 25,  100 => 24,  97 => 33,  89 => 20,  85 => 25,  77 => 24,  75 => 15,  68 => 13,  64 => 12,  59 => 11,  55 => 10,  49 => 9,  35 => 7,  31 => 6,  22 => 2,  703 => 159,  690 => 158,  676 => 156,  674 => 155,  669 => 152,  664 => 150,  659 => 149,  647 => 148,  643 => 147,  639 => 146,  632 => 141,  626 => 138,  620 => 137,  613 => 136,  610 => 135,  608 => 134,  605 => 133,  600 => 131,  597 => 130,  595 => 129,  592 => 128,  584 => 125,  580 => 124,  577 => 123,  575 => 122,  567 => 116,  552 => 113,  549 => 112,  543 => 110,  537 => 109,  533 => 108,  515 => 107,  501 => 106,  476 => 105,  468 => 104,  465 => 103,  462 => 102,  459 => 101,  456 => 100,  451 => 97,  448 => 96,  442 => 95,  438 => 94,  423 => 93,  419 => 92,  414 => 91,  411 => 90,  403 => 89,  397 => 88,  382 => 87,  376 => 86,  357 => 85,  355 => 84,  347 => 78,  339 => 72,  337 => 71,  327 => 68,  324 => 67,  321 => 66,  318 => 65,  315 => 64,  309 => 63,  303 => 59,  295 => 58,  289 => 57,  274 => 56,  268 => 55,  246 => 54,  238 => 48,  236 => 47,  233 => 46,  228 => 43,  223 => 41,  218 => 40,  206 => 71,  202 => 38,  198 => 37,  192 => 66,  181 => 31,  177 => 30,  174 => 29,  156 => 28,  140 => 24,  136 => 22,  131 => 21,  126 => 30,  122 => 28,  115 => 40,  104 => 26,  102 => 35,  99 => 34,  93 => 11,  90 => 10,  78 => 9,  71 => 8,  58 => 13,  47 => 4,  34 => 3,  21 => 2,  19 => 1,);
    }
}
