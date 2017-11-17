<?php

/* ucp_main_front.html */
class __TwigTemplate_2d1382c0891c51416265e8d4d8b36736 extends Twig_Template
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
        $location = "ucp_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("ucp_header.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<h2>";
        // line 3
        echo $this->env->getExtension('phpbb')->lang("TITLE");
        echo "</h2>

<div class=\"panel\">
\t<div class=\"inner\">

\t<p>";
        // line 8
        echo $this->env->getExtension('phpbb')->lang("UCP_WELCOME");
        echo "</p>

";
        // line 10
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow"))) {
            // line 11
            echo "\t<h3>";
            echo $this->env->getExtension('phpbb')->lang("IMPORTANT_NEWS");
            echo "</h3>

\t<ul class=\"topiclist cplist two-long-columns\">
\t";
            // line 14
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow"));
            foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
                // line 15
                echo "\t\t<li class=\"row";
                if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_ROW_COUNT") % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl class=\"icon ";
                // line 16
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_IMG_STYLE");
                echo "\">
\t\t\t\t<dt ";
                // line 17
                if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_ICON_IMG")) {
                    echo "style=\"background-image: url(";
                    echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_ICON_IMG");
                    echo "); background-repeat: no-repeat;\"";
                }
                echo ">
\t\t\t\t\t";
                // line 18
                if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_UNREAD_TOPIC")) {
                    echo "<a href=\"";
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_NEWEST_POST");
                    echo "\" class=\"icon-link\"></a>";
                }
                // line 19
                echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
                // line 20
                if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_UNREAD")) {
                    echo "<a href=\"";
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_NEWEST_POST");
                    echo "\">";
                    echo (isset($context["NEWEST_POST_IMG"]) ? $context["NEWEST_POST_IMG"] : null);
                    echo "</a> ";
                }
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_VIEW_TOPIC");
                echo "\" class=\"topictitle\">";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_TITLE");
                echo "</a><br />
\t\t\t\t\t\t";
                // line 21
                if (twig_length_filter($this->env, $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "pagination"))) {
                    // line 22
                    echo "\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                    // line 24
                    $context['_parent'] = (array) $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "pagination"));
                    foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                        // line 25
                        echo "\t\t\t\t\t\t\t\t";
                        if ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_PREV")) {
                            // line 26
                            echo "\t\t\t\t\t\t\t\t";
                        } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_CURRENT")) {
                            echo "<li class=\"active\"><span>";
                            echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_NUMBER");
                            echo "</span></li>
\t\t\t\t\t\t\t\t";
                        } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_ELLIPSIS")) {
                            // line 27
                            echo "<li class=\"ellipsis\"><span>";
                            echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                            echo "</span></li>
\t\t\t\t\t\t\t\t";
                        } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_NEXT")) {
                            // line 29
                            echo "\t\t\t\t\t\t\t\t";
                        } else {
                            echo "<li><a href=\"";
                            echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_URL");
                            echo "\">";
                            echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_NUMBER");
                            echo "</a></li>
\t\t\t\t\t\t\t\t";
                        }
                        // line 31
                        echo "\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 32
                    echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 35
                echo "\t\t\t\t\t\t<div class=\"responsive-hide\">
\t\t\t\t\t\t\t";
                // line 36
                if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "ATTACH_ICON_IMG")) {
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "ATTACH_ICON_IMG");
                    echo " ";
                }
                // line 37
                echo "\t\t\t\t\t\t\t";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_AUTHOR_FULL");
                echo " &raquo; ";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "FIRST_POST_TIME");
                echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                // line 40
                if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "ATTACH_ICON_IMG")) {
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "ATTACH_ICON_IMG");
                    echo " ";
                }
                // line 41
                echo "\t\t\t\t\t\t\t";
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo " ";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "LAST_POST_AUTHOR_FULL");
                echo " &laquo; <a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_LAST_POST");
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "LAST_POST_TIME");
                echo "</a>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 45
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo " ";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "LAST_POST_AUTHOR_FULL");
                echo "
\t\t\t\t\t<a href=\"";
                // line 46
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_LAST_POST");
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                echo "</a> <br />";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "LAST_POST_TIME");
                echo "</span>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t</li>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 51
            echo "\t</ul>
";
        }
        // line 53
        echo "
\t<h3>";
        // line 54
        echo $this->env->getExtension('phpbb')->lang("YOUR_DETAILS");
        echo "</h3>

\t<dl class=\"details\">
\t\t<dt>";
        // line 57
        echo $this->env->getExtension('phpbb')->lang("JOINED");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt> <dd>";
        echo (isset($context["JOINED"]) ? $context["JOINED"] : null);
        echo "</dd>
\t\t<dt>";
        // line 58
        echo $this->env->getExtension('phpbb')->lang("LAST_ACTIVE");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt> <dd>";
        echo (isset($context["LAST_VISIT_YOU"]) ? $context["LAST_VISIT_YOU"] : null);
        echo "</dd>
\t\t<dt>";
        // line 59
        echo $this->env->getExtension('phpbb')->lang("TOTAL_POSTS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt> <dd>";
        if ((isset($context["POSTS_PCT"]) ? $context["POSTS_PCT"] : null)) {
            echo (isset($context["POSTS"]) ? $context["POSTS"] : null);
            if ((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
                echo " | <strong><a href=\"";
                echo (isset($context["U_SEARCH_USER"]) ? $context["U_SEARCH_USER"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_YOUR_POSTS");
                echo "</a></strong>";
            }
            echo "<br />(";
            echo (isset($context["POSTS_DAY"]) ? $context["POSTS_DAY"] : null);
            echo " / ";
            echo (isset($context["POSTS_PCT"]) ? $context["POSTS_PCT"] : null);
            echo ")";
        } else {
            echo (isset($context["POSTS"]) ? $context["POSTS"] : null);
        }
        echo "</dd>
\t\t";
        // line 60
        if (((isset($context["ACTIVE_FORUM"]) ? $context["ACTIVE_FORUM"] : null) != "")) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("ACTIVE_IN_FORUM");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd><strong><a href=\"";
            echo (isset($context["U_ACTIVE_FORUM"]) ? $context["U_ACTIVE_FORUM"] : null);
            echo "\">";
            echo (isset($context["ACTIVE_FORUM"]) ? $context["ACTIVE_FORUM"] : null);
            echo "</a></strong><br />(";
            echo (isset($context["ACTIVE_FORUM_POSTS"]) ? $context["ACTIVE_FORUM_POSTS"] : null);
            echo " / ";
            echo (isset($context["ACTIVE_FORUM_PCT"]) ? $context["ACTIVE_FORUM_PCT"] : null);
            echo ")</dd>";
        }
        // line 61
        echo "\t\t";
        if (((isset($context["ACTIVE_TOPIC"]) ? $context["ACTIVE_TOPIC"] : null) != "")) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("ACTIVE_IN_TOPIC");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd><strong><a href=\"";
            echo (isset($context["U_ACTIVE_TOPIC"]) ? $context["U_ACTIVE_TOPIC"] : null);
            echo "\">";
            echo (isset($context["ACTIVE_TOPIC"]) ? $context["ACTIVE_TOPIC"] : null);
            echo "</a></strong><br />(";
            echo (isset($context["ACTIVE_TOPIC_POSTS"]) ? $context["ACTIVE_TOPIC_POSTS"] : null);
            echo " / ";
            echo (isset($context["ACTIVE_TOPIC_PCT"]) ? $context["ACTIVE_TOPIC_PCT"] : null);
            echo ")</dd>";
        }
        // line 62
        echo "\t\t";
        if ((isset($context["WARNINGS"]) ? $context["WARNINGS"] : null)) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("YOUR_WARNINGS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd class=\"error\">";
            echo (isset($context["WARNING_IMG"]) ? $context["WARNING_IMG"] : null);
            echo " [";
            echo (isset($context["WARNINGS"]) ? $context["WARNINGS"] : null);
            echo "]</dd>";
        }
        // line 63
        echo "\t</dl>

\t</div>
</div>

";
        // line 68
        $location = "ucp_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("ucp_footer.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "ucp_main_front.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  320 => 68,  313 => 63,  301 => 62,  285 => 61,  270 => 60,  247 => 59,  240 => 58,  233 => 57,  227 => 54,  224 => 53,  220 => 51,  203 => 46,  195 => 45,  177 => 41,  172 => 40,  161 => 37,  156 => 36,  153 => 35,  148 => 32,  142 => 31,  132 => 29,  126 => 27,  118 => 26,  115 => 25,  111 => 24,  107 => 22,  105 => 21,  91 => 20,  88 => 19,  82 => 18,  73 => 17,  69 => 16,  60 => 15,  56 => 14,  49 => 11,  47 => 10,  42 => 8,  34 => 3,  31 => 2,  19 => 1,);
    }
}
