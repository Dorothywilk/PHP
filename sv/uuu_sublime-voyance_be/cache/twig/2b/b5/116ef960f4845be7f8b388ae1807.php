<?php

/* search_results.html */
class __TwigTemplate_2bb5116ef960f4845be7f8b388ae1807 extends Twig_Template
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
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("overall_header.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
";
        // line 3
        // line 4
        echo "
<h2 class=\"searchresults-title\">";
        // line 5
        if ((isset($context["SEARCH_TITLE"]) ? $context["SEARCH_TITLE"] : null)) {
            echo (isset($context["SEARCH_TITLE"]) ? $context["SEARCH_TITLE"] : null);
        } else {
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
        }
        if ((isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <a href=\"";
            echo (isset($context["U_SEARCH_WORDS"]) ? $context["U_SEARCH_WORDS"] : null);
            echo "\">";
            echo (isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null);
            echo "</a>";
        }
        echo "</h2>
";
        // line 6
        if ((isset($context["SEARCHED_QUERY"]) ? $context["SEARCHED_QUERY"] : null)) {
            echo " <p>";
            echo $this->env->getExtension('phpbb')->lang("SEARCHED_QUERY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <strong>";
            echo (isset($context["SEARCHED_QUERY"]) ? $context["SEARCHED_QUERY"] : null);
            echo "</strong></p>";
        }
        // line 7
        if ((isset($context["IGNORED_WORDS"]) ? $context["IGNORED_WORDS"] : null)) {
            echo " <p>";
            echo $this->env->getExtension('phpbb')->lang("IGNORED_TERMS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <strong>";
            echo (isset($context["IGNORED_WORDS"]) ? $context["IGNORED_WORDS"] : null);
            echo "</strong></p>";
        }
        // line 8
        if ((isset($context["PHRASE_SEARCH_DISABLED"]) ? $context["PHRASE_SEARCH_DISABLED"] : null)) {
            echo " <p><strong>";
            echo $this->env->getExtension('phpbb')->lang("PHRASE_SEARCH_DISABLED");
            echo "</strong></p>";
        }
        // line 9
        echo "
";
        // line 10
        if ((isset($context["SEARCH_TOPIC"]) ? $context["SEARCH_TOPIC"] : null)) {
            // line 11
            echo "\t<p class=\"return-link\"><a class=\"arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH_TOPIC"]) ? $context["U_SEARCH_TOPIC"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_TOPIC");
            echo "</a></p>
";
        } else {
            // line 13
            echo "\t<p class=\"advanced-search-link\"><a class=\"arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("GO_TO_SEARCH_ADV");
            echo "</a></p>
";
        }
        // line 15
        echo "
";
        // line 16
        // line 17
        echo "
";
        // line 18
        if ((((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination")) || (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null)) || (isset($context["TOTAL_MATCHES"]) ? $context["TOTAL_MATCHES"] : null)) || (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null))) {
            // line 19
            echo "\t<div class=\"action-bar top\">

\t";
            // line 21
            if (((isset($context["TOTAL_MATCHES"]) ? $context["TOTAL_MATCHES"] : null) > 0)) {
                // line 22
                echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"post\" action=\"";
                // line 23
                echo (isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null);
                echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\" type=\"search\" name=\"add_keywords\" id=\"add_keywords\" value=\"\" placeholder=\"";
                // line 25
                echo $this->env->getExtension('phpbb')->lang("SEARCH_IN_RESULTS");
                echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
                // line 26
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "</button>
\t\t\t\t<a href=\"";
                // line 27
                echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
                echo "\" class=\"button icon-button search-adv-icon\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "</a>
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
            }
            // line 32
            echo "
\t\t";
            // line 33
            // line 34
            echo "
\t\t<div class=\"pagination\">
\t\t\t";
            // line 36
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
            echo "
\t\t\t";
            // line 37
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                // line 38
                echo "\t\t\t\t";
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
                // line 39
                echo "\t\t\t";
            } else {
                // line 40
                echo "\t\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 42
            echo "\t\t</div>
\t</div>
";
        }
        // line 45
        echo "
";
        // line 46
        if ((isset($context["S_SHOW_TOPICS"]) ? $context["S_SHOW_TOPICS"] : null)) {
            // line 47
            echo "
\t";
            // line 48
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults"))) {
                // line 49
                echo "\t<div class=\"forumbg\">

\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"icon\">
\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 55
                echo $this->env->getExtension('phpbb')->lang("TOPICS");
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 56
                echo $this->env->getExtension('phpbb')->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                // line 57
                echo $this->env->getExtension('phpbb')->lang("VIEWS");
                echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 58
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">

\t\t";
                // line 64
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults"));
                foreach ($context['_seq'] as $context["_key"] => $context["searchresults"]) {
                    // line 65
                    echo "\t\t\t";
                    // line 66
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_ROW_COUNT") % 2 == 0)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t\t<dl class=\"icon ";
                    // line 67
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_IMG_STYLE");
                    echo "\">
\t\t\t\t\t<dt ";
                    // line 68
                    if ($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_ICON_IMG")) {
                        echo "style=\"background-image: url(";
                        echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_ICON_IMG");
                        echo "); background-repeat: no-repeat;\"";
                    }
                    echo " title=\"";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_FOLDER_IMG_ALT");
                    echo "\">
\t\t\t\t\t\t";
                    // line 69
                    if (($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_UNREAD_TOPIC") && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_NEWEST_POST");
                        echo "\" class=\"icon-link\"></a>";
                    }
                    // line 70
                    echo "\t\t\t\t\t\t<div class=\"list-inner\">

\t\t\t\t\t\t\t";
                    // line 72
                    // line 73
                    echo "\t\t\t\t\t\t\t";
                    if (($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_UNREAD_TOPIC") && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_NEWEST_POST");
                        echo "\">";
                        echo (isset($context["NEWEST_POST_IMG"]) ? $context["NEWEST_POST_IMG"] : null);
                        echo "</a> ";
                    }
                    // line 74
                    echo "\t\t\t\t\t\t\t<a href=\"";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_VIEW_TOPIC");
                    echo "\" class=\"topictitle\">";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_TITLE");
                    echo "</a> ";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "ATTACH_ICON_IMG");
                    echo "
\t\t\t\t\t\t\t";
                    // line 75
                    if (($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_TOPIC_UNAPPROVED") || $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_POSTS_UNAPPROVED"))) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_MCP_QUEUE");
                        echo "\">";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "UNAPPROVED_IMG");
                        echo "</a> ";
                    }
                    // line 76
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_TOPIC_DELETED")) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_MCP_QUEUE");
                        echo "\">";
                        echo (isset($context["DELETED_IMG"]) ? $context["DELETED_IMG"] : null);
                        echo "</a> ";
                    }
                    // line 77
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_TOPIC_REPORTED")) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_MCP_REPORT");
                        echo "\">";
                        echo (isset($context["REPORTED_IMG"]) ? $context["REPORTED_IMG"] : null);
                        echo "</a>";
                    }
                    echo "<br />
\t\t\t\t\t\t\t";
                    // line 78
                    if (twig_length_filter($this->env, $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "pagination"))) {
                        // line 79
                        echo "\t\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t\t";
                        // line 81
                        $context['_parent'] = (array) $context;
                        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "pagination"));
                        foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                            // line 82
                            echo "\t\t\t\t\t\t\t\t\t";
                            if ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_PREV")) {
                                // line 83
                                echo "\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_CURRENT")) {
                                echo "<li class=\"active\"><span>";
                                echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_NUMBER");
                                echo "</span></li>
\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_ELLIPSIS")) {
                                // line 84
                                echo "<li class=\"ellipsis\"><span>";
                                echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                                echo "</span></li>
\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_NEXT")) {
                                // line 86
                                echo "\t\t\t\t\t\t\t\t\t";
                            } else {
                                echo "<li><a href=\"";
                                echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_URL");
                                echo "\">";
                                echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_NUMBER");
                                echo "</a></li>
\t\t\t\t\t\t\t\t\t";
                            }
                            // line 88
                            echo "\t\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 89
                        echo "\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                    }
                    // line 92
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_HAS_POLL")) {
                        echo (isset($context["POLL_IMG"]) ? $context["POLL_IMG"] : null);
                        echo " ";
                    }
                    // line 93
                    echo "\t\t\t\t\t\t\t";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_AUTHOR_FULL");
                    echo " &raquo; ";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "FIRST_POST_TIME");
                    echo " &raquo; ";
                    echo $this->env->getExtension('phpbb')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_VIEW_FORUM");
                    echo "\">";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "FORUM_TITLE");
                    echo "</a>
\t\t\t\t\t\t\t";
                    // line 94
                    // line 95
                    echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd class=\"posts\">";
                    // line 98
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_REPLIES");
                    echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                    // line 99
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_VIEWS");
                    echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>
\t\t\t\t\t\t";
                    // line 101
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "LAST_POST_AUTHOR_FULL");
                    echo "
\t\t\t\t\t\t";
                    // line 102
                    if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_LAST_POST");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                        echo "\">";
                        echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                        echo "</a> ";
                    }
                    echo "<br />";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "LAST_POST_TIME");
                    echo "<br /> </span>
\t\t\t\t\t</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t";
                    // line 106
                    // line 107
                    echo "\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['searchresults'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 108
                echo "\t\t</ul>

\t\t</div>
\t</div>
\t";
            } else {
                // line 113
                echo "\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 115
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_RESULTS");
                echo "</strong>
\t\t\t</div>
\t\t</div>
\t";
            }
            // line 119
            echo "
";
        } else {
            // line 121
            echo "
\t";
            // line 122
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults"));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["searchresults"]) {
                // line 123
                echo "\t\t";
                // line 124
                echo "\t\t<div class=\"search post ";
                if (($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_ROW_COUNT") % 2 == 1)) {
                    echo "bg1";
                } else {
                    echo "bg2";
                }
                if ($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_POST_REPORTED")) {
                    echo " reported";
                }
                echo "\">
\t\t\t<div class=\"inner\">

\t";
                // line 127
                if ($this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_IGNORE_POST")) {
                    // line 128
                    echo "\t\t<div class=\"postbody\">
\t\t\t";
                    // line 129
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "L_IGNORE_POST");
                    echo "
\t\t</div>
\t";
                } else {
                    // line 132
                    echo "\t\t<dl class=\"postprofile\">
\t\t\t";
                    // line 133
                    // line 134
                    echo "\t\t\t<dt class=\"author\">";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "POST_AUTHOR_FULL");
                    echo "</dt>
\t\t\t<dd class=\"search-result-date\">";
                    // line 135
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "POST_DATE");
                    echo "</dd>
\t\t\t<dd>";
                    // line 136
                    echo $this->env->getExtension('phpbb')->lang("FORUM");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_VIEW_FORUM");
                    echo "\">";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "FORUM_TITLE");
                    echo "</a></dd>
\t\t\t<dd>";
                    // line 137
                    echo $this->env->getExtension('phpbb')->lang("TOPIC");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_VIEW_TOPIC");
                    echo "\">";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_TITLE");
                    echo "</a></dd>
\t\t\t<dd>";
                    // line 138
                    echo $this->env->getExtension('phpbb')->lang("REPLIES");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_REPLIES");
                    echo "</strong></dd>
\t\t\t<dd>";
                    // line 139
                    echo $this->env->getExtension('phpbb')->lang("VIEWS");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "TOPIC_VIEWS");
                    echo "</strong></dd>
\t\t\t";
                    // line 140
                    // line 141
                    echo "\t\t</dl>

\t\t<div class=\"postbody\">
\t\t\t<h3><a href=\"";
                    // line 144
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_VIEW_POST");
                    echo "\">";
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "POST_SUBJECT");
                    echo "</a></h3>
\t\t\t<div class=\"content\">";
                    // line 145
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "MESSAGE");
                    echo "</div>
\t\t</div>
\t";
                }
                // line 148
                echo "
\t";
                // line 149
                if ((!$this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "S_IGNORE_POST"))) {
                    // line 150
                    echo "\t\t<ul class=\"searchresults\">
\t\t\t<li ><a href=\"";
                    // line 151
                    echo $this->getAttribute((isset($context["searchresults"]) ? $context["searchresults"] : null), "U_VIEW_POST");
                    echo "\" class=\"arrow-";
                    echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("JUMP_TO_POST");
                    echo "</a></li>
\t\t</ul>
\t";
                }
                // line 154
                echo "
\t\t\t</div>
\t\t</div>
\t\t";
                // line 157
                // line 158
                echo "\t";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                // line 159
                echo "\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 161
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_RESULTS");
                echo "</strong>
\t\t\t</div>
\t\t</div>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['searchresults'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        }
        // line 166
        echo "
";
        // line 167
        if ((((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination")) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults"))) || (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null)) || (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null))) {
            // line 168
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null);
            echo "\">

\t<fieldset class=\"display-options\">
\t\t";
            // line 171
            if (((isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null) || (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null))) {
                // line 172
                echo "\t\t\t<label>";
                if ((isset($context["S_SHOW_TOPICS"]) ? $context["S_SHOW_TOPICS"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("DISPLAY_POSTS");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                    echo "</label><label>";
                }
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                if ((isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null)) {
                    echo "</label> <label>";
                    echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                    echo "</label>
\t\t\t<label>";
                    // line 173
                    echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                }
                echo "</label>
\t\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 174
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t\t";
            }
            // line 176
            echo "\t</fieldset>

\t</form>

\t<hr />
";
        }
        // line 182
        echo "
";
        // line 183
        if (((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination")) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults"))) || (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null))) {
            // line 184
            echo "<div class=\"action-bar bottom\">
\t<div class=\"pagination\">
\t\t";
            // line 186
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
            echo "
\t\t";
            // line 187
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                // line 188
                echo "\t\t\t";
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
                // line 189
                echo "\t\t";
            } else {
                // line 190
                echo "\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t";
            }
            // line 192
            echo "\t</div>
</div>
";
        }
        // line 195
        echo "
";
        // line 196
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("jumpbox.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 197
        echo "
";
        // line 198
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("overall_footer.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "search_results.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  704 => 198,  701 => 197,  689 => 196,  686 => 195,  681 => 192,  675 => 190,  672 => 189,  659 => 188,  657 => 187,  653 => 186,  649 => 184,  647 => 183,  644 => 182,  636 => 176,  631 => 174,  626 => 173,  611 => 172,  609 => 171,  602 => 168,  600 => 167,  597 => 166,  586 => 161,  582 => 159,  577 => 158,  576 => 157,  571 => 154,  561 => 151,  558 => 150,  556 => 149,  553 => 148,  547 => 145,  541 => 144,  536 => 141,  535 => 140,  528 => 139,  521 => 138,  512 => 137,  503 => 136,  499 => 135,  492 => 134,  491 => 133,  488 => 132,  482 => 129,  479 => 128,  477 => 127,  463 => 124,  461 => 123,  456 => 122,  453 => 121,  449 => 119,  442 => 115,  438 => 113,  431 => 108,  425 => 107,  424 => 106,  407 => 102,  401 => 101,  396 => 99,  392 => 98,  387 => 95,  386 => 94,  371 => 93,  365 => 92,  360 => 89,  354 => 88,  344 => 86,  338 => 84,  330 => 83,  327 => 82,  323 => 81,  319 => 79,  317 => 78,  306 => 77,  297 => 76,  289 => 75,  280 => 74,  271 => 73,  270 => 72,  266 => 70,  260 => 69,  249 => 68,  245 => 67,  236 => 66,  234 => 65,  230 => 64,  221 => 58,  217 => 57,  213 => 56,  209 => 55,  201 => 49,  199 => 48,  196 => 47,  194 => 46,  191 => 45,  186 => 42,  180 => 40,  177 => 39,  164 => 38,  162 => 37,  158 => 36,  154 => 34,  153 => 33,  150 => 32,  138 => 27,  132 => 26,  128 => 25,  123 => 23,  120 => 22,  118 => 21,  114 => 19,  112 => 18,  109 => 17,  108 => 16,  105 => 15,  93 => 13,  83 => 11,  81 => 10,  78 => 9,  72 => 8,  63 => 7,  54 => 6,  38 => 5,  35 => 4,  34 => 3,  31 => 2,  19 => 1,);
    }
}
