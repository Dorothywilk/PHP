<?php

/* ucp_profile_profile_info.html */
class __TwigTemplate_c8058ef4c1c5e641ddc80c35b2bf4f0a extends Twig_Template
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
<form id=\"ucp\" method=\"post\" action=\"";
        // line 3
        echo (isset($context["S_UCP_ACTION"]) ? $context["S_UCP_ACTION"] : null);
        echo "\"";
        echo (isset($context["S_FORM_ENCTYPE"]) ? $context["S_FORM_ENCTYPE"] : null);
        echo ">

<h2>";
        // line 5
        echo $this->env->getExtension('phpbb')->lang("TITLE");
        echo " <span class=\"small\">[ <a href=\"";
        echo (isset($context["U_USER_PROFILE"]) ? $context["U_USER_PROFILE"] : null);
        echo "\" title=\"";
        echo $this->env->getExtension('phpbb')->lang("VIEW_PROFILE");
        echo "\">";
        echo $this->env->getExtension('phpbb')->lang("VIEW_PROFILE");
        echo "</a> ]</span></h2>

<div class=\"panel\">
\t<div class=\"inner\">
\t<p>";
        // line 9
        echo $this->env->getExtension('phpbb')->lang("PROFILE_INFO_NOTICE");
        echo "</p>

\t<fieldset>
\t";
        // line 12
        if ((isset($context["ERROR"]) ? $context["ERROR"] : null)) {
            echo "<p class=\"error\">";
            echo (isset($context["ERROR"]) ? $context["ERROR"] : null);
            echo "</p>";
        }
        // line 13
        echo "\t";
        // line 14
        echo "\t";
        if ((isset($context["S_BIRTHDAYS_ENABLED"]) ? $context["S_BIRTHDAYS_ENABLED"] : null)) {
            // line 15
            echo "\t\t<dl>
\t\t\t<dt><label for=\"bday_day\">";
            // line 16
            echo $this->env->getExtension('phpbb')->lang("BIRTHDAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb')->lang("BIRTHDAY_EXPLAIN");
            echo "</span></dt>
\t\t\t<dd>
\t\t\t\t<label for=\"bday_day\">";
            // line 18
            echo $this->env->getExtension('phpbb')->lang("DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <select name=\"bday_day\" id=\"bday_day\">";
            echo (isset($context["S_BIRTHDAY_DAY_OPTIONS"]) ? $context["S_BIRTHDAY_DAY_OPTIONS"] : null);
            echo "</select></label>
\t\t\t\t<label for=\"bday_month\">";
            // line 19
            echo $this->env->getExtension('phpbb')->lang("MONTH");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <select name=\"bday_month\" id=\"bday_month\">";
            echo (isset($context["S_BIRTHDAY_MONTH_OPTIONS"]) ? $context["S_BIRTHDAY_MONTH_OPTIONS"] : null);
            echo "</select></label>
\t\t\t\t<label for=\"bday_year\">";
            // line 20
            echo $this->env->getExtension('phpbb')->lang("YEAR");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <select name=\"bday_year\" id=\"bday_year\">";
            echo (isset($context["S_BIRTHDAY_YEAR_OPTIONS"]) ? $context["S_BIRTHDAY_YEAR_OPTIONS"] : null);
            echo "</select></label>
\t\t\t</dd>
\t\t</dl>
\t";
        }
        // line 24
        echo "\t";
        if ((isset($context["S_JABBER_ENABLED"]) ? $context["S_JABBER_ENABLED"] : null)) {
            // line 25
            echo "\t\t<dl>
\t\t\t<dt><label for=\"jabber\">";
            // line 26
            echo $this->env->getExtension('phpbb')->lang("UCP_JABBER");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t<dd><input type=\"email\" name=\"jabber\" id=\"jabber\" maxlength=\"255\" value=\"";
            // line 27
            echo (isset($context["JABBER"]) ? $context["JABBER"] : null);
            echo "\" class=\"inputbox\" /></dd>
\t\t</dl>
\t";
        }
        // line 30
        echo "\t";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "profile_fields"));
        foreach ($context['_seq'] as $context["_key"] => $context["profile_fields"]) {
            // line 31
            echo "\t\t<dl>
\t\t\t<dt><label";
            // line 32
            if ($this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "FIELD_ID")) {
                echo " for=\"";
                echo $this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "FIELD_ID");
                echo "\"";
            }
            echo ">";
            echo $this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "LANG_NAME");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            if ($this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "S_REQUIRED")) {
                echo " *";
            }
            echo "</label>
\t\t\t";
            // line 33
            if ($this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "LANG_EXPLAIN")) {
                echo "<br /><span>";
                echo $this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "LANG_EXPLAIN");
                echo "</span>";
            }
            echo "</dt>
\t\t\t";
            // line 34
            if ($this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "ERROR")) {
                echo "<dd class=\"error\">";
                echo $this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "ERROR");
                echo "</dd>";
            }
            // line 35
            echo "\t\t\t<dd>";
            echo $this->getAttribute((isset($context["profile_fields"]) ? $context["profile_fields"] : null), "FIELD");
            echo "</dd>
\t\t</dl>
\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['profile_fields'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 38
        echo "\t";
        // line 39
        echo "\t</fieldset>

\t</div>
</div>

<fieldset class=\"submit-buttons\">
\t";
        // line 45
        echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
        echo "<input type=\"reset\" value=\"";
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" name=\"reset\" class=\"button2\" />&nbsp;
\t<input type=\"submit\" name=\"submit\" value=\"";
        // line 46
        echo $this->env->getExtension('phpbb')->lang("SUBMIT");
        echo "\" class=\"button1\" />
\t";
        // line 47
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
</fieldset>
</form>

";
        // line 51
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
        return "ucp_profile_profile_info.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  196 => 51,  189 => 47,  185 => 46,  179 => 45,  171 => 39,  169 => 38,  159 => 35,  153 => 34,  145 => 33,  131 => 32,  128 => 31,  123 => 30,  117 => 27,  112 => 26,  109 => 25,  106 => 24,  96 => 20,  89 => 19,  82 => 18,  74 => 16,  71 => 15,  68 => 14,  66 => 13,  60 => 12,  54 => 9,  41 => 5,  34 => 3,  31 => 2,  23 => 2,  19 => 1,);
    }
}
