<?php

/* search_body.html */
class __TwigTemplate_f27e77342a8f021b1dd8ca94917275ff extends Twig_Template
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
<h2 class=\"solo\">";
        // line 3
        echo $this->env->getExtension('phpbb')->lang("SEARCH");
        echo "</h2>

<form method=\"get\" action=\"";
        // line 5
        echo (isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null);
        echo "\" data-focus=\"keywords\">

<div class=\"panel\">
\t<div class=\"inner\">
\t<h3>";
        // line 9
        echo $this->env->getExtension('phpbb')->lang("SEARCH_QUERY");
        echo "</h3>

\t<fieldset>
\t<dl>
\t\t<dt><label for=\"keywords\">";
        // line 13
        echo $this->env->getExtension('phpbb')->lang("SEARCH_KEYWORDS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("SEARCH_KEYWORDS_EXPLAIN");
        echo "</span></dt>
\t\t<dd><input type=\"search\" class=\"inputbox\" name=\"keywords\" id=\"keywords\" size=\"40\" title=\"";
        // line 14
        echo $this->env->getExtension('phpbb')->lang("SEARCH_KEYWORDS");
        echo "\" /></dd>
\t\t<dd><label for=\"terms1\"><input type=\"radio\" name=\"terms\" id=\"terms1\" value=\"all\" checked=\"checked\" /> ";
        // line 15
        echo $this->env->getExtension('phpbb')->lang("SEARCH_ALL_TERMS");
        echo "</label></dd>
\t\t<dd><label for=\"terms2\"><input type=\"radio\" name=\"terms\" id=\"terms2\" value=\"any\" /> ";
        // line 16
        echo $this->env->getExtension('phpbb')->lang("SEARCH_ANY_TERMS");
        echo "</label></dd>
\t</dl>
\t<dl>
\t\t<dt><label for=\"author\">";
        // line 19
        echo $this->env->getExtension('phpbb')->lang("SEARCH_AUTHOR");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("SEARCH_AUTHOR_EXPLAIN");
        echo "</span></dt>
\t\t<dd><input type=\"search\" class=\"inputbox\" name=\"author\" id=\"author\" size=\"40\" title=\"";
        // line 20
        echo $this->env->getExtension('phpbb')->lang("SEARCH_AUTHOR");
        echo "\" /></dd>
\t</dl>
\t</fieldset>

\t</div>
</div>

<div class=\"panel bg2\">
\t<div class=\"inner\">

\t<h3>";
        // line 30
        echo $this->env->getExtension('phpbb')->lang("SEARCH_OPTIONS");
        echo "</h3>

\t<fieldset>
\t<dl>
\t\t<dt><label for=\"search_forum\">";
        // line 34
        echo $this->env->getExtension('phpbb')->lang("SEARCH_FORUMS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("SEARCH_FORUMS_EXPLAIN");
        echo "</span></dt>
\t\t<dd><select name=\"fid[]\" id=\"search_forum\" multiple=\"multiple\" size=\"8\" title=\"";
        // line 35
        echo $this->env->getExtension('phpbb')->lang("SEARCH_FORUMS");
        echo "\">";
        echo (isset($context["S_FORUM_OPTIONS"]) ? $context["S_FORUM_OPTIONS"] : null);
        echo "</select></dd>
\t</dl>
\t<dl>
\t\t<dt><label for=\"search_child1\">";
        // line 38
        echo $this->env->getExtension('phpbb')->lang("SEARCH_SUBFORUMS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd>
\t\t\t<label for=\"search_child1\"><input type=\"radio\" name=\"sc\" id=\"search_child1\" value=\"1\" checked=\"checked\" /> ";
        // line 40
        echo $this->env->getExtension('phpbb')->lang("YES");
        echo "</label>
\t\t\t<label for=\"search_child2\"><input type=\"radio\" name=\"sc\" id=\"search_child2\" value=\"0\" /> ";
        // line 41
        echo $this->env->getExtension('phpbb')->lang("NO");
        echo "</label>
\t\t</dd>
\t</dl>
\t<dl>
\t\t<dt><label for=\"sf1\">";
        // line 45
        echo $this->env->getExtension('phpbb')->lang("SEARCH_WITHIN");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><label for=\"sf1\"><input type=\"radio\" name=\"sf\" id=\"sf1\" value=\"all\" checked=\"checked\" /> ";
        // line 46
        echo $this->env->getExtension('phpbb')->lang("SEARCH_TITLE_MSG");
        echo "</label></dd>
\t\t<dd><label for=\"sf2\"><input type=\"radio\" name=\"sf\" id=\"sf2\" value=\"msgonly\" /> ";
        // line 47
        echo $this->env->getExtension('phpbb')->lang("SEARCH_MSG_ONLY");
        echo "</label></dd>
\t\t<dd><label for=\"sf3\"><input type=\"radio\" name=\"sf\" id=\"sf3\" value=\"titleonly\" /> ";
        // line 48
        echo $this->env->getExtension('phpbb')->lang("SEARCH_TITLE_ONLY");
        echo "</label></dd>
\t\t<dd><label for=\"sf4\"><input type=\"radio\" name=\"sf\" id=\"sf4\" value=\"firstpost\" /> ";
        // line 49
        echo $this->env->getExtension('phpbb')->lang("SEARCH_FIRST_POST");
        echo "</label></dd>
\t</dl>

\t<hr class=\"dashed\" />

\t<dl>
\t\t<dt><label for=\"show_results1\">";
        // line 55
        echo $this->env->getExtension('phpbb')->lang("DISPLAY_RESULTS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd>
\t\t\t<label for=\"show_results1\"><input type=\"radio\" name=\"sr\" id=\"show_results1\" value=\"posts\" checked=\"checked\" /> ";
        // line 57
        echo $this->env->getExtension('phpbb')->lang("POSTS");
        echo "</label>
\t\t\t<label for=\"show_results2\"><input type=\"radio\" name=\"sr\" id=\"show_results2\" value=\"topics\" /> ";
        // line 58
        echo $this->env->getExtension('phpbb')->lang("TOPICS");
        echo "</label>
\t\t</dd>
\t</dl>
\t<dl>
\t\t<dt><label for=\"sd\">";
        // line 62
        echo $this->env->getExtension('phpbb')->lang("RESULT_SORT");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd>";
        // line 63
        echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
        echo "&nbsp;
\t\t\t<label for=\"sa\"><input type=\"radio\" name=\"sd\" id=\"sa\" value=\"a\" /> ";
        // line 64
        echo $this->env->getExtension('phpbb')->lang("SORT_ASCENDING");
        echo "</label>
\t\t\t<label for=\"sd\"><input type=\"radio\" name=\"sd\" id=\"sd\" value=\"d\" checked=\"checked\" /> ";
        // line 65
        echo $this->env->getExtension('phpbb')->lang("SORT_DESCENDING");
        echo "</label>
\t\t</dd>
\t</dl>
\t<dl>
\t\t<dt><label>";
        // line 69
        echo $this->env->getExtension('phpbb')->lang("RESULT_DAYS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd>";
        // line 70
        echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
        echo "</dd>
\t</dl>
\t<dl>
\t\t<dt><label>";
        // line 73
        echo $this->env->getExtension('phpbb')->lang("RETURN_FIRST");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><select name=\"ch\" title=\"";
        // line 74
        echo $this->env->getExtension('phpbb')->lang("RETURN_FIRST");
        echo "\">";
        echo (isset($context["S_CHARACTER_OPTIONS"]) ? $context["S_CHARACTER_OPTIONS"] : null);
        echo "</select> ";
        echo $this->env->getExtension('phpbb')->lang("POST_CHARACTERS");
        echo "</dd>
\t</dl>
\t</fieldset>

\t</div>
</div>

<div class=\"panel bg3\">
\t<div class=\"inner\">

\t<fieldset class=\"submit-buttons\">
\t\t";
        // line 85
        echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
        echo "<input type=\"reset\" value=\"";
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" name=\"reset\" class=\"button2\" />&nbsp;
\t\t<input type=\"submit\" name=\"submit\" value=\"";
        // line 86
        echo $this->env->getExtension('phpbb')->lang("SEARCH");
        echo "\" class=\"button1\" />
\t</fieldset>

\t</div>
</div>

</form>

";
        // line 94
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "recentsearch"))) {
            // line 95
            echo "<div class=\"forumbg forumbg-table\">
\t<div class=\"inner\">

\t<table class=\"table1\">
\t<thead>
\t<tr>
\t\t<th colspan=\"2\" class=\"name\">";
            // line 101
            echo $this->env->getExtension('phpbb')->lang("RECENT_SEARCHES");
            echo "</th>
\t</tr>
\t</thead>
\t<tbody>
\t";
            // line 105
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "recentsearch"));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["recentsearch"]) {
                // line 106
                echo "\t\t<tr class=\"";
                if (($this->getAttribute((isset($context["recentsearch"]) ? $context["recentsearch"] : null), "S_ROW_COUNT") % 2 == 0)) {
                    echo "bg1";
                } else {
                    echo "bg2";
                }
                echo "\">
\t\t\t<td><a href=\"";
                // line 107
                echo $this->getAttribute((isset($context["recentsearch"]) ? $context["recentsearch"] : null), "U_KEYWORDS");
                echo "\">";
                echo $this->getAttribute((isset($context["recentsearch"]) ? $context["recentsearch"] : null), "KEYWORDS");
                echo "</a></td>
\t\t\t<td class=\"active\">";
                // line 108
                echo $this->getAttribute((isset($context["recentsearch"]) ? $context["recentsearch"] : null), "TIME");
                echo "</td>
\t\t</tr>
\t";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                // line 111
                echo "\t\t<tr class=\"bg1\">
\t\t\t<td colspan=\"2\">";
                // line 112
                echo $this->env->getExtension('phpbb')->lang("NO_RECENT_SEARCHES");
                echo "</td>
\t\t</tr>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['recentsearch'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 115
            echo "\t</tbody>
\t</table>

\t</div>
</div>
";
        }
        // line 121
        echo "
";
        // line 122
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
        return "search_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  315 => 122,  312 => 121,  304 => 115,  295 => 112,  292 => 111,  284 => 108,  278 => 107,  269 => 106,  264 => 105,  257 => 101,  249 => 95,  247 => 94,  236 => 86,  230 => 85,  212 => 74,  207 => 73,  201 => 70,  196 => 69,  189 => 65,  185 => 64,  181 => 63,  176 => 62,  169 => 58,  165 => 57,  159 => 55,  150 => 49,  146 => 48,  142 => 47,  138 => 46,  133 => 45,  126 => 41,  122 => 40,  116 => 38,  108 => 35,  101 => 34,  94 => 30,  81 => 20,  74 => 19,  68 => 16,  64 => 15,  60 => 14,  53 => 13,  46 => 9,  39 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
