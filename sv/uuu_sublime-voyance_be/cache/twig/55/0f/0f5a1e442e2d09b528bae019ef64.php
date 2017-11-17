<?php

/* ucp_pm_viewfolder.html */
class __TwigTemplate_550f0f5a1e442e2d09b528bae019ef64 extends Twig_Template
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
";
        // line 3
        if ((!(isset($context["PROMPT"]) ? $context["PROMPT"] : null))) {
            // line 4
            echo "\t";
            $location = "ucp_pm_message_header.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("ucp_pm_message_header.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 6
        echo "
";
        // line 7
        if ((isset($context["PROMPT"]) ? $context["PROMPT"] : null)) {
            // line 8
            echo "\t<h2>";
            echo $this->env->getExtension('phpbb')->lang("EXPORT_AS_CSV");
            echo "</h2>
\t<form id=\"viewfolder\" method=\"post\" action=\"";
            // line 9
            echo (isset($context["S_PM_ACTION"]) ? $context["S_PM_ACTION"] : null);
            echo "\">
\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<h3>";
            // line 12
            echo $this->env->getExtension('phpbb')->lang("OPTIONS");
            echo "</h3>
\t\t<fieldset>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"delimiter\">";
            // line 15
            echo $this->env->getExtension('phpbb')->lang("DELIMITER");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t\t<dd><input class=\"inputbox\" type=\"text\" id=\"delimiter\" name=\"delimiter\" value=\",\" /></dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"enclosure\">";
            // line 19
            echo $this->env->getExtension('phpbb')->lang("ENCLOSURE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t\t<dd><input class=\"inputbox\" type=\"text\" id=\"enclosure\" name=\"enclosure\" value=\"&#034;\" /></dd>
\t\t\t</dl>
\t\t</fieldset>
\t\t</div>
\t</div>
\t<fieldset class=\"submit-buttons\">
\t\t<input type=\"hidden\" name=\"export_option\" value=\"CSV\" />
\t\t<input class=\"button1\" type=\"submit\" name=\"submit_export\" value=\"";
            // line 27
            echo $this->env->getExtension('phpbb')->lang("EXPORT_FOLDER");
            echo "\" />&nbsp;
\t\t<input class=\"button2\" type=\"reset\" value=\"Reset\" name=\"reset\" />&nbsp;
\t\t";
            // line 29
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t</fieldset>
\t</form>

";
        } else {
            // line 34
            echo "
\t";
            // line 35
            if ((isset($context["NUM_REMOVED"]) ? $context["NUM_REMOVED"] : null)) {
                // line 36
                echo "\t\t<div class=\"notice\">
\t\t\t<p>";
                // line 37
                echo (isset($context["RULE_REMOVED_MESSAGES"]) ? $context["RULE_REMOVED_MESSAGES"] : null);
                echo "</p>
\t\t</div>
\t";
            }
            // line 40
            echo "
\t";
            // line 41
            if ((isset($context["NUM_NOT_MOVED"]) ? $context["NUM_NOT_MOVED"] : null)) {
                // line 42
                echo "\t\t<div class=\"notice\">
\t\t\t<p>";
                // line 43
                echo (isset($context["NOT_MOVED_MESSAGES"]) ? $context["NOT_MOVED_MESSAGES"] : null);
                echo "<br />";
                echo (isset($context["RELEASE_MESSAGE_INFO"]) ? $context["RELEASE_MESSAGE_INFO"] : null);
                echo "</p>
\t\t</div>
\t";
            }
            // line 46
            echo "
\t";
            // line 47
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "messagerow"))) {
                // line 48
                echo "\t\t<ul class=\"topiclist two-columns\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 51
                echo $this->env->getExtension('phpbb')->lang("MESSAGE");
                echo "</div></dt>
\t\t\t\t\t<dd class=\"mark\">";
                // line 52
                echo $this->env->getExtension('phpbb')->lang("MARK");
                echo "</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist cplist pmlist responsive-show-all ";
                // line 56
                if ((isset($context["S_SHOW_RECIPIENTS"]) ? $context["S_SHOW_RECIPIENTS"] : null)) {
                    echo "missing-column";
                } else {
                    echo "two-columns";
                }
                echo "\">

\t\t";
                // line 58
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "messagerow"));
                foreach ($context['_seq'] as $context["_key"] => $context["messagerow"]) {
                    // line 59
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "S_ROW_COUNT") % 2 == 1)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    if ($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "PM_CLASS")) {
                        echo " ";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "PM_CLASS");
                    }
                    echo "\">
\t\t\t\t<dl class=\"icon ";
                    // line 60
                    echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "FOLDER_IMG_STYLE");
                    echo "\">
\t\t\t\t\t<dt";
                    // line 61
                    if (($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "PM_ICON_URL") && (isset($context["S_PM_ICONS"]) ? $context["S_PM_ICONS"] : null))) {
                        echo " style=\"background-image: url(";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "PM_ICON_URL");
                        echo "); background-repeat: no-repeat;\"";
                    }
                    echo ">
\t\t\t\t\t\t";
                    // line 62
                    if (($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "S_PM_UNREAD") && (!$this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "S_PM_DELETED")))) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "U_VIEW_PM");
                        echo "\" class=\"icon-link\"></a>";
                    }
                    // line 63
                    echo "\t\t\t\t\t\t<div class=\"list-inner\">

\t\t\t\t\t\t";
                    // line 65
                    if ($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "S_PM_DELETED")) {
                        // line 66
                        echo "\t\t\t\t\t\t\t<a href=\"";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "U_REMOVE_PM");
                        echo "\" class=\"topictitle\">";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_MESSAGE");
                        echo "</a><br />
\t\t\t\t\t\t\t<span class=\"error\">";
                        // line 67
                        echo $this->env->getExtension('phpbb')->lang("MESSAGE_REMOVED_FROM_OUTBOX");
                        echo "</span>
\t\t\t\t\t\t";
                    } else {
                        // line 69
                        echo "\t\t\t\t\t\t\t<a href=\"";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "U_VIEW_PM");
                        echo "\" class=\"topictitle\">";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "SUBJECT");
                        echo "</a>
\t\t\t\t\t\t";
                    }
                    // line 71
                    echo "\t\t\t\t\t\t";
                    if ($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "S_AUTHOR_DELETED")) {
                        // line 72
                        echo "\t\t\t\t\t\t\t<br /><em class=\"small\">";
                        echo $this->env->getExtension('phpbb')->lang("PM_FROM_REMOVED_AUTHOR");
                        echo "</em>
\t\t\t\t\t\t";
                    }
                    // line 74
                    echo "
\t\t\t\t\t\t";
                    // line 75
                    if ($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "S_PM_REPORTED")) {
                        echo "<a href=\"";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "U_MCP_REPORT");
                        echo "\">";
                        echo (isset($context["REPORTED_IMG"]) ? $context["REPORTED_IMG"] : null);
                        echo "</a>";
                    }
                    echo " ";
                    echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "ATTACH_ICON_IMG");
                    echo "<br />
\t\t\t\t\t\t";
                    // line 76
                    if ((isset($context["S_SHOW_RECIPIENTS"]) ? $context["S_SHOW_RECIPIENTS"] : null)) {
                        echo $this->env->getExtension('phpbb')->lang("MESSAGE_TO");
                        echo " ";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "RECIPIENTS");
                    } else {
                        echo $this->env->getExtension('phpbb')->lang("MESSAGE_BY_AUTHOR");
                        echo " ";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "MESSAGE_AUTHOR_FULL");
                        echo " &raquo; ";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "SENT_TIME");
                    }
                    // line 77
                    echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t";
                    // line 80
                    if ((isset($context["S_SHOW_RECIPIENTS"]) ? $context["S_SHOW_RECIPIENTS"] : null)) {
                        echo "<dd class=\"info\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("SENT_AT");
                        echo $this->env->getExtension('phpbb')->lang("COLON");
                        echo " ";
                        echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "SENT_TIME");
                        echo "</span></dd>";
                    }
                    // line 81
                    echo "\t\t\t\t\t";
                    if ((isset($context["S_UNREAD"]) ? $context["S_UNREAD"] : null)) {
                        echo "<dd class=\"info\">";
                        if ($this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "FOLDER")) {
                            echo "<a href=\"";
                            echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "U_FOLDER");
                            echo "\">";
                            echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "FOLDER");
                            echo "</a>";
                        } else {
                            echo $this->env->getExtension('phpbb')->lang("UNKNOWN_FOLDER");
                        }
                        echo "</dd>";
                    }
                    // line 82
                    echo "\t\t\t\t\t<dd class=\"mark\"><input type=\"checkbox\" name=\"marked_msg_id[]\" value=\"";
                    echo $this->getAttribute((isset($context["messagerow"]) ? $context["messagerow"] : null), "MESSAGE_ID");
                    echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['messagerow'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 86
                echo "
\t\t</ul>
\t";
            } else {
                // line 89
                echo "\t\t<p><strong>
\t\t\t";
                // line 90
                if (((isset($context["S_COMPOSE_PM_VIEW"]) ? $context["S_COMPOSE_PM_VIEW"] : null) && (isset($context["S_NO_AUTH_SEND_MESSAGE"]) ? $context["S_NO_AUTH_SEND_MESSAGE"] : null))) {
                    // line 91
                    echo "\t\t\t\t";
                    if ((isset($context["S_USER_NEW"]) ? $context["S_USER_NEW"] : null)) {
                        echo $this->env->getExtension('phpbb')->lang("USER_NEW_PERMISSION_DISALLOWED");
                    } else {
                        echo $this->env->getExtension('phpbb')->lang("NO_AUTH_SEND_MESSAGE");
                    }
                    // line 92
                    echo "\t\t\t";
                } else {
                    // line 93
                    echo "\t\t\t\t";
                    echo $this->env->getExtension('phpbb')->lang("NO_MESSAGES");
                    echo "
\t\t\t";
                }
                // line 95
                echo "\t\t</strong></p>
\t";
            }
            // line 97
            echo "
\t";
            // line 98
            if (((isset($context["FOLDER_CUR_MESSAGES"]) ? $context["FOLDER_CUR_MESSAGES"] : null) != 0)) {
                // line 99
                echo "\t\t<fieldset class=\"display-actions\">
\t\t\t<div class=\"left-box\"><label for=\"export_option\">";
                // line 100
                echo $this->env->getExtension('phpbb')->lang("EXPORT_FOLDER");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " <select name=\"export_option\" id=\"export_option\"><option value=\"CSV\">";
                echo $this->env->getExtension('phpbb')->lang("EXPORT_AS_CSV");
                echo "</option><option value=\"CSV_EXCEL\">";
                echo $this->env->getExtension('phpbb')->lang("EXPORT_AS_CSV_EXCEL");
                echo "</option><option value=\"XML\">";
                echo $this->env->getExtension('phpbb')->lang("EXPORT_AS_XML");
                echo "</option></select></label> <input class=\"button2\" type=\"submit\" name=\"submit_export\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" /><br /></div>
\t\t\t<select name=\"mark_option\">";
                // line 101
                echo (isset($context["S_MARK_OPTIONS"]) ? $context["S_MARK_OPTIONS"] : null);
                echo (isset($context["S_MOVE_MARKED_OPTIONS"]) ? $context["S_MOVE_MARKED_OPTIONS"] : null);
                echo "</select> <input class=\"button2\" type=\"submit\" name=\"submit_mark\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" />
\t\t\t<div><a href=\"#\" onclick=\"marklist('viewfolder', 'marked_msg', true); return false;\">";
                // line 102
                echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
                echo "</a> &bull; <a href=\"#\" onclick=\"marklist('viewfolder', 'marked_msg', false); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
                echo "</a></div>
\t\t</fieldset>
\t
\t\t<hr />
\t
\t\t<div class=\"action-bar bottom\">
\t\t\t<div class=\"pagination\">
\t\t\t\t";
                // line 109
                echo (isset($context["TOTAL_MESSAGES"]) ? $context["TOTAL_MESSAGES"] : null);
                echo "
\t\t\t\t";
                // line 110
                if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                    echo " 
\t\t\t\t\t";
                    // line 111
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
                    // line 112
                    echo "\t\t\t\t";
                } else {
                    echo " 
\t\t\t\t\t &bull; ";
                    // line 113
                    echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                    echo "
\t\t\t\t";
                }
                // line 115
                echo "\t\t\t</div>
\t\t</div>
\t";
            }
            // line 118
            echo "
\t\t</div>
\t</div>

\t";
            // line 122
            if (((isset($context["FOLDER_CUR_MESSAGES"]) ? $context["FOLDER_CUR_MESSAGES"] : null) != 0)) {
                // line 123
                echo "\t<fieldset class=\"display-options\">
\t\t<label>";
                // line 124
                echo $this->env->getExtension('phpbb')->lang("DISPLAY");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                echo "</label>
\t\t<label>";
                // line 125
                echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                echo " ";
                echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                echo "</label>
\t\t<label>";
                // line 126
                echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                echo "</label>
\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 127
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t\t<input type=\"hidden\" name=\"cur_folder_id\" value=\"";
                // line 128
                echo (isset($context["CUR_FOLDER_ID"]) ? $context["CUR_FOLDER_ID"] : null);
                echo "\" />
\t</fieldset>
\t";
            }
            // line 131
            echo "
\t";
            // line 132
            $location = "ucp_pm_message_footer.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("ucp_pm_message_footer.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 134
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
        return "ucp_pm_viewfolder.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  461 => 134,  448 => 132,  445 => 131,  439 => 128,  435 => 127,  431 => 126,  425 => 125,  418 => 124,  415 => 123,  413 => 122,  407 => 118,  402 => 115,  397 => 113,  392 => 112,  380 => 111,  376 => 110,  372 => 109,  360 => 102,  353 => 101,  340 => 100,  337 => 99,  335 => 98,  332 => 97,  328 => 95,  322 => 93,  319 => 92,  312 => 91,  310 => 90,  307 => 89,  302 => 86,  291 => 82,  276 => 81,  267 => 80,  262 => 77,  250 => 76,  238 => 75,  235 => 74,  229 => 72,  226 => 71,  218 => 69,  213 => 67,  206 => 66,  204 => 65,  200 => 63,  194 => 62,  186 => 61,  182 => 60,  169 => 59,  165 => 58,  156 => 56,  149 => 52,  145 => 51,  140 => 48,  138 => 47,  135 => 46,  127 => 43,  124 => 42,  122 => 41,  119 => 40,  113 => 37,  110 => 36,  108 => 35,  105 => 34,  97 => 29,  92 => 27,  80 => 19,  72 => 15,  66 => 12,  60 => 9,  55 => 8,  53 => 7,  50 => 6,  36 => 4,  34 => 3,  31 => 2,  19 => 1,);
    }
}
