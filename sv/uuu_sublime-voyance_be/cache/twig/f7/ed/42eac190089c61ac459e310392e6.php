<?php

/* overall_footer.html */
class __TwigTemplate_f7ed42eac190089c61ac459e310392e6 extends Twig_Template
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
        return array (  213 => 61,  212 => 60,  152 => 52,  145 => 51,  126 => 45,  122 => 44,  101 => 26,  97 => 25,  89 => 20,  83 => 19,  73 => 16,  64 => 15,  56 => 13,  51 => 12,  46 => 11,  29 => 7,  25 => 5,  24 => 4,  20 => 2,  406 => 109,  404 => 108,  401 => 107,  400 => 106,  397 => 105,  395 => 104,  388 => 102,  375 => 101,  373 => 100,  369 => 99,  360 => 98,  358 => 97,  348 => 96,  345 => 95,  343 => 94,  335 => 90,  332 => 89,  330 => 88,  322 => 86,  320 => 85,  311 => 84,  308 => 83,  304 => 81,  292 => 80,  276 => 77,  266 => 74,  263 => 73,  258 => 71,  242 => 64,  241 => 63,  221 => 59,  217 => 57,  196 => 52,  193 => 57,  192 => 50,  185 => 55,  183 => 48,  180 => 47,  169 => 46,  157 => 44,  142 => 43,  141 => 42,  135 => 38,  134 => 48,  130 => 47,  127 => 34,  118 => 33,  110 => 32,  107 => 31,  105 => 30,  102 => 29,  88 => 25,  81 => 24,  74 => 22,  61 => 19,  50 => 16,  48 => 15,  45 => 10,  43 => 13,  40 => 12,  39 => 11,  32 => 7,  26 => 6,  433 => 140,  430 => 139,  420 => 135,  416 => 111,  414 => 132,  408 => 128,  407 => 127,  403 => 125,  390 => 124,  389 => 103,  384 => 120,  376 => 115,  368 => 114,  362 => 113,  356 => 112,  352 => 111,  347 => 109,  344 => 108,  341 => 107,  340 => 93,  334 => 103,  329 => 101,  324 => 99,  313 => 97,  305 => 96,  294 => 87,  293 => 86,  284 => 79,  280 => 82,  279 => 78,  274 => 79,  271 => 78,  270 => 77,  261 => 72,  257 => 70,  248 => 68,  246 => 66,  243 => 66,  234 => 63,  232 => 61,  224 => 60,  220 => 58,  215 => 57,  209 => 56,  207 => 58,  200 => 50,  190 => 56,  184 => 40,  182 => 54,  179 => 38,  176 => 37,  167 => 53,  158 => 45,  155 => 33,  148 => 31,  139 => 50,  136 => 49,  131 => 27,  124 => 26,  121 => 25,  111 => 23,  108 => 22,  98 => 20,  95 => 27,  85 => 17,  82 => 16,  69 => 21,  67 => 12,  63 => 10,  52 => 9,  41 => 8,  31 => 6,  22 => 2,  93 => 18,  79 => 16,  77 => 18,  72 => 14,  62 => 11,  58 => 14,  54 => 9,  49 => 6,  35 => 7,  21 => 2,  19 => 1,);
    }
}
