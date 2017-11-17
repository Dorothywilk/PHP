<?php

/* ucp_pm_message_header.html */
class __TwigTemplate_b3374f8613a44b1c6c643318756739c7 extends Twig_Template
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
        echo "<h2>";
        echo $this->env->getExtension('phpbb')->lang("TITLE");
        if ((isset($context["CUR_FOLDER_NAME"]) ? $context["CUR_FOLDER_NAME"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " ";
            echo (isset($context["CUR_FOLDER_NAME"]) ? $context["CUR_FOLDER_NAME"] : null);
        }
        echo "</h2>

<form id=\"viewfolder\" method=\"post\" action=\"";
        // line 3
        echo (isset($context["S_PM_ACTION"]) ? $context["S_PM_ACTION"] : null);
        echo "\">

<div class=\"panel\">
\t<div class=\"inner\">
\t";
        // line 7
        if (((isset($context["FOLDER_STATUS"]) ? $context["FOLDER_STATUS"] : null) && ((isset($context["FOLDER_MAX_MESSAGES"]) ? $context["FOLDER_MAX_MESSAGES"] : null) != 0))) {
            echo "<p>";
            echo (isset($context["FOLDER_STATUS"]) ? $context["FOLDER_STATUS"] : null);
            echo "</p>";
        }
        // line 8
        echo "
\t<div class=\"action-bar top\">
\t";
        // line 10
        if ((((isset($context["U_POST_REPLY_PM"]) ? $context["U_POST_REPLY_PM"] : null) || (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null)) || (isset($context["U_FORWARD_PM"]) ? $context["U_FORWARD_PM"] : null))) {
            // line 11
            echo "\t\t<div class=\"buttons\">
\t\t\t";
            // line 12
            if ((isset($context["U_POST_REPLY_PM"]) ? $context["U_POST_REPLY_PM"] : null)) {
                // line 13
                echo "\t\t\t\t<a title=\"";
                echo $this->env->getExtension('phpbb')->lang("POST_REPLY_PM");
                echo "\" href=\"";
                echo (isset($context["U_POST_REPLY_PM"]) ? $context["U_POST_REPLY_PM"] : null);
                echo "\" class=\"button icon-button pmreply-icon\">
\t\t\t\t\t";
                // line 14
                echo $this->env->getExtension('phpbb')->lang("BUTTON_PM_REPLY");
                echo "
\t\t\t\t</a>
\t\t\t";
            } elseif ((isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null)) {
                // line 17
                echo "\t\t\t\t<a href=\"";
                echo (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null);
                echo "\" accesskey=\"n\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("UCP_PM_COMPOSE");
                echo "\" class=\"button icon-button newpm-icon\">
\t\t\t\t\t";
                // line 18
                echo $this->env->getExtension('phpbb')->lang("BUTTON_PM_NEW");
                echo "
\t\t\t\t</a>
\t\t\t";
            }
            // line 21
            echo "\t\t\t";
            if ((isset($context["U_FORWARD_PM"]) ? $context["U_FORWARD_PM"] : null)) {
                // line 22
                echo "\t\t\t\t<a title=\"";
                echo $this->env->getExtension('phpbb')->lang("POST_FORWARD_PM");
                echo "\" href=\"";
                echo (isset($context["U_FORWARD_PM"]) ? $context["U_FORWARD_PM"] : null);
                echo "\" class=\"button icon-button forwardpm-icon\">
\t\t\t\t\t";
                // line 23
                echo $this->env->getExtension('phpbb')->lang("BUTTON_PM_FORWARD");
                echo "
\t\t\t\t</a>
\t\t\t";
            }
            // line 26
            echo "\t\t\t";
            if (((isset($context["U_POST_REPLY_PM"]) ? $context["U_POST_REPLY_PM"] : null) && ((isset($context["S_PM_RECIPIENTS"]) ? $context["S_PM_RECIPIENTS"] : null) > 1))) {
                // line 27
                echo "\t\t\t\t<a title=\"";
                echo $this->env->getExtension('phpbb')->lang("REPLY_TO_ALL");
                echo "\" href=\"";
                echo (isset($context["U_POST_REPLY_ALL"]) ? $context["U_POST_REPLY_ALL"] : null);
                echo "\" class=\"button icon-button reply-all\">
\t\t\t\t\t";
                // line 28
                echo $this->env->getExtension('phpbb')->lang("BUTTON_PM_REPLY_ALL");
                echo "
\t\t\t\t</a>
\t\t\t";
            }
            // line 31
            echo "\t\t</div>
\t";
        }
        // line 33
        echo "
\t";
        // line 34
        if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && (isset($context["U_PRINT_PM"]) ? $context["U_PRINT_PM"] : null))) {
            // line 35
            echo "\t\t<div class=\"dropdown-container dropdown-button-control topic-tools\">
\t\t\t<span title=\"";
            // line 36
            echo $this->env->getExtension('phpbb')->lang("PM_TOOLS");
            echo "\" class=\"dropdown-trigger dropdown-select button icon-button tools-icon\"></span>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t\t";
            // line 40
            if ((isset($context["U_PRINT_PM"]) ? $context["U_PRINT_PM"] : null)) {
                echo "<li class=\"small-icon icon-print\"><a href=\"";
                echo (isset($context["U_PRINT_PM"]) ? $context["U_PRINT_PM"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("PRINT_PM");
                echo "\" accesskey=\"p\">";
                echo $this->env->getExtension('phpbb')->lang("PRINT_PM");
                echo "</a></li>";
            }
            // line 41
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>
\t";
        }
        // line 45
        echo "
\t";
        // line 46
        if (((isset($context["TOTAL_MESSAGES"]) ? $context["TOTAL_MESSAGES"] : null) || (isset($context["S_VIEW_MESSAGE"]) ? $context["S_VIEW_MESSAGE"] : null))) {
            // line 47
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 48
            if ((isset($context["S_VIEW_MESSAGE"]) ? $context["S_VIEW_MESSAGE"] : null)) {
                // line 49
                echo "\t\t\t\t<a class=\"arrow-";
                echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
                echo "\" href=\"";
                echo (isset($context["U_CURRENT_FOLDER"]) ? $context["U_CURRENT_FOLDER"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("RETURN_TO_FOLDER");
                echo "</a>
\t\t\t";
            } elseif (((isset($context["FOLDER_CUR_MESSAGES"]) ? $context["FOLDER_CUR_MESSAGES"] : null) != 0)) {
                // line 51
                echo "\t\t\t\t";
                if ((isset($context["U_MARK_ALL"]) ? $context["U_MARK_ALL"] : null)) {
                    echo "<a href=\"";
                    echo (isset($context["U_MARK_ALL"]) ? $context["U_MARK_ALL"] : null);
                    echo "\" class=\"mark\">";
                    echo $this->env->getExtension('phpbb')->lang("PM_MARK_ALL_READ");
                    echo "</a> &bull; ";
                }
                // line 52
                echo "\t\t\t\t";
                echo (isset($context["TOTAL_MESSAGES"]) ? $context["TOTAL_MESSAGES"] : null);
                echo "
\t\t\t\t";
                // line 53
                if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                    // line 54
                    echo "\t\t\t\t\t";
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
                    // line 55
                    echo "\t\t\t\t";
                } else {
                    // line 56
                    echo "\t\t\t\t\t &bull; ";
                    echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                    echo "
\t\t\t\t";
                }
                // line 58
                echo "\t\t\t";
            }
            // line 59
            echo "\t\t</div>
\t";
        }
        // line 61
        echo "\t</div>
";
    }

    public function getTemplateName()
    {
        return "ucp_pm_message_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  212 => 61,  208 => 59,  205 => 58,  199 => 56,  196 => 55,  183 => 54,  181 => 53,  176 => 52,  167 => 51,  157 => 49,  155 => 48,  152 => 47,  150 => 46,  147 => 45,  141 => 41,  131 => 40,  121 => 35,  116 => 33,  112 => 31,  106 => 28,  99 => 27,  96 => 26,  90 => 23,  83 => 22,  74 => 18,  67 => 17,  61 => 14,  54 => 13,  52 => 12,  49 => 11,  47 => 10,  43 => 8,  37 => 7,  30 => 3,  461 => 134,  448 => 132,  445 => 131,  439 => 128,  435 => 127,  431 => 126,  425 => 125,  418 => 124,  415 => 123,  413 => 122,  407 => 118,  402 => 115,  397 => 113,  392 => 112,  380 => 111,  376 => 110,  372 => 109,  360 => 102,  353 => 101,  340 => 100,  337 => 99,  335 => 98,  332 => 97,  328 => 95,  322 => 93,  319 => 92,  312 => 91,  310 => 90,  307 => 89,  302 => 86,  291 => 82,  276 => 81,  267 => 80,  262 => 77,  250 => 76,  238 => 75,  235 => 74,  229 => 72,  226 => 71,  218 => 69,  213 => 67,  206 => 66,  204 => 65,  200 => 63,  194 => 62,  186 => 61,  182 => 60,  169 => 59,  165 => 58,  156 => 56,  149 => 52,  145 => 51,  140 => 48,  138 => 47,  135 => 46,  127 => 43,  124 => 36,  122 => 41,  119 => 34,  113 => 37,  110 => 36,  108 => 35,  105 => 34,  97 => 29,  92 => 27,  80 => 21,  72 => 15,  66 => 12,  60 => 9,  55 => 8,  53 => 7,  50 => 6,  36 => 4,  34 => 3,  31 => 2,  19 => 1,);
    }
}
