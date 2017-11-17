<?php

/* jumpbox.html */
class __TwigTemplate_beb4ae1095838b6b3dd894559852f215 extends Twig_Template
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
        echo "
";
        // line 2
        if ((isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null)) {
            // line 3
            echo "\t<p class=\"jumpbox-return\"><a href=\"";
            echo (isset($context["U_VIEW_FORUM"]) ? $context["U_VIEW_FORUM"] : null);
            echo "\" class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_FORUM");
            echo "</a></p>
";
        } elseif ((isset($context["S_VIEWFORUM"]) ? $context["S_VIEWFORUM"] : null)) {
            // line 5
            echo "\t<p class=\"jumpbox-return\"><a href=\"";
            echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
            echo "\" class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_INDEX");
            echo "</a></p>
";
        } elseif ((isset($context["SEARCH_TOPIC"]) ? $context["SEARCH_TOPIC"] : null)) {
            // line 7
            echo "\t<p class=\"jumpbox-return\"><a class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH_TOPIC"]) ? $context["U_SEARCH_TOPIC"] : null);
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_TOPIC");
            echo "</a></p>
";
        } elseif ((isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null)) {
            // line 9
            echo "\t<p class=\"jumpbox-return\"><a class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("GO_TO_SEARCH_ADV");
            echo "</a></p>
";
        }
        // line 11
        echo "
";
        // line 12
        if ((isset($context["S_DISPLAY_JUMPBOX"]) ? $context["S_DISPLAY_JUMPBOX"] : null)) {
            // line 13
            echo "
\t<div class=\"dropdown-container dropdown-container-";
            // line 14
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            if ((!(isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null))) {
                echo " dropdown-up";
            }
            echo " dropdown-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo " dropdown-button-control\" id=\"jumpbox\">
\t\t<span title=\"";
            // line 15
            if (((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null) && (isset($context["S_MERGE_SELECT"]) ? $context["S_MERGE_SELECT"] : null))) {
                echo $this->env->getExtension('phpbb')->lang("SELECT_TOPICS_FROM");
            } elseif ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATE_FORUM");
            } else {
                echo $this->env->getExtension('phpbb')->lang("JUMP_TO");
            }
            echo "\" class=\"dropdown-trigger button dropdown-select\">
\t\t\t";
            // line 16
            if (((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null) && (isset($context["S_MERGE_SELECT"]) ? $context["S_MERGE_SELECT"] : null))) {
                echo $this->env->getExtension('phpbb')->lang("SELECT_TOPICS_FROM");
            } elseif ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATE_FORUM");
            } else {
                echo $this->env->getExtension('phpbb')->lang("JUMP_TO");
            }
            // line 17
            echo "\t\t</span>
\t\t<div class=\"dropdown hidden\">
\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t<ul class=\"dropdown-contents\">
\t\t\t";
            // line 21
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "jumpbox_forums"));
            foreach ($context['_seq'] as $context["_key"] => $context["jumpbox_forums"]) {
                // line 22
                echo "\t\t\t\t";
                if (($this->getAttribute((isset($context["jumpbox_forums"]) ? $context["jumpbox_forums"] : null), "FORUM_ID") != (-1))) {
                    // line 23
                    echo "\t\t\t\t\t<li>";
                    $context['_parent'] = (array) $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["jumpbox_forums"]) ? $context["jumpbox_forums"] : null), "level"));
                    foreach ($context['_seq'] as $context["_key"] => $context["level"]) {
                        echo "&nbsp; &nbsp;";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['level'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    echo "<a href=\"";
                    echo $this->getAttribute((isset($context["jumpbox_forums"]) ? $context["jumpbox_forums"] : null), "LINK");
                    echo "\">";
                    echo $this->getAttribute((isset($context["jumpbox_forums"]) ? $context["jumpbox_forums"] : null), "FORUM_NAME");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 25
                echo "\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['jumpbox_forums'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 26
            echo "\t\t\t</ul>
\t\t</div>
\t</div>

";
        } else {
            // line 31
            echo "\t<br /><br />
";
        }
    }

    public function getTemplateName()
    {
        return "jumpbox.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  144 => 31,  137 => 26,  114 => 23,  111 => 22,  101 => 17,  93 => 16,  83 => 15,  74 => 14,  71 => 13,  66 => 11,  54 => 9,  44 => 7,  24 => 3,  22 => 2,  955 => 272,  952 => 271,  938 => 268,  934 => 267,  931 => 266,  929 => 265,  926 => 264,  920 => 261,  908 => 260,  905 => 259,  903 => 258,  900 => 257,  888 => 256,  885 => 255,  880 => 252,  874 => 250,  871 => 249,  858 => 248,  856 => 247,  851 => 246,  843 => 245,  839 => 243,  835 => 241,  834 => 240,  830 => 238,  824 => 237,  808 => 236,  805 => 235,  804 => 234,  801 => 233,  799 => 232,  796 => 231,  794 => 230,  791 => 229,  785 => 225,  780 => 223,  776 => 222,  770 => 221,  762 => 220,  760 => 219,  754 => 217,  752 => 216,  749 => 215,  738 => 210,  734 => 208,  731 => 207,  725 => 205,  719 => 201,  717 => 200,  699 => 195,  691 => 194,  685 => 193,  679 => 192,  675 => 190,  674 => 189,  670 => 187,  660 => 186,  651 => 185,  645 => 184,  640 => 183,  636 => 181,  631 => 178,  625 => 177,  615 => 175,  609 => 173,  601 => 172,  598 => 171,  594 => 170,  590 => 168,  588 => 167,  585 => 166,  582 => 165,  573 => 164,  570 => 163,  558 => 162,  544 => 161,  541 => 160,  539 => 159,  527 => 157,  518 => 156,  510 => 155,  495 => 154,  494 => 153,  491 => 152,  485 => 151,  474 => 150,  470 => 149,  450 => 148,  447 => 147,  438 => 141,  434 => 140,  430 => 139,  416 => 138,  405 => 133,  403 => 132,  400 => 131,  394 => 127,  392 => 126,  389 => 125,  384 => 124,  381 => 123,  377 => 121,  364 => 111,  359 => 109,  351 => 105,  345 => 104,  339 => 102,  333 => 99,  328 => 98,  311 => 94,  302 => 88,  299 => 87,  297 => 86,  290 => 82,  285 => 79,  283 => 78,  280 => 77,  274 => 73,  268 => 71,  265 => 70,  252 => 69,  250 => 68,  245 => 67,  237 => 66,  233 => 64,  225 => 59,  217 => 58,  211 => 57,  207 => 56,  202 => 54,  199 => 53,  197 => 52,  194 => 51,  190 => 49,  189 => 48,  185 => 46,  179 => 45,  163 => 44,  160 => 43,  159 => 42,  156 => 41,  154 => 40,  150 => 38,  148 => 37,  145 => 36,  131 => 25,  123 => 31,  120 => 30,  118 => 29,  116 => 28,  113 => 27,  107 => 21,  102 => 21,  97 => 20,  89 => 18,  87 => 17,  78 => 14,  76 => 13,  73 => 12,  69 => 12,  55 => 9,  49 => 8,  45 => 6,  43 => 5,  34 => 5,  31 => 2,  19 => 1,);
    }
}
