<?php

/* ucp_zebra_friends.html */
class __TwigTemplate_dc87e92f7780bd6cf71dc02398bf353f extends Twig_Template
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
        echo "</h2>

<div class=\"panel\">
\t<div class=\"inner\">

\t<p>";
        // line 10
        echo $this->env->getExtension('phpbb')->lang("FRIENDS_EXPLAIN");
        echo "</p>

\t<fieldset class=\"fields2\">
\t";
        // line 13
        if ((isset($context["ERROR"]) ? $context["ERROR"] : null)) {
            echo "<p class=\"error\">";
            echo (isset($context["ERROR"]) ? $context["ERROR"] : null);
            echo "</p>";
        }
        // line 14
        echo "\t";
        // line 15
        echo "\t<dl>
\t\t<dt><label ";
        // line 16
        if ((isset($context["S_USERNAME_OPTIONS"]) ? $context["S_USERNAME_OPTIONS"] : null)) {
            echo "for=\"usernames\"";
        }
        echo ">";
        echo $this->env->getExtension('phpbb')->lang("YOUR_FRIENDS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("YOUR_FRIENDS_EXPLAIN");
        echo "</span></dt>
\t\t<dd>
\t\t\t";
        // line 18
        if ((isset($context["S_USERNAME_OPTIONS"]) ? $context["S_USERNAME_OPTIONS"] : null)) {
            // line 19
            echo "\t\t\t\t<select name=\"usernames[]\" id=\"usernames\" multiple=\"multiple\" size=\"5\">";
            echo (isset($context["S_USERNAME_OPTIONS"]) ? $context["S_USERNAME_OPTIONS"] : null);
            echo "</select>
\t\t\t";
        } else {
            // line 21
            echo "\t\t\t\t<strong>";
            echo $this->env->getExtension('phpbb')->lang("NO_FRIENDS");
            echo "</strong>
\t\t\t";
        }
        // line 23
        echo "\t\t</dd>
\t</dl>
\t";
        // line 25
        // line 26
        echo "\t<dl>
\t\t<dt><label for=\"add\">";
        // line 27
        echo $this->env->getExtension('phpbb')->lang("ADD_FRIENDS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("ADD_FRIENDS_EXPLAIN");
        echo "</span></dt>
\t\t<dd><textarea name=\"add\" id=\"add\" rows=\"3\" cols=\"30\" class=\"inputbox\">";
        // line 28
        echo (isset($context["USERNAMES"]) ? $context["USERNAMES"] : null);
        echo "</textarea></dd>
\t\t<dd><strong><a href=\"";
        // line 29
        echo (isset($context["U_FIND_USERNAME"]) ? $context["U_FIND_USERNAME"] : null);
        echo "\" onclick=\"find_username(this.href); return false;\">";
        echo $this->env->getExtension('phpbb')->lang("FIND_USERNAME");
        echo "</a></strong></dd>
\t</dl>
\t</fieldset>

\t</div>
</div>

<fieldset class=\"submit-buttons\">
\t";
        // line 37
        echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
        echo "<input type=\"reset\" value=\"";
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" name=\"reset\" class=\"button2\" />&nbsp; 
\t<input type=\"submit\" name=\"submit\" value=\"";
        // line 38
        echo $this->env->getExtension('phpbb')->lang("SUBMIT");
        echo "\" class=\"button1\" />
\t";
        // line 39
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
</fieldset>
</form>

";
        // line 43
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
        return "ucp_zebra_friends.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  141 => 43,  134 => 39,  130 => 38,  124 => 37,  111 => 29,  107 => 28,  100 => 27,  97 => 26,  96 => 25,  92 => 23,  86 => 21,  80 => 19,  78 => 18,  66 => 16,  63 => 15,  61 => 14,  55 => 13,  49 => 10,  41 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
