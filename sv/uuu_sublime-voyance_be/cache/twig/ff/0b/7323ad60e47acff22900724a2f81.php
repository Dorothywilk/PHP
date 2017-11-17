<?php

/* overall_header.html */
class __TwigTemplate_ff0b7323ad60e47acff22900724a2f81 extends Twig_Template
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
  <meta charset=\"utf-8\"/>
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"/>
  ";
        // line 6
        echo (isset($context["META"]) ? $context["META"] : null);
        echo "
  <title>";
        // line 7
        if ((isset($context["UNREAD_NOTIFICATIONS_COUNT"]) ? $context["UNREAD_NOTIFICATIONS_COUNT"] : null)) {
            echo "(";
            echo (isset($context["UNREAD_NOTIFICATIONS_COUNT"]) ? $context["UNREAD_NOTIFICATIONS_COUNT"] : null);
            echo ") ";
        }
        // line 8
        echo "    ";
        if (((!(isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null)) && (!(isset($context["S_VIEWFORUM"]) ? $context["S_VIEWFORUM"] : null)))) {
            echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
            echo " - ";
        }
        if ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("MCP");
            echo " -
    ";
        } elseif ((isset($context["S_IN_UCP"]) ? $context["S_IN_UCP"] : null)) {
            // line 9
            echo $this->env->getExtension('phpbb')->lang("UCP");
            echo " - ";
        }
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        if (((isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null) || (isset($context["S_VIEWFORUM"]) ? $context["S_VIEWFORUM"] : null))) {
            echo " - ";
            echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
            echo "
    ";
        }
        // line 10
        echo "</title>

  ";
        // line 12
        if ((isset($context["S_ENABLE_FEEDS"]) ? $context["S_ENABLE_FEEDS"] : null)) {
            // line 13
            echo "  ";
            if ((isset($context["S_ENABLE_FEEDS_OVERALL"]) ? $context["S_ENABLE_FEEDS_OVERALL"] : null)) {
                // line 14
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "\"/>
  ";
            }
            // line 16
            echo "  ";
            if ((isset($context["S_ENABLE_FEEDS_NEWS"]) ? $context["S_ENABLE_FEEDS_NEWS"] : null)) {
                // line 17
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FEED_NEWS");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=news\"/>
  ";
            }
            // line 19
            echo "  ";
            if ((isset($context["S_ENABLE_FEEDS_FORUMS"]) ? $context["S_ENABLE_FEEDS_FORUMS"] : null)) {
                // line 20
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("ALL_FORUMS");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=forums\"/>
  ";
            }
            // line 22
            echo "  ";
            if ((isset($context["S_ENABLE_FEEDS_TOPICS"]) ? $context["S_ENABLE_FEEDS_TOPICS"] : null)) {
                // line 23
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FEED_TOPICS_NEW");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=topics\"/>
  ";
            }
            // line 25
            echo "  ";
            if ((isset($context["S_ENABLE_FEEDS_TOPICS_ACTIVE"]) ? $context["S_ENABLE_FEEDS_TOPICS_ACTIVE"] : null)) {
                // line 26
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FEED_TOPICS_ACTIVE");
                echo "\"
        href=\"";
                // line 27
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=topics_active\"/>
  ";
            }
            // line 29
            echo "  ";
            if (((isset($context["S_ENABLE_FEEDS_FORUM"]) ? $context["S_ENABLE_FEEDS_FORUM"] : null) && (isset($context["S_FORUM_ID"]) ? $context["S_FORUM_ID"] : null))) {
                // line 30
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FORUM");
                echo " - ";
                echo (isset($context["FORUM_NAME"]) ? $context["FORUM_NAME"] : null);
                echo "\"
        href=\"";
                // line 31
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?f=";
                echo (isset($context["S_FORUM_ID"]) ? $context["S_FORUM_ID"] : null);
                echo "\"/>
  ";
            }
            // line 33
            echo "  ";
            if (((isset($context["S_ENABLE_FEEDS_TOPIC"]) ? $context["S_ENABLE_FEEDS_TOPIC"] : null) && (isset($context["S_TOPIC_ID"]) ? $context["S_TOPIC_ID"] : null))) {
                // line 34
                echo "  <link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("TOPIC");
                echo " - ";
                echo (isset($context["TOPIC_TITLE"]) ? $context["TOPIC_TITLE"] : null);
                echo "\"
        href=\"";
                // line 35
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?f=";
                echo (isset($context["S_FORUM_ID"]) ? $context["S_FORUM_ID"] : null);
                echo "&amp;t=";
                echo (isset($context["S_TOPIC_ID"]) ? $context["S_TOPIC_ID"] : null);
                echo "\"/>
  ";
            }
            // line 37
            echo "  ";
        }
        // line 38
        echo "
  ";
        // line 39
        if ((isset($context["U_CANONICAL"]) ? $context["U_CANONICAL"] : null)) {
            // line 40
            echo "  <link rel=\"canonical\" href=\"";
            echo (isset($context["U_CANONICAL"]) ? $context["U_CANONICAL"] : null);
            echo "\"/>
  ";
        }
        // line 42
        echo "
  <!--
    phpBB style name: prosilver
    Based on style:   prosilver (this is the default phpBB3 style)
    Original author:  Tom Beddard ( http://www.subBlue.com/ )
    Modified by:
  -->

  <link href=\"";
        // line 50
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/print.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"print\"
        title=\"printonly\"/>
  ";
        // line 52
        if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
            // line 53
            echo "  <link
      href=\"//fonts.googleapis.com/css?family=Open+Sans:600&amp;subset=latin,cyrillic-ext,latin-ext,cyrillic,greek-ext,greek,vietnamese\"
      rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\"/>
  ";
        }
        // line 57
        echo "  <link href=\"";
        echo (isset($context["T_STYLESHEET_LINK"]) ? $context["T_STYLESHEET_LINK"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\"/>
  <link href=\"";
        // line 58
        echo (isset($context["T_STYLESHEET_LANG_LINK"]) ? $context["T_STYLESHEET_LANG_LINK"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\" media=\"screen, projection\"/>
  <link href=\"";
        // line 59
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/responsive.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\"
        media=\"only screen and (max-width: 700px), only screen and (max-device-width: 700px)\"/>

  ";
        // line 62
        if (((isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null) == "rtl")) {
            // line 63
            echo "  <link href=\"";
            echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
            echo "/bidi.css?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" rel=\"stylesheet\" type=\"text/css\"
        media=\"screen, projection\"/>
  ";
        }
        // line 66
        echo "
  ";
        // line 67
        if ((isset($context["S_PLUPLOAD"]) ? $context["S_PLUPLOAD"] : null)) {
            // line 68
            echo "  <link href=\"";
            echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
            echo "/plupload.css?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" rel=\"stylesheet\" type=\"text/css\"
        media=\"screen, projection\"/>
  ";
        }
        // line 71
        echo "
  <!--[if lte IE 9]>
  <link href=\"";
        // line 73
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/tweaks.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\" type=\"text/css\"
        media=\"screen, projection\"/>
  <![endif]-->

  ";
        // line 77
        // line 78
        echo "
  ";
        // line 79
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "STYLESHEETS");
        echo "

  ";
        // line 81
        // line 82
        echo "
</head>
<body id=\"phpbb\" class=\"nojs notouch section-";
        // line 84
        echo (isset($context["SCRIPT_NAME"]) ? $context["SCRIPT_NAME"] : null);
        echo " ";
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo " ";
        echo (isset($context["BODY_CLASS"]) ? $context["BODY_CLASS"] : null);
        echo "\">

";
        // line 86
        // line 87
        echo "
<div id=\"wrap\">
  <a id=\"top\" class=\"anchor\" accesskey=\"t\"></a>

  <div id=\"page-header\">
    <div class=\"headerbar\" role=\"banner\">
      <div class=\"inner\">

        <div id=\"site-description\">
          <a id=\"logo\" class=\"logo\" href=\"";
        // line 96
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo (isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null);
        } else {
            echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        }
        echo "\"
             title=\"";
        // line 97
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("SITE_HOME");
        } else {
            echo $this->env->getExtension('phpbb')->lang("INDEX");
        }
        echo "\">";
        echo (isset($context["SITE_LOGO_IMG"]) ? $context["SITE_LOGO_IMG"] : null);
        echo "</a>

          <h1><a href=\"http://Forum.Sublime-Voyance.be\">";
        // line 99
        echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
        echo "</a></h1>

          <p>";
        // line 101
        echo (isset($context["SITE_DESCRIPTION"]) ? $context["SITE_DESCRIPTION"] : null);
        echo "</p>

          <p class=\"skiplink\"><a href=\"#start_here\">";
        // line 103
        echo $this->env->getExtension('phpbb')->lang("SKIP");
        echo "</a></p>
        </div>

        ";
        // line 106
        // line 107
        echo "        ";
        if (((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null) && (!(isset($context["S_IN_SEARCH"]) ? $context["S_IN_SEARCH"] : null)))) {
            // line 108
            echo "        <div id=\"search-box\" class=\"search-box search-header\" role=\"search\">
          <form action=\"";
            // line 109
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" method=\"get\" id=\"search\">
            <fieldset>
              <input name=\"keywords\" id=\"keywords\" type=\"search\" maxlength=\"128\" title=\"";
            // line 111
            echo $this->env->getExtension('phpbb')->lang("SEARCH_KEYWORDS");
            echo "\"
                     class=\"inputbox search tiny\" size=\"20\" value=\"";
            // line 112
            echo (isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null);
            echo "\" placeholder=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_MINI");
            echo "\"/>
              <button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
            // line 113
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</button>
              <a href=\"";
            // line 114
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" class=\"button icon-button search-adv-icon\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "</a>
              ";
            // line 115
            echo (isset($context["S_SEARCH_HIDDEN_FIELDS"]) ? $context["S_SEARCH_HIDDEN_FIELDS"] : null);
            echo "
            </fieldset>
          </form>
        </div>
        ";
        }
        // line 120
        echo "
      </div>
    </div>
    ";
        // line 123
        // line 124
        echo "    ";
        $location = "navbar_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("navbar_header.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 125
        echo "  </div>

  ";
        // line 127
        // line 128
        echo "
  <a id=\"start_here\" class=\"anchor\"></a>

  <div id=\"page-body\" role=\"main\">
    ";
        // line 132
        if ((((isset($context["S_BOARD_DISABLED"]) ? $context["S_BOARD_DISABLED"] : null) && (isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) && ((isset($context["U_MCP"]) ? $context["U_MCP"] : null) || (isset($context["U_ACP"]) ? $context["U_ACP"] : null)))) {
            // line 133
            echo "    <div id=\"information\" class=\"rules\">
      <div class=\"inner\">
        <strong>";
            // line 135
            echo $this->env->getExtension('phpbb')->lang("INFORMATION");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</strong> ";
            echo $this->env->getExtension('phpbb')->lang("BOARD_DISABLED");
            echo "
      </div>
    </div>
    ";
        }
        // line 139
        echo "
    ";
        // line 140
    }

    public function getTemplateName()
    {
        return "overall_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  433 => 140,  430 => 139,  420 => 135,  416 => 133,  414 => 132,  408 => 128,  407 => 127,  403 => 125,  390 => 124,  389 => 123,  384 => 120,  376 => 115,  368 => 114,  362 => 113,  356 => 112,  352 => 111,  347 => 109,  344 => 108,  341 => 107,  340 => 106,  334 => 103,  329 => 101,  324 => 99,  313 => 97,  305 => 96,  293 => 86,  284 => 84,  280 => 82,  279 => 81,  274 => 79,  270 => 77,  261 => 73,  257 => 71,  248 => 68,  246 => 67,  243 => 66,  234 => 63,  232 => 62,  220 => 58,  215 => 57,  207 => 52,  190 => 42,  184 => 40,  182 => 39,  179 => 38,  176 => 37,  167 => 35,  158 => 34,  155 => 33,  148 => 31,  139 => 30,  136 => 29,  131 => 27,  124 => 26,  121 => 25,  111 => 23,  108 => 22,  98 => 20,  95 => 19,  85 => 17,  82 => 16,  69 => 13,  67 => 12,  52 => 9,  41 => 8,  35 => 7,  22 => 2,  301 => 74,  298 => 73,  297 => 72,  294 => 87,  289 => 68,  288 => 67,  277 => 66,  276 => 65,  271 => 78,  268 => 62,  266 => 61,  263 => 60,  258 => 57,  256 => 56,  230 => 55,  229 => 54,  224 => 59,  221 => 51,  219 => 50,  216 => 49,  211 => 46,  209 => 53,  200 => 50,  189 => 43,  188 => 42,  185 => 41,  173 => 40,  170 => 39,  168 => 38,  165 => 37,  164 => 36,  161 => 35,  154 => 31,  149 => 30,  143 => 28,  140 => 27,  132 => 25,  130 => 24,  123 => 23,  116 => 22,  101 => 20,  96 => 19,  94 => 18,  91 => 17,  90 => 16,  87 => 15,  75 => 14,  72 => 14,  71 => 12,  63 => 10,  60 => 8,  58 => 7,  57 => 6,  54 => 5,  48 => 4,  34 => 3,  31 => 6,  19 => 1,);
    }
}
