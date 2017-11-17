<?php

/* memberlist_view.html */
class __TwigTemplate_a08e8c8ac86a00296ed67c5c5fe59936 extends Twig_Template
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
<h2 class=\"memberlist-title\">";
        // line 3
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        echo "</h2>

";
        // line 5
        // line 6
        echo "
<form method=\"post\" action=\"";
        // line 7
        echo (isset($context["S_PROFILE_ACTION"]) ? $context["S_PROFILE_ACTION"] : null);
        echo "\" id=\"viewprofile\">
<div class=\"panel bg1";
        // line 8
        if ((isset($context["S_ONLINE"]) ? $context["S_ONLINE"] : null)) {
            echo " online";
        }
        echo "\">
\t<div class=\"inner\">

\t";
        // line 11
        if ((isset($context["AVATAR_IMG"]) ? $context["AVATAR_IMG"] : null)) {
            // line 12
            echo "\t\t<dl class=\"left-box\">
\t\t\t<dt class=\"profile-avatar\">";
            // line 13
            echo (isset($context["AVATAR_IMG"]) ? $context["AVATAR_IMG"] : null);
            echo "</dt>
\t\t\t";
            // line 14
            if ((isset($context["RANK_TITLE"]) ? $context["RANK_TITLE"] : null)) {
                echo "<dd style=\"text-align: center;\">";
                echo (isset($context["RANK_TITLE"]) ? $context["RANK_TITLE"] : null);
                echo "</dd>";
            }
            // line 15
            echo "\t\t\t";
            if ((isset($context["RANK_IMG"]) ? $context["RANK_IMG"] : null)) {
                echo "<dd style=\"text-align: center;\">";
                echo (isset($context["RANK_IMG"]) ? $context["RANK_IMG"] : null);
                echo "</dd>";
            }
            // line 16
            echo "\t\t</dl>
\t";
        }
        // line 18
        echo "
\t<dl class=\"left-box details profile-details\">
\t\t<dt>";
        // line 20
        echo $this->env->getExtension('phpbb')->lang("USERNAME");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt>
\t\t<dd>
\t\t\t";
        // line 22
        if ((isset($context["USER_COLOR"]) ? $context["USER_COLOR"] : null)) {
            echo "<span style=\"color: ";
            echo (isset($context["USER_COLOR"]) ? $context["USER_COLOR"] : null);
            echo "; font-weight: bold;\">";
        } else {
            echo "<span>";
        }
        echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
        echo "</span>
\t\t\t";
        // line 23
        if ((isset($context["U_EDIT_SELF"]) ? $context["U_EDIT_SELF"] : null)) {
            echo " [ <a href=\"";
            echo (isset($context["U_EDIT_SELF"]) ? $context["U_EDIT_SELF"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("EDIT_PROFILE");
            echo "</a> ]";
        }
        // line 24
        echo "\t\t\t";
        if ((isset($context["U_USER_ADMIN"]) ? $context["U_USER_ADMIN"] : null)) {
            echo " [ <a href=\"";
            echo (isset($context["U_USER_ADMIN"]) ? $context["U_USER_ADMIN"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("USER_ADMIN");
            echo "</a> ]";
        }
        // line 25
        echo "\t\t\t";
        if ((isset($context["U_USER_BAN"]) ? $context["U_USER_BAN"] : null)) {
            echo " [ <a href=\"";
            echo (isset($context["U_USER_BAN"]) ? $context["U_USER_BAN"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("USER_BAN");
            echo "</a> ]";
        }
        // line 26
        echo "\t\t\t";
        if ((isset($context["U_SWITCH_PERMISSIONS"]) ? $context["U_SWITCH_PERMISSIONS"] : null)) {
            echo " [ <a href=\"";
            echo (isset($context["U_SWITCH_PERMISSIONS"]) ? $context["U_SWITCH_PERMISSIONS"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("USE_PERMISSIONS");
            echo "</a> ]";
        }
        // line 27
        echo "\t\t</dd>
\t\t";
        // line 28
        if ((!(isset($context["AVATAR_IMG"]) ? $context["AVATAR_IMG"] : null))) {
            // line 29
            echo "\t\t\t";
            if ((isset($context["RANK_TITLE"]) ? $context["RANK_TITLE"] : null)) {
                echo "<dt>";
                echo $this->env->getExtension('phpbb')->lang("RANK");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</dt> <dd>";
                echo (isset($context["RANK_TITLE"]) ? $context["RANK_TITLE"] : null);
                echo "</dd>";
            }
            // line 30
            echo "\t\t\t";
            if ((isset($context["RANK_IMG"]) ? $context["RANK_IMG"] : null)) {
                echo "<dt>";
                if ((isset($context["RANK_TITLE"]) ? $context["RANK_TITLE"] : null)) {
                    echo "&nbsp;";
                } else {
                    echo $this->env->getExtension('phpbb')->lang("RANK");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                }
                echo "</dt> <dd>";
                echo (isset($context["RANK_IMG"]) ? $context["RANK_IMG"] : null);
                echo "</dd>";
            }
            // line 31
            echo "\t\t";
        }
        // line 32
        echo "\t\t";
        if ((isset($context["S_USER_INACTIVE"]) ? $context["S_USER_INACTIVE"] : null)) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("USER_IS_INACTIVE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd>";
            echo (isset($context["USER_INACTIVE_REASON"]) ? $context["USER_INACTIVE_REASON"] : null);
            echo "</dd>";
        }
        // line 33
        echo "\t\t";
        if (((isset($context["AGE"]) ? $context["AGE"] : null) !== "")) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("AGE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd>";
            echo (isset($context["AGE"]) ? $context["AGE"] : null);
            echo "</dd>";
        }
        // line 34
        echo "\t\t";
        if ((isset($context["S_GROUP_OPTIONS"]) ? $context["S_GROUP_OPTIONS"] : null)) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("USERGROUPS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd><select name=\"g\">";
            echo (isset($context["S_GROUP_OPTIONS"]) ? $context["S_GROUP_OPTIONS"] : null);
            echo "</select> <input type=\"submit\" name=\"submit\" value=\"";
            echo $this->env->getExtension('phpbb')->lang("GO");
            echo "\" class=\"button2\" /></dd>";
        }
        // line 35
        echo "\t\t";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "custom_fields"));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
            // line 36
            echo "\t\t\t";
            if ((!$this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "S_PROFILE_CONTACT"))) {
                // line 37
                echo "\t\t\t\t<dt>";
                echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_NAME");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</dt> <dd>";
                echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_VALUE");
                echo "</dd>
\t\t\t";
            }
            // line 39
            echo "\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 40
        echo "\t\t";
        if (((isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null) && (isset($context["S_ZEBRA"]) ? $context["S_ZEBRA"] : null))) {
            // line 41
            echo "\t\t\t";
            if ((isset($context["U_REMOVE_FRIEND"]) ? $context["U_REMOVE_FRIEND"] : null)) {
                // line 42
                echo "\t\t\t\t<dt>&nbsp;</dt> <dd class=\"zebra\"><a href=\"";
                echo (isset($context["U_REMOVE_FRIEND"]) ? $context["U_REMOVE_FRIEND"] : null);
                echo "\" data-ajax=\"zebra\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("REMOVE_FRIEND");
                echo "</strong></a></dd>
\t\t\t";
            } elseif ((isset($context["U_REMOVE_FOE"]) ? $context["U_REMOVE_FOE"] : null)) {
                // line 44
                echo "\t\t\t\t<dt>&nbsp;</dt> <dd class=\"zebra\"><a href=\"";
                echo (isset($context["U_REMOVE_FOE"]) ? $context["U_REMOVE_FOE"] : null);
                echo "\" data-ajax=\"zebra\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("REMOVE_FOE");
                echo "</strong></a></dd>
\t\t\t";
            } else {
                // line 46
                echo "\t\t\t\t";
                if ((isset($context["U_ADD_FRIEND"]) ? $context["U_ADD_FRIEND"] : null)) {
                    // line 47
                    echo "\t\t\t\t\t<dt>&nbsp;</dt> <dd class=\"zebra\"><a href=\"";
                    echo (isset($context["U_ADD_FRIEND"]) ? $context["U_ADD_FRIEND"] : null);
                    echo "\" data-ajax=\"zebra\"><strong>";
                    echo $this->env->getExtension('phpbb')->lang("ADD_FRIEND");
                    echo "</strong></a></dd>
\t\t\t\t";
                }
                // line 49
                echo "\t\t\t\t";
                if ((isset($context["U_ADD_FOE"]) ? $context["U_ADD_FOE"] : null)) {
                    // line 50
                    echo "\t\t\t\t\t<dt>&nbsp;</dt> <dd class=\"zebra\"><a href=\"";
                    echo (isset($context["U_ADD_FOE"]) ? $context["U_ADD_FOE"] : null);
                    echo "\" data-ajax=\"zebra\"><strong>";
                    echo $this->env->getExtension('phpbb')->lang("ADD_FOE");
                    echo "</strong></a></dd>
\t\t\t\t";
                }
                // line 52
                echo "\t\t\t";
            }
            // line 53
            echo "\t\t";
        }
        // line 54
        echo "\t</dl>

\t</div>
</div>

";
        // line 59
        // line 60
        echo "<div class=\"panel bg2\">
\t<div class=\"inner\">

\t<div class=\"column1\">
\t\t<h3>";
        // line 64
        echo $this->env->getExtension('phpbb')->lang("CONTACT_USER");
        echo "</h3>

\t\t<dl class=\"details\">
\t\t";
        // line 67
        if ((isset($context["U_EMAIL"]) ? $context["U_EMAIL"] : null)) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("EMAIL_ADDRESS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd><a href=\"";
            echo (isset($context["U_EMAIL"]) ? $context["U_EMAIL"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEND_EMAIL_USER");
            echo "</a></dd>";
        }
        // line 68
        echo "\t\t";
        if ((isset($context["U_PM"]) ? $context["U_PM"] : null)) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("PM");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd><a href=\"";
            echo (isset($context["U_PM"]) ? $context["U_PM"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEND_PRIVATE_MESSAGE");
            echo "</a></dd>";
        }
        // line 69
        echo "\t\t";
        if (((isset($context["U_JABBER"]) ? $context["U_JABBER"] : null) && (isset($context["S_JABBER_ENABLED"]) ? $context["S_JABBER_ENABLED"] : null))) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("JABBER");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd><a href=\"";
            echo (isset($context["U_JABBER"]) ? $context["U_JABBER"] : null);
            echo "\" onclick=\"popup(this.href, 750, 320); return false;\">";
            echo $this->env->getExtension('phpbb')->lang("SEND_JABBER_MESSAGE");
            echo "</a></dd>";
        } elseif ((isset($context["USER_JABBER"]) ? $context["USER_JABBER"] : null)) {
            echo "<dt>";
            echo $this->env->getExtension('phpbb')->lang("JABBER");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd>";
            echo (isset($context["USER_JABBER"]) ? $context["USER_JABBER"] : null);
            echo "</dd>";
        }
        // line 70
        echo "\t\t";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "custom_fields"));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
            // line 71
            echo "\t\t\t";
            if ($this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "S_PROFILE_CONTACT")) {
                // line 72
                echo "\t\t\t\t<dt>";
                echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_NAME");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</dt>
\t\t\t\t";
                // line 73
                if ($this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_CONTACT")) {
                    // line 74
                    echo "\t\t\t\t\t<dd><a href=\"";
                    echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_CONTACT");
                    echo "\">";
                    echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_DESC");
                    echo "</a></dd>
\t\t\t\t";
                } else {
                    // line 76
                    echo "\t\t\t\t\t<dd>";
                    echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_VALUE");
                    echo "</dd>
\t\t\t\t";
                }
                // line 78
                echo "\t\t\t";
            }
            // line 79
            echo "\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 80
        echo "\t\t";
        if ((isset($context["S_PROFILE_FIELD1"]) ? $context["S_PROFILE_FIELD1"] : null)) {
            // line 81
            echo "\t\t\t<!-- NOTE: Use a construct like this to include admin defined profile fields. Replace FIELD1 with the name of your field. -->
\t\t\t<dt>";
            // line 82
            echo (isset($context["PROFILE_FIELD1_NAME"]) ? $context["PROFILE_FIELD1_NAME"] : null);
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd>";
            echo (isset($context["PROFILE_FIELD1_VALUE"]) ? $context["PROFILE_FIELD1_VALUE"] : null);
            echo "</dd>
\t\t";
        }
        // line 84
        echo "\t\t</dl>
\t</div>

\t<div class=\"column2\">
\t\t<h3>";
        // line 88
        echo $this->env->getExtension('phpbb')->lang("USER_FORUM");
        echo "</h3>
\t\t<dl class=\"details\">
\t\t\t";
        // line 90
        // line 91
        echo "\t\t\t<dt>";
        echo $this->env->getExtension('phpbb')->lang("JOINED");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt> <dd>";
        echo (isset($context["JOINED"]) ? $context["JOINED"] : null);
        echo "</dd>
\t\t\t<dt>";
        // line 92
        echo $this->env->getExtension('phpbb')->lang("LAST_ACTIVE");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt> <dd>";
        echo (isset($context["LAST_ACTIVE"]) ? $context["LAST_ACTIVE"] : null);
        echo "</dd>
\t\t\t";
        // line 93
        if ((isset($context["S_WARNINGS"]) ? $context["S_WARNINGS"] : null)) {
            // line 94
            echo "\t\t\t<dt>";
            echo $this->env->getExtension('phpbb')->lang("WARNINGS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </dt>
\t\t\t<dd><strong>";
            // line 95
            echo (isset($context["WARNINGS"]) ? $context["WARNINGS"] : null);
            echo "</strong>";
            if (((isset($context["U_NOTES"]) ? $context["U_NOTES"] : null) || (isset($context["U_WARN"]) ? $context["U_WARN"] : null))) {
                echo " [ ";
                if ((isset($context["U_NOTES"]) ? $context["U_NOTES"] : null)) {
                    echo "<a href=\"";
                    echo (isset($context["U_NOTES"]) ? $context["U_NOTES"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("VIEW_NOTES");
                    echo "</a>";
                }
                echo " ";
                if ((isset($context["U_WARN"]) ? $context["U_WARN"] : null)) {
                    if ((isset($context["U_NOTES"]) ? $context["U_NOTES"] : null)) {
                        echo " | ";
                    }
                    echo "<a href=\"";
                    echo (isset($context["U_WARN"]) ? $context["U_WARN"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                    echo "</a>";
                }
                echo " ]";
            }
            echo "</dd>
\t\t\t";
        }
        // line 97
        echo "\t\t\t<dt>";
        echo $this->env->getExtension('phpbb')->lang("TOTAL_POSTS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</dt>
\t\t\t\t<dd>";
        // line 98
        echo (isset($context["POSTS"]) ? $context["POSTS"] : null);
        echo " ";
        if ((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
            echo "| <strong><a href=\"";
            echo (isset($context["U_SEARCH_USER"]) ? $context["U_SEARCH_USER"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_USER_POSTS");
            echo "</a></strong>";
        }
        // line 99
        echo "\t\t\t\t\t";
        if ((isset($context["POSTS_PCT"]) ? $context["POSTS_PCT"] : null)) {
            echo "<br />(";
            echo (isset($context["POSTS_PCT"]) ? $context["POSTS_PCT"] : null);
            echo " / ";
            echo (isset($context["POSTS_DAY"]) ? $context["POSTS_DAY"] : null);
            echo ")";
        }
        // line 100
        echo "\t\t\t\t\t";
        if (((isset($context["POSTS_IN_QUEUE"]) ? $context["POSTS_IN_QUEUE"] : null) && (isset($context["U_MCP_QUEUE"]) ? $context["U_MCP_QUEUE"] : null))) {
            echo "<br />(<a href=\"";
            echo (isset($context["U_MCP_QUEUE"]) ? $context["U_MCP_QUEUE"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("POSTS_IN_QUEUE");
            echo "</a>)";
        } elseif ((isset($context["POSTS_IN_QUEUE"]) ? $context["POSTS_IN_QUEUE"] : null)) {
            echo "<br />(";
            echo $this->env->getExtension('phpbb')->lang("POSTS_IN_QUEUE");
            echo ")";
        }
        // line 101
        echo "\t\t\t\t</dd>
\t\t\t";
        // line 102
        if (((isset($context["S_SHOW_ACTIVITY"]) ? $context["S_SHOW_ACTIVITY"] : null) && (isset($context["POSTS"]) ? $context["POSTS"] : null))) {
            // line 103
            echo "\t\t\t\t<dt>";
            echo $this->env->getExtension('phpbb')->lang("ACTIVE_IN_FORUM");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd>";
            if (((isset($context["ACTIVE_FORUM"]) ? $context["ACTIVE_FORUM"] : null) != "")) {
                echo "<strong><a href=\"";
                echo (isset($context["U_ACTIVE_FORUM"]) ? $context["U_ACTIVE_FORUM"] : null);
                echo "\">";
                echo (isset($context["ACTIVE_FORUM"]) ? $context["ACTIVE_FORUM"] : null);
                echo "</a></strong><br />(";
                echo (isset($context["ACTIVE_FORUM_POSTS"]) ? $context["ACTIVE_FORUM_POSTS"] : null);
                echo " / ";
                echo (isset($context["ACTIVE_FORUM_PCT"]) ? $context["ACTIVE_FORUM_PCT"] : null);
                echo ")";
            } else {
                echo " - ";
            }
            echo "</dd>
\t\t\t\t<dt>";
            // line 104
            echo $this->env->getExtension('phpbb')->lang("ACTIVE_IN_TOPIC");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</dt> <dd>";
            if (((isset($context["ACTIVE_TOPIC"]) ? $context["ACTIVE_TOPIC"] : null) != "")) {
                echo "<strong><a href=\"";
                echo (isset($context["U_ACTIVE_TOPIC"]) ? $context["U_ACTIVE_TOPIC"] : null);
                echo "\">";
                echo (isset($context["ACTIVE_TOPIC"]) ? $context["ACTIVE_TOPIC"] : null);
                echo "</a></strong><br />(";
                echo (isset($context["ACTIVE_TOPIC_POSTS"]) ? $context["ACTIVE_TOPIC_POSTS"] : null);
                echo " / ";
                echo (isset($context["ACTIVE_TOPIC_PCT"]) ? $context["ACTIVE_TOPIC_PCT"] : null);
                echo ")";
            } else {
                echo " - ";
            }
            echo "</dd>
\t\t\t";
        }
        // line 106
        echo "\t\t\t";
        // line 107
        echo "\t\t</dl>
\t</div>

\t</div>
</div>
";
        // line 112
        // line 113
        echo "
";
        // line 114
        if ((isset($context["SIGNATURE"]) ? $context["SIGNATURE"] : null)) {
            // line 115
            echo "<div class=\"panel bg1\">
\t<div class=\"inner\">

\t\t<h3>";
            // line 118
            echo $this->env->getExtension('phpbb')->lang("SIGNATURE");
            echo "</h3>

\t\t<div class=\"postbody\"><div class=\"signature standalone\">";
            // line 120
            echo (isset($context["SIGNATURE"]) ? $context["SIGNATURE"] : null);
            echo "</div></div>

\t</div>
</div>
";
        }
        // line 125
        echo "
</form>

";
        // line 128
        // line 129
        echo "
";
        // line 130
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
        // line 131
        echo "
";
        // line 132
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
        return "memberlist_view.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  592 => 132,  589 => 131,  577 => 130,  574 => 129,  573 => 128,  568 => 125,  560 => 120,  555 => 118,  550 => 115,  548 => 114,  545 => 113,  544 => 112,  537 => 107,  535 => 106,  515 => 104,  495 => 103,  493 => 102,  490 => 101,  477 => 100,  468 => 99,  458 => 98,  452 => 97,  424 => 95,  418 => 94,  416 => 93,  409 => 92,  401 => 91,  400 => 90,  395 => 88,  389 => 84,  381 => 82,  378 => 81,  375 => 80,  369 => 79,  366 => 78,  360 => 76,  352 => 74,  350 => 73,  344 => 72,  341 => 71,  336 => 70,  317 => 69,  305 => 68,  294 => 67,  288 => 64,  282 => 60,  281 => 59,  274 => 54,  271 => 53,  268 => 52,  260 => 50,  257 => 49,  249 => 47,  246 => 46,  238 => 44,  230 => 42,  227 => 41,  224 => 40,  218 => 39,  209 => 37,  206 => 36,  201 => 35,  189 => 34,  179 => 33,  169 => 32,  166 => 31,  152 => 30,  142 => 29,  140 => 28,  137 => 27,  128 => 26,  119 => 25,  110 => 24,  102 => 23,  91 => 22,  85 => 20,  81 => 18,  77 => 16,  70 => 15,  64 => 14,  60 => 13,  57 => 12,  55 => 11,  47 => 8,  43 => 7,  40 => 6,  39 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
