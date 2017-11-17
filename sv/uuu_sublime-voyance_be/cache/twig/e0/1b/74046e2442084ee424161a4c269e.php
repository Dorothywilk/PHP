<?php

/* viewforum_body.html */
class __TwigTemplate_e01b74046e2442084ee424161a4c269e extends Twig_Template
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
<h2 class=\"forum-title\">";
        // line 3
        echo "<a href=\"";
        echo (isset($context["U_VIEW_FORUM"]) ? $context["U_VIEW_FORUM"] : null);
        echo "\">";
        echo (isset($context["FORUM_NAME"]) ? $context["FORUM_NAME"] : null);
        echo "</a>";
        echo "</h2>

";
        // line 5
        if ((((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null) || (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) || (isset($context["U_MCP"]) ? $context["U_MCP"] : null))) {
            // line 6
            echo "<div>
\t<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the forum body -->
\t";
            // line 8
            if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
                echo "<div style=\"display: none !important;\">";
                echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
                echo "<br /></div>";
            }
            // line 9
            echo "\t";
            if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
                echo "<p><strong>";
                if ((isset($context["S_SINGLE_MODERATOR"]) ? $context["S_SINGLE_MODERATOR"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("MODERATOR");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("MODERATORS");
                }
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null);
                echo "</p>";
            }
            // line 10
            echo "</div>
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
";
        // line 28
        if ((isset($context["S_HAS_SUBFORUM"]) ? $context["S_HAS_SUBFORUM"] : null)) {
            // line 29
            if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["U_MARK_FORUMS"]) ? $context["U_MARK_FORUMS"] : null))) {
                // line 30
                echo "\t<div class=\"action-bar compact\">
\t\t<a href=\"";
                // line 31
                echo (isset($context["U_MARK_FORUMS"]) ? $context["U_MARK_FORUMS"] : null);
                echo "\" class=\"mark-read rightside\" data-ajax=\"mark_forums_read\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_SUBFORUMS_READ");
                echo "</a>
\t</div>
";
            }
            // line 34
            echo "\t";
            $location = "forumlist_body.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("forumlist_body.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 36
        echo "
";
        // line 37
        if (((((isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null)) || (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null))) {
            // line 38
            echo "\t<div class=\"action-bar top\">

\t";
            // line 40
            if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null))) {
                // line 41
                echo "\t\t<div class=\"buttons\">
\t\t\t";
                // line 42
                // line 43
                echo "
\t\t\t<a href=\"";
                // line 44
                echo (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null);
                echo "\" class=\"button icon-button ";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo "locked-icon";
                } else {
                    echo "post-icon";
                }
                echo "\" title=\"";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t\t";
                // line 45
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_NEW_TOPIC");
                }
                // line 46
                echo "\t\t\t</a>

\t\t\t";
                // line 48
                // line 49
                echo "\t\t</div>
\t";
            }
            // line 51
            echo "
\t";
            // line 52
            if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
                // line 53
                echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"forum-search\" action=\"";
                // line 54
                echo (isset($context["S_SEARCHBOX_ACTION"]) ? $context["S_SEARCHBOX_ACTION"] : null);
                echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\" type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
                // line 56
                echo $this->env->getExtension('phpbb')->lang("SEARCH_FORUM");
                echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
                // line 57
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "</button>
\t\t\t\t<a href=\"";
                // line 58
                echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
                echo "\" class=\"button icon-button search-adv-icon\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "</a>
\t\t\t\t";
                // line 59
                echo (isset($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"]) ? $context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] : null);
                echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
            }
            // line 64
            echo "
\t<div class=\"pagination\">
\t\t";
            // line 66
            if ((((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null)) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow")))) {
                echo "<a href=\"";
                echo (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null);
                echo "\" class=\"mark\" accesskey=\"m\" data-ajax=\"mark_topics_read\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_TOPICS_READ");
                echo "</a> &bull; ";
            }
            // line 67
            echo "\t\t";
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "
\t\t";
            // line 68
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                // line 69
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
                // line 70
                echo "\t\t";
            } else {
                // line 71
                echo "\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t";
            }
            // line 73
            echo "\t</div>

\t</div>
";
        }
        // line 77
        echo "
";
        // line 78
        if ((isset($context["S_NO_READ_ACCESS"]) ? $context["S_NO_READ_ACCESS"] : null)) {
            // line 79
            echo "
\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
            // line 82
            echo $this->env->getExtension('phpbb')->lang("NO_READ_ACCESS");
            echo "</strong>
\t\t</div>
\t</div>

\t";
            // line 86
            if (((!(isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
                // line 87
                echo "
\t\t<form action=\"";
                // line 88
                echo (isset($context["S_LOGIN_ACTION"]) ? $context["S_LOGIN_ACTION"] : null);
                echo "\" method=\"post\">

\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">

\t\t\t<div class=\"content\">
\t\t\t\t<h3><a href=\"";
                // line 94
                echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
                echo "</a>";
                if ((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null)) {
                    echo "&nbsp; &bull; &nbsp;<a href=\"";
                    echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("REGISTER");
                    echo "</a>";
                }
                echo "</h3>

\t\t\t\t<fieldset class=\"fields1\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"username\">";
                // line 98
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"username\" id=\"username\" size=\"25\" value=\"";
                // line 99
                echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
                echo "\" class=\"inputbox autowidth\" /></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"password\">";
                // line 102
                echo $this->env->getExtension('phpbb')->lang("PASSWORD");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"password\" tabindex=\"2\" id=\"password\" name=\"password\" size=\"25\" class=\"inputbox autowidth\" /></dd>
\t\t\t\t\t";
                // line 104
                if ((isset($context["S_AUTOLOGIN_ENABLED"]) ? $context["S_AUTOLOGIN_ENABLED"] : null)) {
                    echo "<dd><label for=\"autologin\"><input type=\"checkbox\" name=\"autologin\" id=\"autologin\" tabindex=\"3\" /> ";
                    echo $this->env->getExtension('phpbb')->lang("LOG_ME_IN");
                    echo "</label></dd>";
                }
                // line 105
                echo "\t\t\t\t\t<dd><label for=\"viewonline\"><input type=\"checkbox\" name=\"viewonline\" id=\"viewonline\" tabindex=\"4\" /> ";
                echo $this->env->getExtension('phpbb')->lang("HIDE_ME");
                echo "</label></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd><input type=\"submit\" name=\"login\" tabindex=\"5\" value=\"";
                // line 109
                echo $this->env->getExtension('phpbb')->lang("LOGIN");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 111
                echo (isset($context["S_LOGIN_REDIRECT"]) ? $context["S_LOGIN_REDIRECT"] : null);
                echo "
\t\t\t\t</fieldset>
\t\t\t</div>

\t\t\t</div>
\t\t</div>

\t\t</form>

\t";
            }
            // line 121
            echo "
";
        }
        // line 123
        echo "
";
        // line 124
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow"));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
            // line 125
            echo "
\t";
            // line 126
            if (((!$this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_TYPE_SWITCH")) && (!$this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_FIRST_ROW")))) {
                // line 127
                echo "\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 131
            echo "
\t";
            // line 132
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_FIRST_ROW") || (!$this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_TYPE_SWITCH")))) {
                // line 133
                echo "\t\t<div class=\"forumbg";
                if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_TYPE_SWITCH") && ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_ANNOUNCE") || $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_GLOBAL")))) {
                    echo " announcement";
                }
                echo "\">
\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"icon\">
\t\t\t\t\t<dt";
                // line 138
                if ((isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)) {
                    echo " id=\"active_topics\"";
                }
                echo "><div class=\"list-inner\">";
                if ((isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("ACTIVE_TOPICS");
                } elseif (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_TYPE_SWITCH") && ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_ANNOUNCE") || $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_GLOBAL")))) {
                    echo $this->env->getExtension('phpbb')->lang("ANNOUNCEMENTS");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("TOPICS");
                }
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 139
                echo $this->env->getExtension('phpbb')->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                // line 140
                echo $this->env->getExtension('phpbb')->lang("VIEWS");
                echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 141
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">
\t";
            }
            // line 147
            echo "
\t\t<li class=\"row";
            // line 148
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_ROW_COUNT") % 2 == 0)) {
                echo " bg1";
            } else {
                echo " bg2";
            }
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_GLOBAL")) {
                echo " global-announce";
            }
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_ANNOUNCE")) {
                echo " announce";
            }
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_STICKY")) {
                echo " sticky";
            }
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_REPORTED")) {
                echo " reported";
            }
            echo "\">
\t\t\t<dl class=\"icon ";
            // line 149
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_IMG_STYLE");
            echo "\">
\t\t\t\t<dt";
            // line 150
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_ICON_IMG") && (isset($context["S_TOPIC_ICONS"]) ? $context["S_TOPIC_ICONS"] : null))) {
                echo " style=\"background-image: url(";
                echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_ICON_IMG");
                echo "); background-repeat: no-repeat;\"";
            }
            echo " title=\"";
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_FOLDER_IMG_ALT");
            echo "\">
\t\t\t\t\t";
            // line 151
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_UNREAD_TOPIC") && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_NEWEST_POST");
                echo "\" class=\"icon-link\"></a>";
            }
            // line 152
            echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
            // line 153
            // line 154
            echo "\t\t\t\t\t\t";
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_UNREAD_TOPIC") && (!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)))) {
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
            echo "</a>
\t\t\t\t\t\t";
            // line 155
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_UNAPPROVED") || $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POSTS_UNAPPROVED"))) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_MCP_QUEUE");
                echo "\">";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "UNAPPROVED_IMG");
                echo "</a> ";
            }
            // line 156
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_DELETED")) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_MCP_QUEUE");
                echo "\">";
                echo (isset($context["DELETED_IMG"]) ? $context["DELETED_IMG"] : null);
                echo "</a> ";
            }
            // line 157
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_TOPIC_REPORTED")) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_MCP_REPORT");
                echo "\">";
                echo (isset($context["REPORTED_IMG"]) ? $context["REPORTED_IMG"] : null);
                echo "</a>";
            }
            echo "<br />

\t\t\t\t\t\t";
            // line 159
            if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 160
                echo "\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                // line 161
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
\t\t\t\t\t\t\t";
                // line 162
                if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_GLOBAL") && ((isset($context["FORUM_ID"]) ? $context["FORUM_ID"] : null) != $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "FORUM_ID")))) {
                    echo "<br />";
                    echo $this->env->getExtension('phpbb')->lang("POSTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_VIEW_FORUM");
                    echo "\">";
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "FORUM_NAME");
                    echo "</a>";
                }
                // line 163
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                // line 164
                if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "REPLIES")) {
                    echo "<span class=\"responsive-show left-box\" style=\"display: none;\">";
                    echo $this->env->getExtension('phpbb')->lang("REPLIES");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "REPLIES");
                    echo "</strong></span>";
                }
                // line 165
                echo "\t\t\t\t\t\t";
            }
            // line 166
            echo "
\t\t\t\t\t\t";
            // line 167
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "pagination"))) {
                // line 168
                echo "\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                // line 170
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "pagination"));
                foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                    // line 171
                    echo "\t\t\t\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_PREV")) {
                        // line 172
                        echo "\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_CURRENT")) {
                        echo "<li class=\"active\"><span>";
                        echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_NUMBER");
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_ELLIPSIS")) {
                        // line 173
                        echo "<li class=\"ellipsis\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "S_IS_NEXT")) {
                        // line 175
                        echo "\t\t\t\t\t\t\t\t";
                    } else {
                        echo "<li><a href=\"";
                        echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_URL");
                        echo "\">";
                        echo $this->getAttribute((isset($context["pagination"]) ? $context["pagination"] : null), "PAGE_NUMBER");
                        echo "</a></li>
\t\t\t\t\t\t\t\t";
                    }
                    // line 177
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 178
                echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            // line 181
            echo "
\t\t\t\t\t\t<div class=\"responsive-hide\">
\t\t\t\t\t\t\t";
            // line 183
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_HAS_POLL")) {
                echo (isset($context["POLL_IMG"]) ? $context["POLL_IMG"] : null);
                echo " ";
            }
            // line 184
            echo "\t\t\t\t\t\t\t";
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "ATTACH_ICON_IMG")) {
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "ATTACH_ICON_IMG");
                echo " ";
            }
            // line 185
            echo "\t\t\t\t\t\t\t";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " ";
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "TOPIC_AUTHOR_FULL");
            echo " &raquo; ";
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "FIRST_POST_TIME");
            echo "
\t\t\t\t\t\t\t";
            // line 186
            if (($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_POST_GLOBAL") && ((isset($context["FORUM_ID"]) ? $context["FORUM_ID"] : null) != $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "FORUM_ID")))) {
                echo " &raquo; ";
                echo $this->env->getExtension('phpbb')->lang("IN");
                echo " <a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_VIEW_FORUM");
                echo "\">";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "FORUM_NAME");
                echo "</a>";
            }
            // line 187
            echo "\t\t\t\t\t\t</div>

\t\t\t\t\t\t";
            // line 189
            // line 190
            echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"posts\">";
            // line 192
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "REPLIES");
            echo " <dfn>";
            echo $this->env->getExtension('phpbb')->lang("REPLIES");
            echo "</dfn></dd>
\t\t\t\t<dd class=\"views\">";
            // line 193
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "VIEWS");
            echo " <dfn>";
            echo $this->env->getExtension('phpbb')->lang("VIEWS");
            echo "</dfn></dd>
\t\t\t\t<dd class=\"lastpost\"><span><dfn>";
            // line 194
            echo $this->env->getExtension('phpbb')->lang("LAST_POST");
            echo " </dfn>";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " ";
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "LAST_POST_AUTHOR_FULL");
            echo "
\t\t\t\t\t";
            // line 195
            if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "U_LAST_POST");
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                echo "</a> ";
            }
            echo "<br />";
            echo $this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "LAST_POST_TIME");
            echo "</span>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t</li>

\t";
            // line 200
            if ($this->getAttribute((isset($context["topicrow"]) ? $context["topicrow"] : null), "S_LAST_ROW")) {
                // line 201
                echo "\t\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 205
            echo "
";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 207
            echo "\t";
            if ((isset($context["S_IS_POSTABLE"]) ? $context["S_IS_POSTABLE"] : null)) {
                // line 208
                echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
                // line 210
                echo $this->env->getExtension('phpbb')->lang("NO_TOPICS");
                echo "</strong>
\t\t</div>
\t</div>
\t";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 215
        echo "
";
        // line 216
        if (((isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null) && (!(isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)))) {
            // line 217
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_FORUM_ACTION"]) ? $context["S_FORUM_ACTION"] : null);
            echo "\">
\t\t<fieldset class=\"display-options\">
\t";
            // line 219
            if ((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 220
                echo "\t\t\t<label>";
                echo $this->env->getExtension('phpbb')->lang("DISPLAY_TOPICS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                echo "</label>
\t\t\t<label>";
                // line 221
                echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                echo " ";
                echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                echo "</label>
\t\t\t<label>";
                // line 222
                echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                echo "</label>
\t\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 223
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t";
            }
            // line 225
            echo "\t\t</fieldset>
\t</form>
\t<hr />
";
        }
        // line 229
        echo "
";
        // line 230
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow")) && (!(isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)))) {
            // line 231
            echo "\t<div class=\"action-bar bottom\">
\t\t";
            // line 232
            if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null))) {
                // line 233
                echo "\t\t\t<div class=\"buttons\">
\t\t\t\t";
                // line 234
                // line 235
                echo "
\t\t\t\t<a href=\"";
                // line 236
                echo (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null);
                echo "\" class=\"button icon-button ";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo "locked-icon";
                } else {
                    echo "post-icon";
                }
                echo "\" title=\"";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t\t\t";
                // line 237
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_NEW_TOPIC");
                }
                // line 238
                echo "\t\t\t\t</a>

\t\t\t\t";
                // line 240
                // line 241
                echo "\t\t\t</div>
\t\t";
            }
            // line 243
            echo "
\t\t<div class=\"pagination\">
\t\t\t";
            // line 245
            if ((((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null)) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow")))) {
                echo "<a href=\"";
                echo (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null);
                echo "\" data-ajax=\"mark_topics_read\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_TOPICS_READ");
                echo "</a> &bull; ";
            }
            // line 246
            echo "\t\t\t";
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "
\t\t\t";
            // line 247
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                // line 248
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
                // line 249
                echo "\t\t\t";
            } else {
                // line 250
                echo "\t\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 252
            echo "\t\t</div>
\t</div>
";
        }
        // line 255
        echo "
";
        // line 256
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
        // line 257
        echo "
";
        // line 258
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 259
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 260
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
            // line 261
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 264
        echo "
";
        // line 265
        if ((isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null)) {
            // line 266
            echo "\t<div class=\"stat-block permissions\">
\t\t<h3>";
            // line 267
            echo $this->env->getExtension('phpbb')->lang("FORUM_PERMISSIONS");
            echo "</h3>
\t\t<p>";
            // line 268
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rules"));
            foreach ($context['_seq'] as $context["_key"] => $context["rules"]) {
                echo $this->getAttribute((isset($context["rules"]) ? $context["rules"] : null), "RULE");
                echo "<br />";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rules'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</p>
\t</div>
";
        }
        // line 271
        echo "
";
        // line 272
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
        return "viewforum_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  955 => 272,  952 => 271,  938 => 268,  934 => 267,  931 => 266,  929 => 265,  926 => 264,  920 => 261,  908 => 260,  905 => 259,  903 => 258,  900 => 257,  888 => 256,  885 => 255,  880 => 252,  874 => 250,  871 => 249,  858 => 248,  856 => 247,  851 => 246,  843 => 245,  839 => 243,  835 => 241,  834 => 240,  830 => 238,  824 => 237,  808 => 236,  805 => 235,  804 => 234,  801 => 233,  799 => 232,  796 => 231,  794 => 230,  791 => 229,  785 => 225,  780 => 223,  776 => 222,  770 => 221,  762 => 220,  760 => 219,  754 => 217,  752 => 216,  749 => 215,  738 => 210,  734 => 208,  731 => 207,  725 => 205,  719 => 201,  717 => 200,  699 => 195,  691 => 194,  685 => 193,  679 => 192,  675 => 190,  674 => 189,  670 => 187,  660 => 186,  651 => 185,  645 => 184,  640 => 183,  636 => 181,  631 => 178,  625 => 177,  615 => 175,  609 => 173,  601 => 172,  598 => 171,  594 => 170,  590 => 168,  588 => 167,  585 => 166,  582 => 165,  573 => 164,  570 => 163,  558 => 162,  544 => 161,  541 => 160,  539 => 159,  527 => 157,  518 => 156,  510 => 155,  495 => 154,  494 => 153,  491 => 152,  485 => 151,  474 => 150,  470 => 149,  450 => 148,  447 => 147,  438 => 141,  434 => 140,  430 => 139,  416 => 138,  405 => 133,  403 => 132,  400 => 131,  394 => 127,  392 => 126,  389 => 125,  384 => 124,  381 => 123,  377 => 121,  364 => 111,  359 => 109,  351 => 105,  345 => 104,  339 => 102,  333 => 99,  328 => 98,  311 => 94,  302 => 88,  299 => 87,  297 => 86,  290 => 82,  285 => 79,  283 => 78,  280 => 77,  274 => 73,  268 => 71,  265 => 70,  252 => 69,  250 => 68,  245 => 67,  237 => 66,  233 => 64,  225 => 59,  217 => 58,  211 => 57,  207 => 56,  202 => 54,  199 => 53,  197 => 52,  194 => 51,  190 => 49,  189 => 48,  185 => 46,  179 => 45,  163 => 44,  160 => 43,  159 => 42,  156 => 41,  154 => 40,  150 => 38,  148 => 37,  145 => 36,  131 => 34,  123 => 31,  120 => 30,  118 => 29,  116 => 28,  113 => 27,  107 => 23,  102 => 21,  97 => 20,  89 => 18,  87 => 17,  78 => 14,  76 => 13,  73 => 12,  69 => 10,  55 => 9,  49 => 8,  45 => 6,  43 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
