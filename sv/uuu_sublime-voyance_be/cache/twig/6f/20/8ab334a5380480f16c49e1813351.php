<?php

/* memberlist_search.html */
class __TwigTemplate_6f208ab334a5380480f16c49e1813351 extends Twig_Template
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
        echo "<h2 class=\"solo\">";
        echo $this->env->getExtension('phpbb')->lang("FIND_USERNAME");
        echo "</h2>

<form method=\"post\" action=\"";
        // line 3
        echo (isset($context["S_MODE_ACTION"]) ? $context["S_MODE_ACTION"] : null);
        echo "\" id=\"search_memberlist\">
<div class=\"panel\">
\t<div class=\"inner\">

\t<p>";
        // line 7
        echo $this->env->getExtension('phpbb')->lang("FIND_USERNAME_EXPLAIN");
        echo "</p>

\t";
        // line 9
        // line 10
        echo "\t<fieldset class=\"fields1 column1\">
\t<dl style=\"overflow: visible;\">
\t\t<dt><label for=\"username\">";
        // line 12
        echo $this->env->getExtension('phpbb')->lang("USERNAME");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd>
\t\t\t";
        // line 14
        if ((isset($context["U_LIVE_SEARCH"]) ? $context["U_LIVE_SEARCH"] : null)) {
            echo "<div class=\"dropdown-container dropdown-";
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            echo "\">";
        }
        // line 15
        echo "\t\t\t<input type=\"text\" name=\"username\" id=\"username\" value=\"";
        echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
        echo "\" class=\"inputbox\"";
        if ((isset($context["U_LIVE_SEARCH"]) ? $context["U_LIVE_SEARCH"] : null)) {
            echo " autocomplete=\"off\" data-filter=\"phpbb.search.filter\" data-ajax=\"member_search\" data-min-length=\"3\" data-url=\"";
            echo (isset($context["U_LIVE_SEARCH"]) ? $context["U_LIVE_SEARCH"] : null);
            echo "\" data-results=\"#user-search\" data-overlay=\"false\"";
        }
        echo " />
\t\t\t";
        // line 16
        if ((isset($context["U_LIVE_SEARCH"]) ? $context["U_LIVE_SEARCH"] : null)) {
            // line 17
            echo "\t\t\t\t<div class=\"dropdown live-search hidden\" id=\"user-search\">
\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t<ul class=\"dropdown-contents search-results\">
\t\t\t\t\t\t<li class=\"search-result-tpl\"><span class=\"search-result\"></span></li>
\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
        }
        // line 25
        echo "\t\t</dd>
\t</dl>
";
        // line 27
        if ((isset($context["S_EMAIL_SEARCH_ALLOWED"]) ? $context["S_EMAIL_SEARCH_ALLOWED"] : null)) {
            // line 28
            echo "\t<dl>
\t\t<dt><label for=\"email\">";
            // line 29
            echo $this->env->getExtension('phpbb')->lang("EMAIL");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t<dd><input type=\"text\" name=\"email\" id=\"email\" value=\"";
            // line 30
            echo (isset($context["EMAIL"]) ? $context["EMAIL"] : null);
            echo "\" class=\"inputbox\" /></dd>
\t</dl>
";
        }
        // line 33
        if ((isset($context["S_JABBER_ENABLED"]) ? $context["S_JABBER_ENABLED"] : null)) {
            // line 34
            echo "\t<dl>
\t\t<dt><label for=\"jabber\">";
            // line 35
            echo $this->env->getExtension('phpbb')->lang("JABBER");
            echo ":</label></dt>
\t\t<dd><input type=\"text\" name=\"jabber\" id=\"jabber\" value=\"";
            // line 36
            echo (isset($context["JABBER"]) ? $context["JABBER"] : null);
            echo "\" class=\"inputbox\" /></dd>
\t</dl>
";
        }
        // line 39
        echo "\t<dl>
\t\t<dt><label for=\"search_group_id\">";
        // line 40
        echo $this->env->getExtension('phpbb')->lang("GROUP");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><select name=\"search_group_id\" id=\"search_group_id\">";
        // line 41
        echo (isset($context["S_GROUP_SELECT"]) ? $context["S_GROUP_SELECT"] : null);
        echo "</select></dd>
\t</dl>
\t";
        // line 43
        // line 44
        echo "\t<dl>
\t\t<dt><label for=\"sk\" class=\"label3\">";
        // line 45
        echo $this->env->getExtension('phpbb')->lang("SORT_BY");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><select name=\"sk\" id=\"sk\">";
        // line 46
        echo (isset($context["S_SORT_OPTIONS"]) ? $context["S_SORT_OPTIONS"] : null);
        echo "</select> <select name=\"sd\">";
        echo (isset($context["S_ORDER_SELECT"]) ? $context["S_ORDER_SELECT"] : null);
        echo "</select></dd>
\t</dl>
\t</fieldset>

\t<fieldset class=\"fields1 column2\">
\t<dl>
\t\t<dt><label for=\"joined\">";
        // line 52
        echo $this->env->getExtension('phpbb')->lang("JOINED");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><select name=\"joined_select\">";
        // line 53
        echo (isset($context["S_JOINED_TIME_OPTIONS"]) ? $context["S_JOINED_TIME_OPTIONS"] : null);
        echo "</select> <input class=\"inputbox medium\" type=\"text\" name=\"joined\" id=\"joined\" value=\"";
        echo (isset($context["JOINED"]) ? $context["JOINED"] : null);
        echo "\" /></dd>
\t</dl>
";
        // line 55
        if ((isset($context["S_VIEWONLINE"]) ? $context["S_VIEWONLINE"] : null)) {
            // line 56
            echo "\t<dl>
\t\t<dt><label for=\"active\">";
            // line 57
            echo $this->env->getExtension('phpbb')->lang("LAST_ACTIVE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t<dd><select name=\"active_select\">";
            // line 58
            echo (isset($context["S_ACTIVE_TIME_OPTIONS"]) ? $context["S_ACTIVE_TIME_OPTIONS"] : null);
            echo "</select> <input class=\"inputbox medium\" type=\"text\" name=\"active\" id=\"active\" value=\"";
            echo (isset($context["ACTIVE"]) ? $context["ACTIVE"] : null);
            echo "\" /></dd>
\t</dl>
";
        }
        // line 61
        echo "\t<dl>
\t\t<dt><label for=\"count\">";
        // line 62
        echo $this->env->getExtension('phpbb')->lang("POSTS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><select name=\"count_select\">";
        // line 63
        echo (isset($context["S_COUNT_OPTIONS"]) ? $context["S_COUNT_OPTIONS"] : null);
        echo "</select> <input class=\"inputbox medium\" type=\"number\" min=\"0\" name=\"count\" id=\"count\" value=\"";
        echo (isset($context["COUNT"]) ? $context["COUNT"] : null);
        echo "\" /></dd>
\t</dl>
";
        // line 65
        if ((isset($context["S_IP_SEARCH_ALLOWED"]) ? $context["S_IP_SEARCH_ALLOWED"] : null)) {
            // line 66
            echo "\t<dl>
\t\t<dt><label for=\"ip\">";
            // line 67
            echo $this->env->getExtension('phpbb')->lang("POST_IP");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t<dd><input class=\"inputbox medium\" type=\"text\" name=\"ip\" id=\"ip\" value=\"";
            // line 68
            echo (isset($context["IP"]) ? $context["IP"] : null);
            echo "\" /></dd>
\t</dl>
";
        }
        // line 71
        echo "\t";
        // line 72
        echo "\t</fieldset>

\t<div class=\"clear\"></div>

\t<hr />

\t<fieldset class=\"submit-buttons\">
\t\t<input type=\"reset\" value=\"";
        // line 79
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" name=\"reset\" class=\"button2\" />&nbsp;
\t\t<input type=\"submit\" name=\"submit\" value=\"";
        // line 80
        echo $this->env->getExtension('phpbb')->lang("SEARCH");
        echo "\" class=\"button1\" />
\t\t";
        // line 81
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
\t</fieldset>

\t</div>
</div>

</form>
";
    }

    public function getTemplateName()
    {
        return "memberlist_search.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  225 => 81,  221 => 80,  217 => 79,  208 => 72,  200 => 68,  195 => 67,  190 => 65,  183 => 63,  178 => 62,  175 => 61,  167 => 58,  162 => 57,  159 => 56,  157 => 55,  150 => 53,  145 => 52,  134 => 46,  129 => 45,  120 => 41,  106 => 36,  91 => 30,  86 => 29,  83 => 28,  81 => 27,  67 => 17,  65 => 16,  54 => 15,  48 => 14,  42 => 12,  38 => 10,  37 => 9,  32 => 7,  25 => 3,  125 => 43,  118 => 33,  113 => 30,  112 => 39,  107 => 27,  103 => 25,  100 => 24,  97 => 33,  89 => 20,  85 => 18,  77 => 25,  75 => 15,  68 => 13,  64 => 12,  59 => 11,  55 => 10,  49 => 9,  35 => 7,  31 => 6,  22 => 2,  703 => 159,  690 => 158,  676 => 156,  674 => 155,  669 => 152,  664 => 150,  659 => 149,  647 => 148,  643 => 147,  639 => 146,  632 => 141,  626 => 138,  620 => 137,  613 => 136,  610 => 135,  608 => 134,  605 => 133,  600 => 131,  597 => 130,  595 => 129,  592 => 128,  584 => 125,  580 => 124,  577 => 123,  575 => 122,  567 => 116,  552 => 113,  549 => 112,  543 => 110,  537 => 109,  533 => 108,  515 => 107,  501 => 106,  476 => 105,  468 => 104,  465 => 103,  462 => 102,  459 => 101,  456 => 100,  451 => 97,  448 => 96,  442 => 95,  438 => 94,  423 => 93,  419 => 92,  414 => 91,  411 => 90,  403 => 89,  397 => 88,  382 => 87,  376 => 86,  357 => 85,  355 => 84,  347 => 78,  339 => 72,  337 => 71,  327 => 68,  324 => 67,  321 => 66,  318 => 65,  315 => 64,  309 => 63,  303 => 59,  295 => 58,  289 => 57,  274 => 56,  268 => 55,  246 => 54,  238 => 48,  236 => 47,  233 => 46,  228 => 43,  223 => 41,  218 => 40,  206 => 71,  202 => 38,  198 => 37,  192 => 66,  181 => 31,  177 => 30,  174 => 29,  156 => 28,  140 => 24,  136 => 22,  131 => 21,  126 => 44,  122 => 19,  115 => 40,  104 => 26,  102 => 35,  99 => 34,  93 => 11,  90 => 10,  78 => 9,  71 => 8,  58 => 7,  47 => 4,  34 => 3,  21 => 2,  19 => 1,);
    }
}
