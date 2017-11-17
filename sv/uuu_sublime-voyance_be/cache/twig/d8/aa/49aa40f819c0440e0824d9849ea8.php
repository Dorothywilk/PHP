<?php

/* posting_preview.html */
class __TwigTemplate_d8aa49aa40f819c0440e0824d9849ea8 extends Twig_Template
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
        echo "<div class=\"post ";
        if ((isset($context["S_PRIVMSGS"]) ? $context["S_PRIVMSGS"] : null)) {
            echo "pm";
        } else {
            echo "bg2";
        }
        echo "\" id=\"preview\">
\t<div class=\"inner\">

";
        // line 4
        if ((isset($context["S_HAS_POLL_OPTIONS"]) ? $context["S_HAS_POLL_OPTIONS"] : null)) {
            // line 5
            echo "\t<div class=\"content\">
\t\t<h2>";
            // line 6
            echo $this->env->getExtension('phpbb')->lang("PREVIEW");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " ";
            echo (isset($context["POLL_QUESTION"]) ? $context["POLL_QUESTION"] : null);
            echo "</h2>
\t\t<p class=\"author\">";
            // line 7
            if ((isset($context["L_POLL_LENGTH"]) ? $context["L_POLL_LENGTH"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("POLL_LENGTH");
                echo "<br />";
            }
            echo $this->env->getExtension('phpbb')->lang("MAX_VOTES");
            echo "</p>

\t\t<fieldset class=\"polls\">
\t\t";
            // line 10
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "poll_option"));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 11
                echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"vote_";
                // line 12
                echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_ID");
                echo "\">";
                echo $this->getAttribute((isset($context["poll_option"]) ? $context["poll_option"] : null), "POLL_OPTION_CAPTION");
                echo "</label></dt>
\t\t\t\t<dd style=\"width: auto;\">";
                // line 13
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
                echo "</dd>
\t\t\t</dl>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 16
            echo "\t\t</fieldset>
\t</div>

\t</div>
</div>

<div class=\"post bg2\">
\t<div class=\"inner\">

";
        }
        // line 26
        echo "
\t<div class=\"postbody\">
\t\t<h3>";
        // line 28
        echo $this->env->getExtension('phpbb')->lang("PREVIEW");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo " ";
        echo (isset($context["PREVIEW_SUBJECT"]) ? $context["PREVIEW_SUBJECT"] : null);
        echo "</h3>

\t\t<div class=\"content\">";
        // line 30
        echo (isset($context["PREVIEW_MESSAGE"]) ? $context["PREVIEW_MESSAGE"] : null);
        echo "</div>

\t\t";
        // line 32
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "attachment"))) {
            // line 33
            echo "\t\t<dl class=\"attachbox\">
\t\t\t<dt>";
            // line 34
            echo $this->env->getExtension('phpbb')->lang("ATTACHMENTS");
            echo "</dt>
\t\t\t";
            // line 35
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "attachment"));
            foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                // line 36
                echo "\t\t\t<dd>";
                echo $this->getAttribute((isset($context["attachment"]) ? $context["attachment"] : null), "DISPLAY_ATTACHMENT");
                echo "</dd>
\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 38
            echo "\t\t</dl>
\t\t";
        }
        // line 40
        echo "
\t\t";
        // line 41
        if ((isset($context["PREVIEW_SIGNATURE"]) ? $context["PREVIEW_SIGNATURE"] : null)) {
            echo "<div class=\"signature\">";
            echo (isset($context["PREVIEW_SIGNATURE"]) ? $context["PREVIEW_SIGNATURE"] : null);
            echo "</div>";
        }
        // line 42
        echo "\t</div>

\t</div>
</div>

<hr />
";
    }

    public function getTemplateName()
    {
        return "posting_preview.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  158 => 42,  152 => 41,  149 => 40,  145 => 38,  136 => 36,  132 => 35,  128 => 34,  125 => 33,  123 => 32,  118 => 30,  110 => 28,  106 => 26,  94 => 16,  65 => 13,  59 => 12,  56 => 11,  52 => 10,  42 => 7,  35 => 6,  32 => 5,  30 => 4,  19 => 1,);
    }
}
