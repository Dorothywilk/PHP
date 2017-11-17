<?php

/* overall_footer.html */
class __TwigTemplate_8fdaa6cea29c5ad349e7e83894d603c2 extends Twig_Template
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
        // line 2
        echo "</div>

";
        // line 4
        // line 5
        echo "
<div id=\"page-footer\" role=\"contentinfo\">
  ";
        // line 7
        $location = "navbar_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("navbar_footer.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 8
        echo "
  <div class=\"copyright\">
    ";
        // line 10
        // line 11
        echo "    ";
        echo (isset($context["CREDIT_LINE"]) ? $context["CREDIT_LINE"] : null);
        echo "
    ";
        // line 12
        if ((isset($context["TRANSLATION_INFO"]) ? $context["TRANSLATION_INFO"] : null)) {
            echo "<br/>";
            echo (isset($context["TRANSLATION_INFO"]) ? $context["TRANSLATION_INFO"] : null);
        }
        // line 13
        echo "    ";
        // line 14
        echo "    ";
        if ((isset($context["DEBUG_OUTPUT"]) ? $context["DEBUG_OUTPUT"] : null)) {
            echo "<br/>";
            echo (isset($context["DEBUG_OUTPUT"]) ? $context["DEBUG_OUTPUT"] : null);
        }
        // line 15
        echo "    ";
        if ((isset($context["U_ACP"]) ? $context["U_ACP"] : null)) {
            echo "<br/><strong><a href=\"";
            echo (isset($context["U_ACP"]) ? $context["U_ACP"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("ACP");
            echo "</a></strong>";
        }
        // line 16
        echo "  </div>

  <div id=\"darkenwrapper\" data-ajax-error-title=\"";
        // line 18
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TITLE");
        echo "\" data-ajax-error-text=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT");
        echo "\"
       data-ajax-error-text-abort=\"";
        // line 19
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_ABORT");
        echo "\" data-ajax-error-text-timeout=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_TIMEOUT");
        echo "\"
       data-ajax-error-text-parsererror=\"";
        // line 20
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_PARSERERROR");
        echo "\">
    <div id=\"darken\">&nbsp;</div>
  </div>
  <div id=\"loading_indicator\"></div>

  <div id=\"phpbb_alert\" class=\"phpbb_alert\" data-l-err=\"";
        // line 25
        echo $this->env->getExtension('phpbb')->lang("ERROR");
        echo "\"
       data-l-timeout-processing-req=\"";
        // line 26
        echo $this->env->getExtension('phpbb')->lang("TIMEOUT_PROCESSING_REQ");
        echo "\">
    <a href=\"#\" class=\"alert_close\"></a>

    <h3 class=\"alert_title\">&nbsp;</h3>

    <p class=\"alert_text\"></p>
  </div>
  <div id=\"phpbb_confirm\" class=\"phpbb_alert\">
    <a href=\"#\" class=\"alert_close\"></a>

    <div class=\"alert_text\"></div>
  </div>
</div>

</div>

<div>
  <a id=\"bottom\" class=\"anchor\" accesskey=\"z\"></a>
  ";
        // line 44
        if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
            echo (isset($context["RUN_CRON_TASK"]) ? $context["RUN_CRON_TASK"] : null);
        }
        // line 45
        echo "</div>

<script type=\"text/javascript\" src=\"";
        // line 47
        echo (isset($context["T_JQUERY_LINK"]) ? $context["T_JQUERY_LINK"] : null);
        echo "\"></script>
";
        // line 48
        if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
            // line 49
            echo "<script
    type=\"text/javascript\">window.jQuery || document.write(unescape('%3Cscript src=\"";
            // line 50
            echo (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null);
            echo "/javascript/jquery.min.js?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" type=\"text/javascript\"%3E%3C/script%3E'));</script>";
        }
        // line 51
        echo "<script type=\"text/javascript\" src=\"";
        echo (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null);
        echo "/javascript/core.js?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\"></script>
";
        // line 52
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
        // line 53
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
        // line 54
        echo "
";
        // line 55
        $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
        $this->env->setNamespaceLookUpOrder(array('rmcgirr83_elonw', '__main__'));
        $this->env->loadTemplate('@rmcgirr83_elonw/event/overall_footer_after.html')->display($context);
        $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        // line 56
        echo "
";
        // line 57
        if ((isset($context["S_PLUPLOAD"]) ? $context["S_PLUPLOAD"] : null)) {
            $location = "plupload.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("plupload.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 58
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SCRIPTS");
        echo "

";
        // line 60
        // line 61
        echo "<!-- Piwik -->
<script type=\"text/javascript\">
  var _paq = _paq || [];
  _paq.push([\"setDocumentTitle\", document.domain + \"/\" + document.title]);
  _paq.push([\"setCookieDomain\", \"*.sublime-voyance.be\"]);
  _paq.push([\"setDomains\", [\"*.sublime-voyance.be\", \"*.alexandra.sublime-voyance.be\", \"*.forum.sublime-voyance.be\", \"*.shop.sublime-voyance.be\", \"*.top.sublime-voyance.be\"]]);
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function () {
    var u = \"//piwik.c57.fr/\";
    _paq.push(['setTrackerUrl', u + 'piwik.php']);
    _paq.push(['setSiteId', 2]);
    var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
    g.type = 'text/javascript';
    g.async = true;
    g.defer = true;
    g.src = u + 'piwik.js';
    s.parentNode.insertBefore(g, s);
  })();
</script>
<noscript><p><img src=\"//piwik.c57.fr/piwik.php?idsite=2\" style=\"border:0;\" alt=\"\"/></p></noscript>
<!-- End Piwik Code -->
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "overall_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  213 => 61,  152 => 52,  126 => 45,  122 => 44,  97 => 25,  83 => 19,  77 => 18,  73 => 16,  64 => 15,  56 => 13,  29 => 7,  24 => 4,  20 => 2,  372 => 101,  366 => 99,  363 => 98,  354 => 92,  351 => 91,  336 => 84,  318 => 81,  312 => 80,  309 => 79,  299 => 78,  295 => 76,  272 => 71,  247 => 65,  245 => 64,  237 => 60,  228 => 58,  214 => 54,  212 => 60,  206 => 51,  204 => 50,  198 => 49,  177 => 48,  162 => 44,  150 => 41,  129 => 37,  93 => 32,  92 => 31,  89 => 20,  80 => 26,  51 => 12,  44 => 12,  37 => 9,  27 => 3,  160 => 39,  153 => 42,  145 => 51,  138 => 39,  125 => 30,  112 => 28,  84 => 23,  68 => 21,  46 => 11,  38 => 9,  36 => 8,  30 => 4,  25 => 5,  406 => 109,  404 => 108,  401 => 107,  400 => 106,  397 => 105,  395 => 104,  388 => 102,  375 => 101,  373 => 100,  369 => 99,  360 => 98,  358 => 97,  348 => 90,  345 => 95,  343 => 87,  335 => 90,  332 => 89,  330 => 88,  322 => 86,  320 => 85,  311 => 84,  308 => 83,  304 => 81,  292 => 80,  242 => 64,  241 => 62,  217 => 55,  196 => 52,  193 => 57,  192 => 50,  183 => 48,  180 => 47,  169 => 46,  157 => 44,  142 => 34,  141 => 42,  135 => 38,  134 => 48,  127 => 34,  118 => 29,  110 => 32,  107 => 31,  105 => 26,  102 => 34,  88 => 25,  81 => 24,  74 => 22,  61 => 19,  50 => 16,  45 => 10,  43 => 13,  40 => 10,  39 => 11,  32 => 7,  26 => 6,  433 => 140,  430 => 139,  420 => 135,  416 => 111,  414 => 132,  408 => 128,  407 => 127,  403 => 125,  390 => 124,  389 => 103,  384 => 120,  376 => 103,  368 => 114,  362 => 97,  356 => 93,  352 => 111,  347 => 89,  344 => 88,  341 => 107,  340 => 86,  334 => 103,  329 => 101,  324 => 99,  313 => 97,  305 => 96,  293 => 86,  284 => 79,  280 => 73,  279 => 78,  274 => 79,  270 => 70,  261 => 72,  257 => 70,  248 => 68,  246 => 66,  243 => 66,  234 => 63,  232 => 61,  220 => 58,  215 => 57,  207 => 58,  190 => 56,  184 => 40,  182 => 54,  179 => 38,  176 => 37,  167 => 53,  158 => 45,  155 => 33,  148 => 31,  139 => 50,  136 => 49,  131 => 27,  124 => 26,  121 => 25,  111 => 36,  108 => 35,  98 => 33,  95 => 27,  85 => 28,  82 => 27,  69 => 21,  67 => 19,  52 => 15,  41 => 8,  35 => 7,  22 => 2,  301 => 74,  298 => 73,  297 => 77,  294 => 87,  289 => 68,  288 => 75,  277 => 66,  276 => 77,  271 => 78,  268 => 62,  266 => 74,  263 => 68,  258 => 71,  256 => 67,  230 => 55,  229 => 54,  224 => 60,  221 => 59,  219 => 56,  216 => 49,  211 => 46,  209 => 52,  200 => 50,  189 => 43,  188 => 42,  185 => 55,  173 => 47,  170 => 39,  168 => 38,  165 => 45,  164 => 36,  161 => 35,  154 => 31,  149 => 30,  143 => 28,  140 => 27,  132 => 38,  130 => 47,  123 => 23,  116 => 22,  101 => 26,  96 => 25,  94 => 18,  91 => 17,  90 => 16,  87 => 29,  75 => 14,  72 => 14,  71 => 20,  63 => 18,  60 => 8,  58 => 14,  57 => 17,  54 => 16,  48 => 15,  34 => 3,  31 => 6,  19 => 1,);
    }
}
