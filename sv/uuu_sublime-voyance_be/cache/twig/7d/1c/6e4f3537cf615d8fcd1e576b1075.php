<?php

/* ucp_groups_membership.html */
class __TwigTemplate_7d1c6e4f3537cf615d8fcd1e576b1075 extends Twig_Template
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
        echo $this->env->getExtension('phpbb')->lang("USERGROUPS");
        echo "</h2>

<form id=\"ucp\" method=\"post\" action=\"";
        // line 5
        echo (isset($context["S_UCP_ACTION"]) ? $context["S_UCP_ACTION"] : null);
        echo "\"";
        echo (isset($context["S_FORM_ENCTYPE"]) ? $context["S_FORM_ENCTYPE"] : null);
        echo ">

<div class=\"panel\">
\t<div class=\"inner\">

\t<p>";
        // line 10
        echo $this->env->getExtension('phpbb')->lang("GROUPS_EXPLAIN");
        echo "</p>
\t";
        // line 11
        $value = 0;
        $context['definition']->set('SHOW_BUTTONS', $value);
        // line 12
        echo "\t";
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "leader"))) {
            // line 13
            echo "\t\t<ul class=\"topiclist two-columns\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><div class=\"list-inner\">";
            // line 16
            echo $this->env->getExtension('phpbb')->lang("GROUP_LEADER");
            echo "</div></dt>
\t\t\t\t\t<dd class=\"mark\">";
            // line 17
            echo $this->env->getExtension('phpbb')->lang("SELECT");
            echo "</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist cplist two-columns\">

\t\t";
            // line 23
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "leader"));
            foreach ($context['_seq'] as $context["_key"] => $context["leader"]) {
                // line 24
                echo "\t\t";
                if ((!$this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_SPECIAL"))) {
                    // line 25
                    echo "\t\t\t";
                    $value = 1;
                    $context['definition']->set('SHOW_BUTTONS', $value);
                    // line 26
                    echo "\t\t";
                }
                // line 27
                echo "\t\t<li class=\"row";
                if (($this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "S_ROW_COUNT") % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl>
\t\t\t\t<dt>
\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
                // line 31
                if ((isset($context["S_CHANGE_DEFAULT"]) ? $context["S_CHANGE_DEFAULT"] : null)) {
                    echo "<input title=\"";
                    echo $this->env->getExtension('phpbb')->lang("CHANGE_DEFAULT_GROUP");
                    echo "\" type=\"radio\" name=\"default\"";
                    if ($this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "S_GROUP_DEFAULT")) {
                        echo " checked=\"checked\"";
                    }
                    echo " value=\"";
                    echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_ID");
                    echo "\" /> ";
                }
                // line 32
                echo "\t\t\t\t\t\t<a href=\"";
                echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "U_VIEW_GROUP");
                echo "\" class=\"forumtitle\"";
                if ($this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_COLOUR")) {
                    echo " style=\"color:#";
                    echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_COLOUR");
                    echo "\"";
                }
                echo ">";
                echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_NAME");
                echo "</a>
\t\t\t\t\t\t";
                // line 33
                if ($this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_DESC")) {
                    echo "<br />";
                    echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_DESC");
                }
                // line 34
                echo "\t\t\t\t\t\t";
                if ((!$this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_SPECIAL"))) {
                    echo "<br /><i>";
                    echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_STATUS");
                    echo "</i>";
                }
                // line 35
                echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"mark\"><input type=\"radio\" name=\"selected\" value=\"";
                // line 37
                echo $this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_ID");
                echo "\" ";
                if ($this->getAttribute((isset($context["leader"]) ? $context["leader"] : null), "GROUP_SPECIAL")) {
                    echo "disabled=\"disabled\"";
                }
                echo " /></dd>
\t\t\t</dl>
\t\t</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['leader'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 41
            echo "\t\t</ul>
\t";
        }
        // line 43
        echo "
\t";
        // line 44
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "member"))) {
            // line 45
            echo "\t\t<ul class=\"topiclist two-columns\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><div class=\"list-inner\">";
            // line 48
            echo $this->env->getExtension('phpbb')->lang("GROUP_MEMBER");
            echo "</div></dt>
\t\t\t\t\t<dd class=\"mark\">";
            // line 49
            echo $this->env->getExtension('phpbb')->lang("SELECT");
            echo "</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist cplist two-columns\">

\t\t";
            // line 55
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "member"));
            foreach ($context['_seq'] as $context["_key"] => $context["member"]) {
                // line 56
                echo "\t\t";
                if ((!$this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_SPECIAL"))) {
                    // line 57
                    echo "\t\t\t";
                    $value = 1;
                    $context['definition']->set('SHOW_BUTTONS', $value);
                    // line 58
                    echo "\t\t";
                }
                echo "\t\t
\t\t<li class=\"row";
                // line 59
                if (($this->getAttribute((isset($context["member"]) ? $context["member"] : null), "S_ROW_COUNT") % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl>
\t\t\t\t<dt>
\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
                // line 63
                if ((isset($context["S_CHANGE_DEFAULT"]) ? $context["S_CHANGE_DEFAULT"] : null)) {
                    echo "<input title=\"";
                    echo $this->env->getExtension('phpbb')->lang("CHANGE_DEFAULT_GROUP");
                    echo "\" type=\"radio\" name=\"default\"";
                    if ($this->getAttribute((isset($context["member"]) ? $context["member"] : null), "S_GROUP_DEFAULT")) {
                        echo " checked=\"checked\"";
                    }
                    echo " value=\"";
                    echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_ID");
                    echo "\" /> ";
                }
                // line 64
                echo "\t\t\t\t\t\t<a href=\"";
                echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "U_VIEW_GROUP");
                echo "\" class=\"forumtitle\"";
                if ($this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_COLOUR")) {
                    echo " style=\"color:#";
                    echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_COLOUR");
                    echo "\"";
                }
                echo ">";
                echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_NAME");
                echo "</a>
\t\t\t\t\t\t";
                // line 65
                if ($this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_DESC")) {
                    echo "<br />";
                    echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_DESC");
                }
                // line 66
                echo "\t\t\t\t\t\t";
                if ((!$this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_SPECIAL"))) {
                    echo "<br /><i>";
                    echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_STATUS");
                    echo "</i>";
                }
                // line 67
                echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"mark\"><input type=\"radio\" name=\"selected\" value=\"";
                // line 69
                echo $this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_ID");
                echo "\" ";
                if ($this->getAttribute((isset($context["member"]) ? $context["member"] : null), "GROUP_SPECIAL")) {
                    echo "disabled=\"disabled\"";
                }
                echo " /></dd>
\t\t\t</dl>
\t\t</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['member'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 73
            echo "\t\t</ul>
\t";
        }
        // line 75
        echo "\t</div>
</div>\t

";
        // line 78
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pending"))) {
            // line 79
            echo "<div class=\"panel\">
\t<div class=\"inner\">\t
\t\t<ul class=\"topiclist two-columns\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><div class=\"list-inner\">";
            // line 84
            echo $this->env->getExtension('phpbb')->lang("GROUP_PENDING");
            echo "</div></dt>
\t\t\t\t\t<dd class=\"mark\">";
            // line 85
            echo $this->env->getExtension('phpbb')->lang("SELECT");
            echo "</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist cplist two-columns\">

\t\t";
            // line 91
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pending"));
            foreach ($context['_seq'] as $context["_key"] => $context["pending"]) {
                // line 92
                echo "\t\t";
                if ((!$this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_SPECIAL"))) {
                    // line 93
                    echo "\t\t\t";
                    $value = 1;
                    $context['definition']->set('SHOW_BUTTONS', $value);
                    // line 94
                    echo "\t\t";
                }
                echo "\t\t\t
\t\t<li class=\"row";
                // line 95
                if (($this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "S_ROW_COUNT") % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl>
\t\t\t\t<dt>
\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t<a href=\"";
                // line 99
                echo $this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "U_VIEW_GROUP");
                echo "\" class=\"forumtitle\"";
                if ($this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_COLOUR")) {
                    echo " style=\"color:#";
                    echo $this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_COLOUR");
                    echo "\"";
                }
                echo ">";
                echo $this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_NAME");
                echo "</a>
\t\t\t\t\t\t";
                // line 100
                if ($this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_DESC")) {
                    echo "<br />";
                    echo $this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_DESC");
                }
                // line 101
                echo "\t\t\t\t\t\t";
                if ((!$this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_SPECIAL"))) {
                    echo "<br /><i>";
                    echo $this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_STATUS");
                    echo "</i>";
                }
                // line 102
                echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"mark\"><input type=\"radio\" name=\"selected\" value=\"";
                // line 104
                echo $this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_ID");
                echo "\" ";
                if ($this->getAttribute((isset($context["pending"]) ? $context["pending"] : null), "GROUP_SPECIAL")) {
                    echo "disabled=\"disabled\"";
                }
                echo " /></dd>
\t\t\t</dl>
\t\t</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pending'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 108
            echo "\t\t</ul>
\t</div>
</div>
";
        }
        // line 112
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "nonmember"))) {
            // line 113
            echo "<div class=\"panel\">
\t<div class=\"inner\">
\t\t<ul class=\"topiclist two-columns\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><div class=\"list-inner\">";
            // line 118
            echo $this->env->getExtension('phpbb')->lang("GROUP_NONMEMBER");
            echo "</div></dt>
\t\t\t\t\t<dd class=\"mark\">";
            // line 119
            echo $this->env->getExtension('phpbb')->lang("SELECT");
            echo "</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist cplist two-columns\">

\t\t";
            // line 125
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "nonmember"));
            foreach ($context['_seq'] as $context["_key"] => $context["nonmember"]) {
                // line 126
                echo "\t\t";
                if ($this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "S_CAN_JOIN")) {
                    // line 127
                    echo "\t\t\t";
                    $value = 1;
                    $context['definition']->set('SHOW_BUTTONS', $value);
                    // line 128
                    echo "\t\t";
                }
                echo "\t\t
\t\t<li class=\"row";
                // line 129
                if (($this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "S_ROW_COUNT") % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl>
\t\t\t\t<dt>
\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t<a href=\"";
                // line 133
                echo $this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "U_VIEW_GROUP");
                echo "\" class=\"forumtitle\"";
                if ($this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_COLOUR")) {
                    echo " style=\"color:#";
                    echo $this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_COLOUR");
                    echo "\"";
                }
                echo ">";
                echo $this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_NAME");
                echo "</a>
\t\t\t\t\t\t";
                // line 134
                if ($this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_DESC")) {
                    echo "<br />";
                    echo $this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_DESC");
                }
                // line 135
                echo "\t\t\t\t\t\t";
                if ((!$this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_SPECIAL"))) {
                    echo "<br /><i>";
                    echo $this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_STATUS");
                    echo "</i>";
                }
                // line 136
                echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"mark\"><input type=\"radio\" name=\"selected\" value=\"";
                // line 138
                echo $this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "GROUP_ID");
                echo "\" ";
                if ((!$this->getAttribute((isset($context["nonmember"]) ? $context["nonmember"] : null), "S_CAN_JOIN"))) {
                    echo "disabled=\"disabled\"";
                }
                echo " /></dd>
\t\t\t</dl>
\t\t</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['nonmember'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 142
            echo "\t\t</ul>
\t\t</div>
\t</div>
";
        }
        // line 146
        echo "\t

\t";
        // line 148
        if (((isset($context["S_CHANGE_DEFAULT"]) ? $context["S_CHANGE_DEFAULT"] : null) || ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SHOW_BUTTONS") == 1))) {
            // line 149
            echo "\t<fieldset>
\t\t";
            // line 150
            if ((isset($context["S_CHANGE_DEFAULT"]) ? $context["S_CHANGE_DEFAULT"] : null)) {
                // line 151
                echo "\t\t<div class=\"left-box\">
\t\t\t<input class=\"button2\" type=\"submit\" name=\"change_default\" value=\"";
                // line 152
                echo $this->env->getExtension('phpbb')->lang("CHANGE_DEFAULT_GROUP");
                echo "\" />
\t\t\t";
                // line 153
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t</div>
\t\t";
            }
            // line 156
            echo "
\t\t";
            // line 157
            if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SHOW_BUTTONS") == 1)) {
                // line 158
                echo "\t\t<div class=\"right-box\">
\t\t\t<label for=\"action\">";
                // line 159
                echo $this->env->getExtension('phpbb')->lang("SELECT");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label> 
\t\t\t<select name=\"action\" id=\"action\">
\t\t\t\t<option value=\"join\">";
                // line 161
                echo $this->env->getExtension('phpbb')->lang("JOIN_SELECTED");
                echo "</option>
\t\t\t\t<option value=\"resign\">";
                // line 162
                echo $this->env->getExtension('phpbb')->lang("RESIGN_SELECTED");
                echo "</option>
\t\t\t\t<option value=\"demote\">";
                // line 163
                echo $this->env->getExtension('phpbb')->lang("DEMOTE_SELECTED");
                echo "</option>
\t\t\t</select>&nbsp;
\t\t\t<input class=\"button2\" type=\"submit\" name=\"submit\" value=\"";
                // line 165
                echo $this->env->getExtension('phpbb')->lang("SUBMIT");
                echo "\" />
\t\t\t";
                // line 166
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t</div>
\t\t";
            }
            // line 169
            echo "\t</fieldset>
\t";
        }
        // line 171
        echo "
</form>

";
        // line 174
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
        return "ucp_groups_membership.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  540 => 174,  535 => 171,  531 => 169,  525 => 166,  521 => 165,  516 => 163,  512 => 162,  508 => 161,  502 => 159,  499 => 158,  497 => 157,  494 => 156,  488 => 153,  484 => 152,  481 => 151,  479 => 150,  476 => 149,  474 => 148,  470 => 146,  464 => 142,  450 => 138,  446 => 136,  439 => 135,  434 => 134,  422 => 133,  411 => 129,  406 => 128,  402 => 127,  399 => 126,  395 => 125,  386 => 119,  382 => 118,  375 => 113,  373 => 112,  367 => 108,  353 => 104,  349 => 102,  342 => 101,  337 => 100,  325 => 99,  314 => 95,  309 => 94,  305 => 93,  302 => 92,  298 => 91,  289 => 85,  285 => 84,  278 => 79,  276 => 78,  271 => 75,  267 => 73,  253 => 69,  249 => 67,  242 => 66,  237 => 65,  224 => 64,  212 => 63,  201 => 59,  196 => 58,  192 => 57,  189 => 56,  185 => 55,  176 => 49,  172 => 48,  167 => 45,  165 => 44,  162 => 43,  158 => 41,  144 => 37,  140 => 35,  133 => 34,  128 => 33,  115 => 32,  103 => 31,  91 => 27,  88 => 26,  84 => 25,  81 => 24,  77 => 23,  68 => 17,  64 => 16,  59 => 13,  56 => 12,  53 => 11,  49 => 10,  39 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
