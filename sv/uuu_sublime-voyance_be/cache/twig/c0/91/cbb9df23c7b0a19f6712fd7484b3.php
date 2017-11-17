<?php

/* posting_poll_body.html */
class __TwigTemplate_c091cbb9df23c7b0a19f6712fd7484b3 extends Twig_Template
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
        echo "<div class=\"panel bg3\" id=\"poll-panel\">
\t<div class=\"inner\">

\t";
        // line 4
        if ((isset($context["S_SHOW_POLL_BOX"]) ? $context["S_SHOW_POLL_BOX"] : null)) {
            // line 5
            echo "\t<p>";
            echo $this->env->getExtension('phpbb')->lang("ADD_POLL_EXPLAIN");
            echo "</p>
\t";
        }
        // line 7
        echo "
\t<fieldset class=\"fields2\">
\t";
        // line 9
        if ((isset($context["S_SHOW_POLL_BOX"]) ? $context["S_SHOW_POLL_BOX"] : null)) {
            // line 10
            echo "\t\t";
            if ((isset($context["S_POLL_DELETE"]) ? $context["S_POLL_DELETE"] : null)) {
                // line 11
                echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"poll_delete\">";
                // line 12
                echo $this->env->getExtension('phpbb')->lang("POLL_DELETE");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t<dd><label for=\"poll_delete\"><input type=\"checkbox\" name=\"poll_delete\" id=\"poll_delete\"";
                // line 13
                if ((isset($context["S_POLL_DELETE_CHECKED"]) ? $context["S_POLL_DELETE_CHECKED"] : null)) {
                    echo " checked=\"checked\"";
                }
                echo " /> </label></dd>
\t\t\t</dl>
\t\t";
            }
            // line 16
            echo "\t\t<dl>
\t\t\t<dt><label for=\"poll_title\">";
            // line 17
            echo $this->env->getExtension('phpbb')->lang("POLL_QUESTION");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t<dd><input type=\"text\" name=\"poll_title\" id=\"poll_title\" maxlength=\"255\" value=\"";
            // line 18
            echo (isset($context["POLL_TITLE"]) ? $context["POLL_TITLE"] : null);
            echo "\" class=\"inputbox\" /></dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"poll_option_text\">";
            // line 21
            echo $this->env->getExtension('phpbb')->lang("POLL_OPTIONS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb')->lang("POLL_OPTIONS_EXPLAIN");
            echo "</span></dt>
\t\t\t<dd><textarea name=\"poll_option_text\" id=\"poll_option_text\" rows=\"5\" cols=\"35\" class=\"inputbox\">";
            // line 22
            echo (isset($context["POLL_OPTIONS"]) ? $context["POLL_OPTIONS"] : null);
            echo "</textarea></dd>
\t\t</dl>

\t\t<hr class=\"dashed\" />

\t\t<dl>
\t\t\t<dt><label for=\"poll_max_options\">";
            // line 28
            echo $this->env->getExtension('phpbb')->lang("POLL_MAX_OPTIONS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t<dd><input type=\"number\" min=\"0\" max=\"999\" name=\"poll_max_options\" id=\"poll_max_options\" size=\"3\" maxlength=\"3\" value=\"";
            // line 29
            echo (isset($context["POLL_MAX_OPTIONS"]) ? $context["POLL_MAX_OPTIONS"] : null);
            echo "\" class=\"inputbox autowidth\" /></dd>
\t\t\t<dd>";
            // line 30
            echo $this->env->getExtension('phpbb')->lang("POLL_MAX_OPTIONS_EXPLAIN");
            echo "</dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"poll_length\">";
            // line 33
            echo $this->env->getExtension('phpbb')->lang("POLL_FOR");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t<dd><label for=\"poll_length\"><input type=\"number\" min=\"0\" max=\"999\" name=\"poll_length\" id=\"poll_length\" size=\"3\" maxlength=\"3\" value=\"";
            // line 34
            echo (isset($context["POLL_LENGTH"]) ? $context["POLL_LENGTH"] : null);
            echo "\" class=\"inputbox autowidth\" /> ";
            echo $this->env->getExtension('phpbb')->lang("DAYS");
            echo "</label></dd>
\t\t\t<dd>";
            // line 35
            echo $this->env->getExtension('phpbb')->lang("POLL_FOR_EXPLAIN");
            echo "</dd>
\t\t</dl>

\t\t";
            // line 38
            if ((isset($context["S_POLL_VOTE_CHANGE"]) ? $context["S_POLL_VOTE_CHANGE"] : null)) {
                // line 39
                echo "\t\t\t<hr class=\"dashed\" />

\t\t\t<dl>
\t\t\t\t<dt><label for=\"poll_vote_change\">";
                // line 42
                echo $this->env->getExtension('phpbb')->lang("POLL_VOTE_CHANGE");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t<dd><label for=\"poll_vote_change\"><input type=\"checkbox\" id=\"poll_vote_change\" name=\"poll_vote_change\"";
                // line 43
                echo (isset($context["VOTE_CHANGE_CHECKED"]) ? $context["VOTE_CHANGE_CHECKED"] : null);
                echo " /> ";
                echo $this->env->getExtension('phpbb')->lang("POLL_VOTE_CHANGE_EXPLAIN");
                echo "</label></dd>
\t\t\t</dl>
\t\t";
            }
            // line 46
            echo "\t";
        }
        // line 47
        echo "\t";
        // line 48
        echo "
\t";
        // line 49
        if ((isset($context["S_POLL_DELETE"]) ? $context["S_POLL_DELETE"] : null)) {
            // line 50
            echo "\t\t<dl class=\"fields1\">
\t\t\t<dt><label for=\"poll_delete\">";
            // line 51
            echo $this->env->getExtension('phpbb')->lang("POLL_DELETE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label></dt>
\t\t\t<dd><label for=\"poll_delete\"><input type=\"checkbox\" name=\"poll_delete\" id=\"poll_delete\"";
            // line 52
            if ((isset($context["S_POLL_DELETE_CHECKED"]) ? $context["S_POLL_DELETE_CHECKED"] : null)) {
                echo " checked=\"checked\"";
            }
            echo " /> </label></dd>
\t\t</dl>
\t";
        }
        // line 55
        echo "\t</fieldset>

\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "posting_poll_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  165 => 55,  157 => 52,  152 => 51,  149 => 50,  147 => 49,  144 => 48,  142 => 47,  139 => 46,  131 => 43,  126 => 42,  121 => 39,  119 => 38,  113 => 35,  107 => 34,  102 => 33,  96 => 30,  92 => 29,  87 => 28,  78 => 22,  71 => 21,  65 => 18,  60 => 17,  57 => 16,  49 => 13,  44 => 12,  41 => 11,  38 => 10,  36 => 9,  32 => 7,  26 => 5,  24 => 4,  19 => 1,);
    }
}
