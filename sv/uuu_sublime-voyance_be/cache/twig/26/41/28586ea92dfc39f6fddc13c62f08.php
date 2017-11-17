<?php

/* mcp_queue.html */
class __TwigTemplate_264128586ea92dfc39f6fddc13c62f08 extends Twig_Template
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
        $location = "mcp_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("mcp_header.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<form id=\"mcp\" method=\"post\" action=\"";
        // line 3
        echo (isset($context["S_MCP_ACTION"]) ? $context["S_MCP_ACTION"] : null);
        echo "\">

<fieldset class=\"forum-selection\">
\t<label for=\"fo\">";
        // line 6
        echo $this->env->getExtension('phpbb')->lang("FORUM");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo " <select name=\"f\" id=\"fo\">";
        echo (isset($context["S_FORUM_OPTIONS"]) ? $context["S_FORUM_OPTIONS"] : null);
        echo "</select></label>
\t<input type=\"submit\" name=\"sort\" value=\"";
        // line 7
        echo $this->env->getExtension('phpbb')->lang("GO");
        echo "\" class=\"button2\" />
\t";
        // line 8
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
</fieldset>

<h2>";
        // line 11
        echo $this->env->getExtension('phpbb')->lang("TITLE");
        echo "</h2>

<div class=\"panel\">
\t<div class=\"inner\">

\t<p>";
        // line 16
        echo $this->env->getExtension('phpbb')->lang("EXPLAIN");
        echo "</p>

\t";
        // line 18
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow"))) {
            // line 19
            echo "\t\t<div class=\"action-bar top\">
\t\t\t<div class=\"pagination\">
\t\t\t\t";
            // line 21
            echo (isset($context["TOTAL"]) ? $context["TOTAL"] : null);
            echo "
\t\t\t\t";
            // line 22
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                echo " 
\t\t\t\t\t";
                // line 23
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->env->loadTemplate("pagination.html")->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 24
                echo "\t\t\t\t";
            } else {
                echo " 
\t\t\t\t\t &bull; ";
                // line 25
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t\t";
            }
            // line 27
            echo "\t\t\t</div>
\t\t</div>

\t\t<ul class=\"topiclist missing-column\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><div class=\"list-inner\">";
            // line 33
            if ((isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("TOPIC");
            } else {
                echo $this->env->getExtension('phpbb')->lang("POST");
            }
            echo "</div></dt>
\t\t\t\t\t<dd class=\"moderation\"><span>";
            // line 34
            if ((!(isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null))) {
                echo $this->env->getExtension('phpbb')->lang("TOPIC");
                echo " &amp; ";
            }
            echo $this->env->getExtension('phpbb')->lang("FORUM");
            echo "</span></dd>
\t\t\t\t\t<dd class=\"mark\">";
            // line 35
            echo $this->env->getExtension('phpbb')->lang("MARK");
            echo "</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t</ul>
\t\t\t<ul class=\"topiclist cplist missing-column responsive-show-all\">

\t\t";
            // line 41
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow"));
            foreach ($context['_seq'] as $context["_key"] => $context["postrow"]) {
                // line 42
                echo "
\t\t";
                // line 43
                if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_DELETED_TOPIC")) {
                    // line 44
                    echo "\t\t\t<li><p class=\"notopics\">";
                    echo $this->env->getExtension('phpbb')->lang("DELETED_TOPIC");
                    echo "</p></li>
\t\t";
                } else {
                    // line 46
                    echo "
\t\t<li class=\"row";
                    // line 47
                    if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_ROW_COUNT") % 2 == 1)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t<dl>
\t\t\t\t<dt>
\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t<a href=\"";
                    // line 51
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_VIEW_DETAILS");
                    echo "\" class=\"topictitle\">";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_SUBJECT");
                    echo "</a> ";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "ATTACH_ICON_IMG");
                    echo "<br />
\t\t\t\t\t\t<span>";
                    // line 52
                    echo $this->env->getExtension('phpbb')->lang("POSTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_AUTHOR_FULL");
                    echo " &raquo; ";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_TIME");
                    echo "</span>
\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"moderation\">
\t\t\t\t\t<span>
\t\t\t\t\t\t";
                    // line 57
                    if ((isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null)) {
                        echo "<br />";
                    } else {
                        echo $this->env->getExtension('phpbb')->lang("TOPIC");
                        echo $this->env->getExtension('phpbb')->lang("COLON");
                        echo " <a href=\"";
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_TOPIC");
                        echo "\">";
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "TOPIC_TITLE");
                        echo "</a> <br />";
                    }
                    // line 58
                    echo "\t\t\t\t\t\t";
                    echo $this->env->getExtension('phpbb')->lang("FORUM");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_VIEWFORUM");
                    echo "\">";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "FORUM_NAME");
                    echo "</a>
\t\t\t\t\t</span>
\t\t\t\t</dd>


\t\t \t\t<dd class=\"mark\">
\t\t\t\t\t";
                    // line 64
                    if ((isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null)) {
                        // line 65
                        echo "\t\t\t\t\t\t<input type=\"checkbox\" name=\"topic_id_list[]\" value=\"";
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "TOPIC_ID");
                        echo "\" />
\t\t\t\t\t";
                    } else {
                        // line 67
                        echo "\t\t\t\t\t\t<input type=\"checkbox\" name=\"post_id_list[]\" value=\"";
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
                        echo "\" />
\t\t\t\t\t";
                    }
                    // line 69
                    echo "\t\t\t\t</dd>
\t\t\t</dl>
\t\t</li>
\t\t";
                }
                // line 73
                echo "\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['postrow'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 74
            echo "\t\t</ul>

\t\t<fieldset class=\"display-options\">
\t\t\t<label>";
            // line 77
            echo $this->env->getExtension('phpbb')->lang("DISPLAY_POSTS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " ";
            echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
            echo "</label>
\t\t\t<label>";
            // line 78
            echo $this->env->getExtension('phpbb')->lang("SORT_BY");
            echo " ";
            echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
            echo "</label><label>";
            echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
            echo "</label>
\t\t\t";
            // line 79
            if ((isset($context["TOPIC_ID"]) ? $context["TOPIC_ID"] : null)) {
                echo "<label><input type=\"checkbox\" class=\"radio\" name=\"t\" value=\"";
                echo (isset($context["TOPIC_ID"]) ? $context["TOPIC_ID"] : null);
                echo "\" checked=\"checked\" />&nbsp; <strong>";
                echo $this->env->getExtension('phpbb')->lang("ONLY_TOPIC");
                echo "</strong></label>";
            }
            // line 80
            echo "\t\t\t<input type=\"submit\" name=\"sort\" value=\"";
            echo $this->env->getExtension('phpbb')->lang("GO");
            echo "\" class=\"button2\" />
\t\t</fieldset>

\t\t<hr />

\t\t<div class=\"action-bar bottom\">
\t\t\t<div class=\"pagination\">
\t\t\t\t";
            // line 87
            echo (isset($context["TOTAL"]) ? $context["TOTAL"] : null);
            echo "
\t\t\t\t";
            // line 88
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                echo " 
\t\t\t\t\t";
                // line 89
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->env->loadTemplate("pagination.html")->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 90
                echo "\t\t\t\t";
            } else {
                echo " 
\t\t\t\t\t &bull; ";
                // line 91
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t\t";
            }
            // line 93
            echo "\t\t\t</div>
\t\t</div>

\t";
        } else {
            // line 97
            echo "\t\t<p class=\"notopics\"><strong>
\t\t\t";
            // line 98
            if ((isset($context["S_RESTORE"]) ? $context["S_RESTORE"] : null)) {
                // line 99
                echo "\t\t\t\t";
                if ((isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("NO_TOPICS_DELETED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("NO_POSTS_DELETED");
                }
                // line 100
                echo "\t\t\t";
            } else {
                // line 101
                echo "\t\t\t\t";
                if ((isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("NO_TOPICS_QUEUE");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("NO_POSTS_QUEUE");
                }
                // line 102
                echo "\t\t\t";
            }
            // line 103
            echo "\t\t</strong></p>
\t";
        }
        // line 105
        echo "
\t</div>
</div>

";
        // line 109
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow"))) {
            // line 110
            echo "\t<fieldset class=\"display-actions\">
\t\t";
            // line 111
            if ((isset($context["S_RESTORE"]) ? $context["S_RESTORE"] : null)) {
                // line 112
                echo "\t\t<input class=\"button2\" type=\"submit\" name=\"action[delete]\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("DELETE");
                echo "\" />&nbsp;
\t\t<input class=\"button1\" type=\"submit\" name=\"action[restore]\" value=\"";
                // line 113
                echo $this->env->getExtension('phpbb')->lang("RESTORE");
                echo "\" />
\t\t";
            } else {
                // line 115
                echo "\t\t<input class=\"button2\" type=\"submit\" name=\"action[disapprove]\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("DISAPPROVE");
                echo "\" />&nbsp;
\t\t<input class=\"button1\" type=\"submit\" name=\"action[approve]\" value=\"";
                // line 116
                echo $this->env->getExtension('phpbb')->lang("APPROVE");
                echo "\" />
\t\t";
            }
            // line 118
            echo "\t\t<div>
\t\t\t";
            // line 119
            if ((isset($context["S_TOPICS"]) ? $context["S_TOPICS"] : null)) {
                // line 120
                echo "\t\t\t\t<a href=\"#\" onclick=\"marklist('mcp', 'topic_id_list', true); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
                echo "</a> :: <a href=\"#\" onclick=\"marklist('mcp', 'topic_id_list', false); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
                echo "</a>
\t\t\t";
            } else {
                // line 122
                echo "\t\t\t\t<a href=\"#\" onclick=\"marklist('mcp', 'post_id_list', true); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
                echo "</a> :: <a href=\"#\" onclick=\"marklist('mcp', 'post_id_list', false); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
                echo "</a>
\t\t\t";
            }
            // line 124
            echo "\t\t</div>
\t</fieldset>
";
        }
        // line 127
        echo "</form>

";
        // line 129
        $location = "mcp_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("mcp_footer.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "mcp_queue.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  410 => 129,  406 => 127,  401 => 124,  393 => 122,  385 => 120,  383 => 119,  380 => 118,  375 => 116,  370 => 115,  365 => 113,  360 => 112,  358 => 111,  355 => 110,  353 => 109,  347 => 105,  343 => 103,  340 => 102,  333 => 101,  330 => 100,  323 => 99,  321 => 98,  318 => 97,  312 => 93,  307 => 91,  302 => 90,  290 => 89,  286 => 88,  282 => 87,  271 => 80,  263 => 79,  255 => 78,  248 => 77,  243 => 74,  237 => 73,  231 => 69,  225 => 67,  219 => 65,  217 => 64,  202 => 58,  190 => 57,  176 => 52,  168 => 51,  157 => 47,  154 => 46,  148 => 44,  146 => 43,  143 => 42,  139 => 41,  130 => 35,  122 => 34,  114 => 33,  106 => 27,  101 => 25,  96 => 24,  84 => 23,  80 => 22,  76 => 21,  72 => 19,  70 => 18,  65 => 16,  57 => 11,  51 => 8,  47 => 7,  40 => 6,  34 => 3,  31 => 2,  19 => 1,);
    }
}
