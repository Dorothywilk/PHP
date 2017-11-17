<?php

/* viewtopic_body.html */
class __TwigTemplate_2197702af0b7c09dcf89b14b9d9093f8 extends Twig_Template
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
<h2 class=\"topic-title\">";
        // line 3
        echo "<a href=\"";
        echo (isset($context["U_VIEW_TOPIC"]) ? $context["U_VIEW_TOPIC"] : null);
        echo "\">";
        echo (isset($context["TOPIC_TITLE"]) ? $context["TOPIC_TITLE"] : null);
        echo "</a>";
        echo "</h2>
<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the topic body -->
";
        // line 5
        if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
            echo "<div style=\"display: none !important;\">";
            echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
            echo "<br /></div>";
        }
        // line 6
        echo "
";
        // line 7
        if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
            // line 8
            echo "<p>
\t<strong>";
            // line 9
            if ((isset($context["S_SINGLE_MODERATOR"]) ? $context["S_SINGLE_MODERATOR"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATOR");
            } else {
                echo $this->env->getExtension('phpbb')->lang("MODERATORS");
            }
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</strong> ";
            echo (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null);
            echo "
</p>
";
        }
        // line 12
        echo "
";
        // line 13
        if ((isset($context["S_FORUM_RULES"]) ? $context["S_FORUM_RULES"] : null)) {
            // line 14
            echo "\t<div class=\"rules";
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 17
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                // line 18
                echo "\t\t\t<a href=\"";
                echo (isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 20
                echo "\t\t\t<strong>";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 21
                echo (isset($context["FORUM_RULES"]) ? $context["FORUM_RULES"] : null);
                echo "
\t\t";
            }
            // line 23
            echo "
\t\t</div>
\t</div>
";
        }
        // line 27
        echo "
<div class=\"action-bar top\">

\t<div class=\"buttons\">
\t\t";
        // line 31
        // line 32
        echo "
\t";
        // line 33
        if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["S_DISPLAY_REPLY_INFO"]) ? $context["S_DISPLAY_REPLY_INFO"] : null))) {
            // line 34
            echo "\t\t<a href=\"";
            echo (isset($context["U_POST_REPLY_TOPIC"]) ? $context["U_POST_REPLY_TOPIC"] : null);
            echo "\" class=\"button icon-button ";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo "locked-icon";
            } else {
                echo "reply-icon";
            }
            echo "\" title=\"";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("POST_REPLY");
            }
            echo "\">
\t\t\t";
            // line 35
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_POST_REPLY");
            }
            // line 36
            echo "\t\t</a>
\t";
        }
        // line 38
        echo "
\t\t";
        // line 39
        // line 40
        echo "\t</div>

\t";
        // line 42
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("viewtopic_topic_tools.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 43
        echo "
\t";
        // line 44
        if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
            // line 45
            echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"topic-search\" action=\"";
            // line 46
            echo (isset($context["S_SEARCHBOX_ACTION"]) ? $context["S_SEARCHBOX_ACTION"] : null);
            echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\"  type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
            // line 48
            echo $this->env->getExtension('phpbb')->lang("SEARCH_TOPIC");
            echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
            // line 49
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</button>
\t\t\t\t<a href=\"";
            // line 50
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" class=\"button icon-button search-adv-icon\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "</a>
\t\t\t\t";
            // line 51
            echo (isset($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"]) ? $context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] : null);
            echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
        }
        // line 56
        echo "
\t";
        // line 57
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination")) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 58
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 59
            if (((isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null) && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
                echo "<a href=\"";
                echo (isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null);
                echo "\" class=\"mark\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_UNREAD_POST");
                echo "</a> &bull; ";
            }
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "
\t\t\t";
            // line 60
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                // line 61
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
                // line 62
                echo "\t\t\t";
            } else {
                // line 63
                echo "\t\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 65
            echo "\t\t</div>
\t";
        }
        // line 67
        echo "\t";
        // line 68
        echo "</div>

";
        // line 70
        if ((isset($context["S_HAS_POLL"]) ? $context["S_HAS_POLL"] : null)) {
            // line 71
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_POLL_ACTION"]) ? $context["S_POLL_ACTION"] : null);
            echo "\" data-ajax=\"vote_poll\" class=\"topic_poll\">

\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<div class=\"content\">
\t\t\t<h2 class=\"poll-title\">";
            // line 77
            echo (isset($context["POLL_QUESTION"]) ? $context["POLL_QUESTION"] : null);
            echo "</h2>
\t\t\t<p class=\"author\">";
            // line 78
            echo $this->env->getExtension('phpbb')->lang("POLL_LENGTH");
            if (((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null) && (isset($context["L_POLL_LENGTH"]) ? $context["L_POLL_LENGTH"] : null))) {
                echo "<br />";
            }
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                echo "<span class=\"poll_max_votes\">";
                echo $this->env->getExtension('phpbb')->lang("MAX_VOTES");
                echo "</span>";
            }
            echo "</p>

\t\t\t<fieldset class=\"polls\">
\t\t\t";
            // line 81
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "poll_option"));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 82
                echo "\t\t\t\t";
                // line 83
                echo "\t\t\t\t<dl class=\"";
                if ($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_VOTED")) {
                    echo "voted";
                }
                if ($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_MOST_VOTES")) {
                    echo " most-votes";
                }
                echo "\"";
                if ($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_VOTED")) {
                    echo " title=\"";
                    echo $this->env->getExtension('phpbb')->lang("POLL_VOTED_OPTION");
                    echo "\"";
                }
                echo " data-poll-option-id=\"";
                echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                echo "\">
\t\t\t\t\t<dt>";
                // line 84
                if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                    echo "<label for=\"vote_";
                    echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                    echo "\">";
                    echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_CAPTION");
                    echo "</label>";
                } else {
                    echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_CAPTION");
                }
                echo "</dt>
\t\t\t\t\t";
                // line 85
                if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                    echo "<dd style=\"width: auto;\" class=\"poll_option_select\">";
                    if ((isset($context["S_IS_MULTI_CHOICE"]) ? $context["S_IS_MULTI_CHOICE"] : null)) {
                        echo "<input type=\"checkbox\" name=\"vote_id[]\" id=\"vote_";
                        echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                        echo "\" value=\"";
                        echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                        echo "\"";
                        if ($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_VOTED")) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    } else {
                        echo "<input type=\"radio\" name=\"vote_id[]\" id=\"vote_";
                        echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                        echo "\" value=\"";
                        echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                        echo "\"";
                        if ($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_VOTED")) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    }
                    echo "</dd>";
                }
                // line 86
                echo "\t\t\t\t\t<dd class=\"resultbar";
                if ((!(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null))) {
                    echo " hidden";
                }
                echo "\"><div class=\"";
                if (($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_PCT") < 20)) {
                    echo "pollbar1";
                } elseif (($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_PCT") < 40)) {
                    echo "pollbar2";
                } elseif (($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_PCT") < 60)) {
                    echo "pollbar3";
                } elseif (($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_PCT") < 80)) {
                    echo "pollbar4";
                } else {
                    echo "pollbar5";
                }
                echo "\" style=\"width:";
                echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_PERCENT_REL");
                echo ";\">";
                echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_RESULT");
                echo "</div></dd>
\t\t\t\t\t<dd class=\"poll_option_percent";
                // line 87
                if ((!(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null))) {
                    echo " hidden";
                }
                echo "\">";
                if (($this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_RESULT") == 0)) {
                    echo $this->env->getExtension('phpbb')->lang("NO_VOTES");
                } else {
                    echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_PERCENT");
                }
                echo "</dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 89
                // line 90
                echo "\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 91
            echo "
\t\t\t\t<dl class=\"poll_total_votes";
            // line 92
            if ((!(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null))) {
                echo " hidden";
            }
            echo "\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\">";
            // line 94
            echo $this->env->getExtension('phpbb')->lang("TOTAL_VOTES");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <span class=\"poll_total_vote_cnt\">";
            echo (isset($context["TOTAL_VOTES"]) ? $context["TOTAL_VOTES"] : null);
            echo "</span></dd>
\t\t\t\t</dl>

\t\t\t";
            // line 97
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                // line 98
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_vote\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><input type=\"submit\" name=\"update\" value=\"";
                // line 100
                echo $this->env->getExtension('phpbb')->lang("SUBMIT_VOTE");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 103
            echo "
\t\t\t";
            // line 104
            if ((!(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null))) {
                // line 105
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_view_results\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><a href=\"";
                // line 107
                echo (isset($context["U_VIEW_RESULTS"]) ? $context["U_VIEW_RESULTS"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_RESULTS");
                echo "</a></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 110
            echo "\t\t\t</fieldset>
\t\t\t<div class=\"vote-submitted hidden\">";
            // line 111
            echo $this->env->getExtension('phpbb')->lang("VOTE_SUBMITTED");
            echo "</div>
\t\t</div>

\t\t</div>
\t\t";
            // line 115
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t\t";
            // line 116
            echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
            echo "
\t</div>

\t</form>
\t<hr />
";
        }
        // line 122
        echo "
";
        // line 123
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow"));
        foreach ($context['_seq'] as $context["_key"] => $context["postrow"]) {
            // line 124
            echo "\t";
            // line 125
            echo "\t";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_FIRST_UNREAD")) {
                // line 126
                echo "\t\t<a id=\"unread\" class=\"anchor\"";
                if ((isset($context["S_UNREAD_VIEW"]) ? $context["S_UNREAD_VIEW"] : null)) {
                    echo " data-url=\"";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_MINI_POST");
                    echo "\"";
                }
                echo "></a>
\t";
            }
            // line 128
            echo "\t<div id=\"p";
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
            echo "\" class=\"post has-profile ";
            if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_ROW_COUNT") % 2 == 1)) {
                echo "bg1";
            } else {
                echo "bg2";
            }
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_UNREAD_POST")) {
                echo " unreadpost";
            }
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_REPORTED")) {
                echo " reported";
            }
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_DELETED")) {
                echo " deleted";
            }
            if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_ONLINE") && (!$this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_HIDDEN")))) {
                echo " online";
            }
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_WARNINGS")) {
                echo " warned";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t<dl class=\"postprofile\" id=\"profile";
            // line 131
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
            echo "\"";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_HIDDEN")) {
                echo " style=\"display: none;\"";
            }
            echo ">
\t\t\t<dt class=\"";
            // line 132
            if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_TITLE") || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_IMG"))) {
                echo "has-profile-rank";
            } else {
                echo "no-profile-rank";
            }
            echo " ";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_AVATAR")) {
                echo "has-avatar";
            } else {
                echo "no-avatar";
            }
            echo "\">
\t\t\t\t<div class=\"avatar-container\">
\t\t\t\t\t";
            // line 134
            // line 135
            echo "\t\t\t\t\t";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_AVATAR")) {
                // line 136
                echo "\t\t\t\t\t\t";
                if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_POST_AUTHOR")) {
                    echo "<a href=\"";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_POST_AUTHOR");
                    echo "\" class=\"avatar\">";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_AVATAR");
                    echo "</a>";
                } else {
                    echo "<span class=\"avatar\">";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_AVATAR");
                    echo "</span>";
                }
                // line 137
                echo "\t\t\t\t\t";
            }
            // line 138
            echo "\t\t\t\t\t";
            // line 139
            echo "\t\t\t\t</div>
\t\t\t\t";
            // line 140
            // line 141
            echo "\t\t\t\t";
            if ((!$this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_POST_AUTHOR"))) {
                echo "<strong>";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_AUTHOR_FULL");
                echo "</strong>";
            } else {
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_AUTHOR_FULL");
            }
            // line 142
            echo "\t\t\t\t";
            // line 143
            echo "\t\t\t</dt>

\t\t\t";
            // line 145
            if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_TITLE") || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_IMG"))) {
                echo "<dd class=\"profile-rank\">";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_TITLE");
                if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_TITLE") && $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_IMG"))) {
                    echo "<br />";
                }
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "RANK_IMG");
                echo "</dd>";
            }
            // line 146
            echo "
\t\t";
            // line 147
            if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_POSTS") != "")) {
                echo "<dd class=\"profile-posts\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("POSTS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_SEARCH") !== "")) {
                    echo "<a href=\"";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_SEARCH");
                    echo "\">";
                }
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_POSTS");
                if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_SEARCH") !== "")) {
                    echo "</a>";
                }
                echo "</dd>";
            }
            // line 148
            echo "\t\t";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_JOINED")) {
                echo "<dd class=\"profile-joined\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("JOINED");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_JOINED");
                echo "</dd>";
            }
            // line 149
            echo "\t\t";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_WARNINGS")) {
                echo "<dd class=\"profile-warnings\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("WARNINGS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POSTER_WARNINGS");
                echo "</dd>";
            }
            // line 150
            echo "
\t\t";
            // line 151
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_PROFILE_FIELD1")) {
                // line 152
                echo "\t\t\t<!-- Use a construct like this to include admin defined profile fields. Replace FIELD1 with the name of your field. -->
\t\t\t<dd><strong>";
                // line 153
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "PROFILE_FIELD1_NAME");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "PROFILE_FIELD1_VALUE");
                echo "</dd>
\t\t";
            }
            // line 155
            echo "
\t\t";
            // line 156
            // line 157
            echo "\t\t";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "custom_fields"));
            foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                // line 158
                echo "\t\t\t";
                if ((!$this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "S_PROFILE_CONTACT"))) {
                    // line 159
                    echo "\t\t\t\t<dd class=\"profile-custom-field profile-";
                    echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_IDENT");
                    echo "\"><strong>";
                    echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_NAME");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> ";
                    echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_VALUE");
                    echo "</dd>
\t\t\t";
                }
                // line 161
                echo "\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 162
            echo "\t\t";
            // line 163
            echo "
\t\t";
            // line 164
            // line 165
            echo "\t\t";
            if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && twig_length_filter($this->env, $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "contact")))) {
                // line 166
                echo "\t\t\t<dd class=\"profile-contact\">
\t\t\t\t<strong>";
                // line 167
                echo $this->env->getExtension('phpbb')->lang("CONTACT");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong>
\t\t\t\t<div class=\"dropdown-container dropdown-left\">
\t\t\t\t\t<a href=\"#\" class=\"dropdown-trigger\"><span class=\"imageset icon_contact\" title=\"";
                // line 169
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "CONTACT_USER");
                echo "\">";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "CONTACT_USER");
                echo "</span></a>
\t\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t<div class=\"dropdown-contents contact-icons\">
\t\t\t\t\t\t\t";
                // line 173
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "contact"));
                foreach ($context['_seq'] as $context["_key"] => $context["contact"]) {
                    // line 174
                    echo "\t\t\t\t\t\t\t\t";
                    $context["REMAINDER"] = ($this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "S_ROW_COUNT") % 4);
                    // line 175
                    echo "\t\t\t\t\t\t\t\t";
                    $value = (((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 3) || ($this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "S_LAST_ROW") && ($this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "S_NUM_ROWS") < 4)));
                    $context['definition']->set('S_LAST_CELL', $value);
                    // line 176
                    echo "\t\t\t\t\t\t\t\t";
                    if (((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 0)) {
                        // line 177
                        echo "\t\t\t\t\t\t\t\t\t<div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 179
                    echo "\t\t\t\t\t\t\t\t\t<a href=\"";
                    if ($this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "U_CONTACT")) {
                        echo $this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "U_CONTACT");
                    } else {
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_POST_AUTHOR");
                    }
                    echo "\" title=\"";
                    echo $this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "NAME");
                    echo "\"";
                    if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "S_LAST_CELL")) {
                        echo " class=\"last-cell\"";
                    }
                    if (($this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "ID") == "jabber")) {
                        echo " onclick=\"popup(this.href, 750, 320); return false;\"";
                    }
                    echo ">
\t\t\t\t\t\t\t\t\t\t<span class=\"contact-icon ";
                    // line 180
                    echo $this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "ID");
                    echo "-icon\">";
                    echo $this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "NAME");
                    echo "</span>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t";
                    // line 182
                    if ((((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 3) || $this->getAttribute((isset($context["contact"]) ? $context["contact"] : null), "S_LAST_ROW"))) {
                        // line 183
                        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 185
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['contact'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 186
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</dd>
\t\t";
            }
            // line 191
            echo "\t\t";
            // line 192
            echo "
\t\t</dl>

\t\t<div class=\"postbody\">
\t\t\t";
            // line 196
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_HIDDEN")) {
                // line 197
                echo "\t\t\t\t";
                if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_DELETED")) {
                    // line 198
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
                    echo "\">
\t\t\t\t\t\t";
                    // line 199
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "L_POST_DELETED_MESSAGE");
                    echo "<br />
\t\t\t\t\t\t";
                    // line 200
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "L_POST_DISPLAY");
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                } elseif ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_IGNORE_POST")) {
                    // line 203
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
                    echo "\">
\t\t\t\t\t\t";
                    // line 204
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "L_IGNORE_POST");
                    echo "<br />
\t\t\t\t\t\t";
                    // line 205
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "L_POST_DISPLAY");
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                }
                // line 208
                echo "\t\t\t";
            }
            // line 209
            echo "\t\t\t<div id=\"post_content";
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
            echo "\"";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_HIDDEN")) {
                echo " style=\"display: none;\"";
            }
            echo ">

\t\t\t<h3 ";
            // line 211
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_FIRST_ROW")) {
                echo "class=\"first\"";
            }
            echo ">";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ICON_IMG")) {
                echo "<img src=\"";
                echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ICON_IMG");
                echo "\" width=\"";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ICON_IMG_WIDTH");
                echo "\" height=\"";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ICON_IMG_HEIGHT");
                echo "\" alt=\"\" /> ";
            }
            echo "<a href=\"#p";
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
            echo "\">";
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_SUBJECT");
            echo "</a></h3>

\t\t";
            // line 213
            if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 214
                echo "\t\t\t";
                if (((((($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_EDIT") || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_DELETE")) || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_REPORT")) || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_WARN")) || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_INFO")) || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_QUOTE"))) {
                    // line 215
                    echo "\t\t\t\t<ul class=\"post-buttons\">
\t\t\t\t\t";
                    // line 216
                    // line 217
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_EDIT")) {
                        // line 218
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 219
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_EDIT");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("EDIT_POST");
                        echo "\" class=\"button icon-button edit-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("BUTTON_EDIT");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 222
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_DELETE")) {
                        // line 223
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 224
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_DELETE");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "\" class=\"button icon-button delete-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 227
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_REPORT")) {
                        // line 228
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 229
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_REPORT");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "\" class=\"button icon-button report-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 232
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_WARN")) {
                        // line 233
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 234
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_WARN");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "\" class=\"button icon-button warn-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 237
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_INFO")) {
                        // line 238
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 239
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_INFO");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "\" class=\"button icon-button info-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 242
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_QUOTE")) {
                        // line 243
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 244
                        echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_QUOTE");
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPLY_WITH_QUOTE");
                        echo "\" class=\"button icon-button quote-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("QUOTE");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 247
                    echo "\t\t\t\t\t";
                    // line 248
                    echo "\t\t\t\t</ul>
\t\t\t";
                }
                // line 250
                echo "\t\t";
            }
            // line 251
            echo "
\t\t\t";
            // line 252
            // line 253
            echo "\t\t\t<p class=\"author\">";
            if ((isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "MINI_POST_IMG");
            } else {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_MINI_POST");
                echo "\">";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "MINI_POST_IMG");
                echo "</a>";
            }
            echo "<span class=\"responsive-hide\">";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " <strong>";
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_AUTHOR_FULL");
            echo "</strong> &raquo; </span>";
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_DATE");
            echo " </p>
\t\t\t";
            // line 254
            // line 255
            echo "
\t\t\t";
            // line 256
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_UNAPPROVED")) {
                // line 257
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_APPROVE_ACTION");
                echo "\">
\t\t\t\t<p class=\"post-notice unapproved\">
\t\t\t\t\t<strong>";
                // line 259
                echo $this->env->getExtension('phpbb')->lang("POST_UNAPPROVED_ACTION");
                echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                // line 260
                echo $this->env->getExtension('phpbb')->lang("DISAPPROVE");
                echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                // line 261
                echo $this->env->getExtension('phpbb')->lang("APPROVE");
                echo "\" name=\"action[approve]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 262
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
                echo "\" />
\t\t\t\t\t";
                // line 263
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            } elseif ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_DELETED")) {
                // line 267
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_APPROVE_ACTION");
                echo "\">
\t\t\t\t<p class=\"post-notice deleted\">
\t\t\t\t\t<strong>";
                // line 269
                echo $this->env->getExtension('phpbb')->lang("POST_DELETED_ACTION");
                echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                // line 270
                echo $this->env->getExtension('phpbb')->lang("DELETE");
                echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                // line 271
                echo $this->env->getExtension('phpbb')->lang("RESTORE");
                echo "\" name=\"action[restore]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 272
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
                echo "\" />
\t\t\t\t\t";
                // line 273
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            }
            // line 277
            echo "
\t\t\t";
            // line 278
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_POST_REPORTED")) {
                // line 279
                echo "\t\t\t<p class=\"post-notice reported\">
\t\t\t\t<a href=\"";
                // line 280
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "U_MCP_REPORT");
                echo "\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("POST_REPORTED");
                echo "</strong></a>
\t\t\t</p>
\t\t\t";
            }
            // line 283
            echo "
\t\t\t<div class=\"content\">";
            // line 284
            echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "MESSAGE");
            echo "</div>

\t\t\t";
            // line 286
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_HAS_ATTACHMENTS")) {
                // line 287
                echo "\t\t\t\t<dl class=\"attachbox\">
\t\t\t\t\t<dt>
\t\t\t\t\t\t";
                // line 289
                echo $this->env->getExtension('phpbb')->lang("ATTACHMENTS");
                echo "
\t\t\t\t\t</dt>
\t\t\t\t\t";
                // line 291
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "attachment"));
                foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                    // line 292
                    echo "\t\t\t\t\t\t<dd>";
                    echo $this->getAttribute((isset($context["attachment"]) ? $context["attachment"] : null), "DISPLAY_ATTACHMENT");
                    echo "</dd>
\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 294
                echo "\t\t\t\t</dl>
\t\t\t";
            }
            // line 296
            echo "
\t\t\t";
            // line 297
            // line 298
            echo "\t\t\t";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "S_DISPLAY_NOTICE")) {
                echo "<div class=\"rules\">";
                echo $this->env->getExtension('phpbb')->lang("DOWNLOAD_NOTICE");
                echo "</div>";
            }
            // line 299
            echo "\t\t\t";
            if (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "DELETED_MESSAGE") || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "DELETE_REASON"))) {
                // line 300
                echo "\t\t\t\t<div class=\"notice post_deleted_msg\">
\t\t\t\t\t";
                // line 301
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "DELETED_MESSAGE");
                echo "
\t\t\t\t\t";
                // line 302
                if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "DELETE_REASON")) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "DELETE_REASON");
                    echo "</em>";
                }
                // line 303
                echo "\t\t\t\t</div>
\t\t\t";
            } elseif (($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "EDITED_MESSAGE") || $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "EDIT_REASON"))) {
                // line 305
                echo "\t\t\t\t<div class=\"notice\">
\t\t\t\t\t";
                // line 306
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "EDITED_MESSAGE");
                echo "
\t\t\t\t\t";
                // line 307
                if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "EDIT_REASON")) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "EDIT_REASON");
                    echo "</em>";
                }
                // line 308
                echo "\t\t\t\t</div>
\t\t\t";
            }
            // line 310
            echo "
\t\t\t";
            // line 311
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "BUMPED_MESSAGE")) {
                echo "<div class=\"notice\"><br /><br />";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "BUMPED_MESSAGE");
                echo "</div>";
            }
            // line 312
            echo "\t\t\t";
            // line 313
            echo "\t\t\t";
            if ($this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "SIGNATURE")) {
                echo "<div id=\"sig";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "POST_ID");
                echo "\" class=\"signature\">";
                echo $this->getAttribute((isset($context["postrow"]) ? $context["postrow"] : null), "SIGNATURE");
                echo "</div>";
            }
            // line 314
            echo "
\t\t\t";
            // line 315
            // line 316
            echo "\t\t\t</div>

\t\t</div>

\t\t<div class=\"back2top\"><a href=\"#top\" class=\"top\" title=\"";
            // line 320
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "</a></div>

\t\t</div>
\t</div>

\t<hr class=\"divider\" />
\t";
            // line 326
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['postrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 328
        echo "
";
        // line 329
        if ((isset($context["S_QUICK_REPLY"]) ? $context["S_QUICK_REPLY"] : null)) {
            // line 330
            echo "\t";
            $location = "quickreply_editor.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("quickreply_editor.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 332
        echo "
";
        // line 333
        if ((((isset($context["S_NUM_POSTS"]) ? $context["S_NUM_POSTS"] : null) > 1) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination")))) {
            // line 334
            echo "\t<form id=\"viewtopic\" method=\"post\" action=\"";
            echo (isset($context["S_TOPIC_ACTION"]) ? $context["S_TOPIC_ACTION"] : null);
            echo "\">
\t<fieldset class=\"display-options\" style=\"margin-top: 0; \">
\t\t";
            // line 336
            if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 337
                echo "\t\t<label>";
                echo $this->env->getExtension('phpbb')->lang("DISPLAY_POSTS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                echo "</label>
\t\t<label>";
                // line 338
                echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                echo " ";
                echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                echo "</label> <label>";
                echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                echo "</label>
\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 339
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t\t";
            }
            // line 341
            echo "\t</fieldset>
\t</form>
\t<hr />
";
        }
        // line 345
        echo "
";
        // line 346
        // line 347
        echo "<div class=\"action-bar bottom\">
\t<div class=\"buttons\">
\t\t";
        // line 349
        // line 350
        echo "
\t";
        // line 351
        if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["S_DISPLAY_REPLY_INFO"]) ? $context["S_DISPLAY_REPLY_INFO"] : null))) {
            // line 352
            echo "\t\t<a href=\"";
            echo (isset($context["U_POST_REPLY_TOPIC"]) ? $context["U_POST_REPLY_TOPIC"] : null);
            echo "\" class=\"button icon-button ";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo "locked-icon";
            } else {
                echo "reply-icon";
            }
            echo "\" title=\"";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("POST_REPLY");
            }
            echo "\">
\t\t\t";
            // line 353
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_POST_REPLY");
            }
            // line 354
            echo "\t\t</a>
\t";
        }
        // line 356
        echo "
\t\t";
        // line 357
        // line 358
        echo "\t</div>

\t";
        // line 360
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->env->loadTemplate("viewtopic_topic_tools.html")->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 361
        echo "
\t";
        // line 362
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod"))) {
            // line 363
            echo "\t\t<div class=\"dropdown-container dropdown-container-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo " dropdown-up dropdown-";
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            echo " dropdown-button-control\" id=\"quickmod\">
\t\t\t<span title=\"";
            // line 364
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "\" class=\"dropdown-trigger button icon-button modtools-icon dropdown-select\">";
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "</span>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 368
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod"));
            foreach ($context['_seq'] as $context["_key"] => $context["quickmod"]) {
                // line 369
                echo "\t\t\t\t\t";
                $value = twig_in_filter($this->getAttribute((isset($context["quickmod"]) ? $context["quickmod"] : null), "VALUE"), array(0 => "lock", 1 => "unlock", 2 => "delete_topic", 3 => "restore_topic", 4 => "make_normal", 5 => "make_sticky", 6 => "make_announce", 7 => "make_global"));
                $context['definition']->set('QUICKMOD_AJAX', $value);
                // line 370
                echo "\t\t\t\t\t<li><a href=\"";
                echo $this->getAttribute((isset($context["quickmod"]) ? $context["quickmod"] : null), "LINK");
                echo "\"";
                if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "QUICKMOD_AJAX")) {
                    echo " data-ajax=\"true\" data-refresh=\"true\"";
                }
                echo ">";
                echo $this->getAttribute((isset($context["quickmod"]) ? $context["quickmod"] : null), "TITLE");
                echo "</a></li>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['quickmod'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 372
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>
\t";
        }
        // line 376
        echo "
\t";
        // line 377
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination")) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 378
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 379
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "
\t\t\t";
            // line 380
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                // line 381
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
                // line 382
                echo "\t\t\t";
            } else {
                // line 383
                echo "\t\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 385
            echo "\t\t</div>
\t";
        }
        // line 387
        echo "\t<div class=\"clear\"></div>
</div>

";
        // line 390
        // line 391
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
        // line 392
        echo "
";
        // line 393
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 394
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 395
            if ((isset($context["U_VIEWONLINE"]) ? $context["U_VIEWONLINE"] : null)) {
                echo "<a href=\"";
                echo (isset($context["U_VIEWONLINE"]) ? $context["U_VIEWONLINE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("WHO_IS_ONLINE");
                echo "</a>";
            } else {
                echo $this->env->getExtension('phpbb')->lang("WHO_IS_ONLINE");
            }
            echo "</h3>
\t\t<p>";
            // line 396
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 399
        echo "
";
        // line 400
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
        return "viewtopic_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1453 => 400,  1450 => 399,  1444 => 396,  1432 => 395,  1429 => 394,  1427 => 393,  1424 => 392,  1412 => 391,  1411 => 390,  1406 => 387,  1402 => 385,  1396 => 383,  1393 => 382,  1380 => 381,  1378 => 380,  1374 => 379,  1371 => 378,  1369 => 377,  1366 => 376,  1360 => 372,  1345 => 370,  1341 => 369,  1337 => 368,  1328 => 364,  1321 => 363,  1319 => 362,  1316 => 361,  1304 => 360,  1300 => 358,  1299 => 357,  1296 => 356,  1292 => 354,  1286 => 353,  1269 => 352,  1267 => 351,  1264 => 350,  1263 => 349,  1259 => 347,  1258 => 346,  1255 => 345,  1249 => 341,  1244 => 339,  1236 => 338,  1228 => 337,  1226 => 336,  1220 => 334,  1218 => 333,  1215 => 332,  1201 => 330,  1199 => 329,  1196 => 328,  1191 => 326,  1180 => 320,  1174 => 316,  1173 => 315,  1170 => 314,  1161 => 313,  1159 => 312,  1153 => 311,  1150 => 310,  1146 => 308,  1137 => 307,  1133 => 306,  1130 => 305,  1126 => 303,  1117 => 302,  1113 => 301,  1110 => 300,  1107 => 299,  1100 => 298,  1099 => 297,  1096 => 296,  1092 => 294,  1083 => 292,  1079 => 291,  1074 => 289,  1070 => 287,  1068 => 286,  1063 => 284,  1060 => 283,  1052 => 280,  1049 => 279,  1047 => 278,  1044 => 277,  1037 => 273,  1033 => 272,  1029 => 271,  1025 => 270,  1021 => 269,  1015 => 267,  1008 => 263,  1004 => 262,  1000 => 261,  996 => 260,  992 => 259,  986 => 257,  984 => 256,  981 => 255,  980 => 254,  961 => 253,  960 => 252,  957 => 251,  954 => 250,  950 => 248,  948 => 247,  938 => 244,  935 => 243,  932 => 242,  922 => 239,  919 => 238,  916 => 237,  906 => 234,  903 => 233,  900 => 232,  890 => 229,  887 => 228,  884 => 227,  874 => 224,  871 => 223,  868 => 222,  858 => 219,  855 => 218,  852 => 217,  851 => 216,  848 => 215,  845 => 214,  843 => 213,  821 => 211,  811 => 209,  808 => 208,  802 => 205,  798 => 204,  793 => 203,  787 => 200,  783 => 199,  778 => 198,  775 => 197,  773 => 196,  767 => 192,  765 => 191,  758 => 186,  752 => 185,  748 => 183,  746 => 182,  739 => 180,  721 => 179,  717 => 177,  714 => 176,  710 => 175,  707 => 174,  703 => 173,  694 => 169,  688 => 167,  685 => 166,  682 => 165,  681 => 164,  678 => 163,  676 => 162,  670 => 161,  659 => 159,  656 => 158,  651 => 157,  650 => 156,  647 => 155,  639 => 153,  636 => 152,  634 => 151,  631 => 150,  621 => 149,  611 => 148,  594 => 147,  591 => 146,  581 => 145,  577 => 143,  575 => 142,  566 => 141,  565 => 140,  562 => 139,  560 => 138,  557 => 137,  544 => 136,  541 => 135,  540 => 134,  525 => 132,  517 => 131,  489 => 128,  479 => 126,  476 => 125,  474 => 124,  470 => 123,  467 => 122,  458 => 116,  454 => 115,  447 => 111,  444 => 110,  436 => 107,  432 => 105,  430 => 104,  427 => 103,  421 => 100,  417 => 98,  415 => 97,  406 => 94,  399 => 92,  396 => 91,  390 => 90,  389 => 89,  376 => 87,  353 => 86,  327 => 85,  315 => 84,  297 => 83,  295 => 82,  291 => 81,  277 => 78,  273 => 77,  263 => 71,  261 => 70,  257 => 68,  255 => 67,  251 => 65,  245 => 63,  242 => 62,  229 => 61,  227 => 60,  216 => 59,  213 => 58,  211 => 57,  208 => 56,  200 => 51,  192 => 50,  186 => 49,  182 => 48,  177 => 46,  174 => 45,  172 => 44,  169 => 43,  157 => 42,  153 => 40,  152 => 39,  149 => 38,  145 => 36,  139 => 35,  122 => 34,  120 => 33,  117 => 32,  116 => 31,  110 => 27,  104 => 23,  99 => 21,  94 => 20,  86 => 18,  84 => 17,  75 => 14,  73 => 13,  70 => 12,  57 => 9,  54 => 8,  52 => 7,  49 => 6,  43 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
