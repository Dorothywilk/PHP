<?php

/* permission_mask.html */
class __TwigTemplate_58be394cd7fa8c7858bdd46010e1a19d extends Twig_Template
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
        echo "
<script type=\"text/javascript\">
// <![CDATA[
\tvar active_pmask = '0';
\tvar active_fmask = '0';
\tvar active_cat = '0';

\tvar id = '000';

\tvar role_options = new Array();

\t";
        // line 12
        if ((isset($context["S_ROLE_JS_ARRAY"]) ? $context["S_ROLE_JS_ARRAY"] : null)) {
            // line 13
            echo "\t\t";
            echo (isset($context["S_ROLE_JS_ARRAY"]) ? $context["S_ROLE_JS_ARRAY"] : null);
            echo "
\t";
        }
        // line 15
        echo "// ]]>
</script>
<script type=\"text/javascript\" src=\"style/permissions.js\"></script>

";
        // line 19
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "p_mask"));
        foreach ($context['_seq'] as $context["_key"] => $context["p_mask"]) {
            // line 20
            echo "<div class=\"clearfix\"></div>
<h3>";
            // line 21
            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "NAME");
            if ($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_LOCAL")) {
                echo " <span class=\"small\"> [";
                echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "L_ACL_TYPE");
                echo "]</span>";
            }
            echo "</h3>

";
            // line 23
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "f_mask"));
            foreach ($context['_seq'] as $context["_key"] => $context["f_mask"]) {
                // line 24
                echo "<div class=\"clearfix\"></div>
<fieldset class=\"permissions\" id=\"perm";
                // line 25
                echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                echo "\">
\t<legend id=\"legend";
                // line 26
                echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                echo "\">
\t\t";
                // line 27
                if ((!$this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW"))) {
                    // line 28
                    echo "\t\t\t<input type=\"checkbox\" style=\"display: none;\" class=\"permissions-checkbox\" name=\"inherit[";
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "UG_ID");
                    echo "][";
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "FORUM_ID");
                    echo "]\" id=\"checkbox";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "\" value=\"1\" onclick=\"toggle_opacity('";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "')\" /> 
\t\t";
                } else {
                    // line 30
                    echo "\t\t";
                }
                // line 31
                echo "\t\t";
                if ($this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "PADDING")) {
                    echo "<span class=\"padding\">";
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "PADDING");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "PADDING");
                    echo "</span>";
                }
                echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "NAME");
                echo "
\t</legend>
\t";
                // line 33
                if ((!$this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW"))) {
                    // line 34
                    echo "\t\t<div class=\"permissions-switch\">
\t\t\t<div class=\"permissions-reset\">
\t\t\t\t<a href=\"#\" onclick=\"mark_options('perm";
                    // line 36
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "', 'y'); reset_role('role";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "'); init_colours('";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "'); return false;\">";
                    echo $this->env->getExtension('phpbb')->lang("ALL_YES");
                    echo "</a> &middot; <a href=\"#\" onclick=\"mark_options('perm";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "', 'u'); reset_role('role";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "'); init_colours('";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "'); return false;\">";
                    echo $this->env->getExtension('phpbb')->lang("ALL_NO");
                    echo "</a> &middot; <a href=\"#\" onclick=\"mark_options('perm";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "', 'n'); reset_role('role";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "'); init_colours('";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "'); return false;\">";
                    echo $this->env->getExtension('phpbb')->lang("ALL_NEVER");
                    echo "</a>
\t\t\t</div>
\t\t\t<a href=\"#\" onclick=\"swap_options('";
                    // line 38
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo "', '";
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "', '0', true); return false;\">";
                    echo $this->env->getExtension('phpbb')->lang("ADVANCED_PERMISSIONS");
                    echo "</a>";
                    if (((!$this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW")) && $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_CUSTOM"))) {
                        echo " *";
                    }
                    // line 39
                    echo "\t\t</div>
\t\t<dl class=\"permissions-simple\">
\t\t\t<dt style=\"width: 20%\"><label for=\"role";
                    // line 41
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("ROLE");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</label></dt>
\t\t\t";
                    // line 42
                    if ($this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROLE_OPTIONS")) {
                        // line 43
                        echo "\t\t\t\t<dd style=\"margin-";
                        echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
                        echo $this->env->getExtension('phpbb')->lang("COLON");
                        echo " 20%\"><select id=\"role";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo "\" name=\"role[";
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "UG_ID");
                        echo "][";
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "FORUM_ID");
                        echo "]\" onchange=\"set_role_settings(this.options[selectedIndex].value, 'advanced";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo "'); init_colours('";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo "')\">";
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROLE_OPTIONS");
                        echo "</select></dd>
\t\t\t";
                    } else {
                        // line 45
                        echo "\t\t\t\t<dd>";
                        echo $this->env->getExtension('phpbb')->lang("NO_ROLE_AVAILABLE");
                        echo "</dd>
\t\t\t";
                    }
                    // line 47
                    echo "\t\t</dl>
\t";
                }
                // line 49
                echo "
\t";
                // line 50
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "category"));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 51
                    echo "\t\t";
                    if ($this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_FIRST_ROW")) {
                        // line 52
                        echo "\t\t\t";
                        if ((!$this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW"))) {
                            // line 53
                            echo "\t\t\t\t<div class=\"permissions-advanced\" id=\"advanced";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "\" style=\"display: none;\">
\t\t\t";
                        } else {
                            // line 55
                            echo "\t\t\t\t<div class=\"permissions-advanced\" id=\"advanced";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "\">
\t\t\t";
                        }
                        // line 57
                        echo "
\t\t\t<div class=\"permissions-category\">
\t\t\t\t<ul>
\t\t";
                    }
                    // line 61
                    echo " \t\t
\t\t";
                    // line 62
                    if ($this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_YES")) {
                        // line 63
                        echo "\t\t\t<li class=\"permissions-preset-yes";
                        if ((($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_FIRST_ROW") && $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_FIRST_ROW")) && $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_FIRST_ROW"))) {
                            echo " activetab";
                        }
                        echo "\" id=\"tab";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "\">
\t\t";
                    } elseif ($this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_NEVER")) {
                        // line 65
                        echo "\t\t\t<li class=\"permissions-preset-never";
                        if ((($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_FIRST_ROW") && $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_FIRST_ROW")) && $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_FIRST_ROW"))) {
                            echo " activetab";
                        }
                        echo "\" id=\"tab";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "\">
\t\t";
                    } elseif ($this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_NO")) {
                        // line 67
                        echo "\t\t\t<li class=\"permissions-preset-no";
                        if ((($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_FIRST_ROW") && $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_FIRST_ROW")) && $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_FIRST_ROW"))) {
                            echo " activetab";
                        }
                        echo "\" id=\"tab";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "\">
\t\t";
                    } else {
                        // line 69
                        echo "\t\t\t<li class=\"permissions-preset-custom";
                        if ((($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_FIRST_ROW") && $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_FIRST_ROW")) && $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_FIRST_ROW"))) {
                            echo " activetab";
                        }
                        echo "\" id=\"tab";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "\">
\t\t";
                    }
                    // line 71
                    echo "\t\t<a href=\"#\" onclick=\"swap_options('";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo "', '";
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo "', '";
                    echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                    echo "', false";
                    if ($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW")) {
                        echo ", true";
                    }
                    echo "); return false;\"><span class=\"tabbg\"><span class=\"colour\"></span>";
                    echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "CAT_NAME");
                    echo "</span></a></li>
\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 73
                echo "\t\t\t\t</ul>
\t\t\t</div>

\t";
                // line 76
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "category"));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 77
                    echo "\t\t<div class=\"permissions-panel\" id=\"options";
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                    echo "\" ";
                    if ((($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_FIRST_ROW") && $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_FIRST_ROW")) && $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_FIRST_ROW"))) {
                    } else {
                        echo " style=\"display: none;\"";
                    }
                    echo ">
\t\t\t<div class=\"tablewrap\">
\t\t\t\t<table id=\"table";
                    // line 79
                    echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                    echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                    echo "\" class=\"table1 not-responsive\">
\t\t\t\t<colgroup>
\t\t\t\t\t<col class=\"permissions-name\" />
\t\t\t\t\t<col class=\"permissions-yes\" />
\t\t\t\t\t<col class=\"permissions-no\" />
\t\t\t\t\t";
                    // line 84
                    if ((!$this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW"))) {
                        // line 85
                        echo "\t\t\t\t\t\t<col class=\"permissions-never\" />
\t\t\t\t\t";
                    }
                    // line 87
                    echo "\t\t\t\t</colgroup>
\t\t\t\t<thead>
\t\t\t\t<tr>
\t\t\t\t\t<th class=\"name\" scope=\"col\"><strong>";
                    // line 90
                    echo $this->env->getExtension('phpbb')->lang("ACL_SETTING");
                    echo "</strong></th>
\t\t\t\t";
                    // line 91
                    if ($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW")) {
                        // line 92
                        echo "\t\t\t\t\t<th class=\"value\" scope=\"col\">";
                        echo $this->env->getExtension('phpbb')->lang("ACL_YES");
                        echo "</th>
\t\t\t\t\t<th class=\"value\" scope=\"col\">";
                        // line 93
                        echo $this->env->getExtension('phpbb')->lang("ACL_NEVER");
                        echo "</th>
\t\t\t\t";
                    } else {
                        // line 95
                        echo "\t\t\t\t\t<th class=\"value permissions-yes\" scope=\"col\"><a href=\"#\" onclick=\"mark_options('options";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "', 'y'); reset_role('role";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo "'); set_colours('";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "', false, 'yes'); return false;\">";
                        echo $this->env->getExtension('phpbb')->lang("ACL_YES");
                        echo "</a></th>
\t\t\t\t\t<th class=\"value permissions-no\" scope=\"col\"><a href=\"#\" onclick=\"mark_options('options";
                        // line 96
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "', 'u'); reset_role('role";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo "'); set_colours('";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "', false, 'no'); return false;\">";
                        echo $this->env->getExtension('phpbb')->lang("ACL_NO");
                        echo "</a></th>
\t\t\t\t\t<th class=\"value permissions-never\" scope=\"col\"><a href=\"#\" onclick=\"mark_options('options";
                        // line 97
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "', 'n'); reset_role('role";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo "'); set_colours('";
                        echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                        echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                        echo "', false, 'never'); return false;\">";
                        echo $this->env->getExtension('phpbb')->lang("ACL_NEVER");
                        echo "</a></th>
\t\t\t\t";
                    }
                    // line 99
                    echo "\t\t\t\t</tr>
\t\t\t\t</thead>
\t\t\t\t<tbody>
\t\t\t\t";
                    // line 102
                    $context['_parent'] = (array) $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["category"]) ? $context["category"] : null), "mask"));
                    foreach ($context['_seq'] as $context["_key"] => $context["mask"]) {
                        // line 103
                        echo "\t\t\t\t\t";
                        if (($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_ROW_COUNT") % 2 == 0)) {
                            echo "<tr class=\"row4\">";
                        } else {
                            echo "<tr class=\"row3\">";
                        }
                        // line 104
                        echo "\t\t\t\t\t<th class=\"permissions-name";
                        if (($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_ROW_COUNT") % 2 == 0)) {
                            echo " row4";
                        } else {
                            echo " row3";
                        }
                        echo "\">";
                        if ($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "U_TRACE")) {
                            echo "<a href=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "U_TRACE");
                            echo "\" class=\"trace\" onclick=\"popup(this.href, 750, 515, '_trace'); return false;\" title=\"";
                            echo $this->env->getExtension('phpbb')->lang("TRACE_SETTING");
                            echo "\"><img src=\"images/icon_trace.gif\" alt=\"";
                            echo $this->env->getExtension('phpbb')->lang("TRACE_SETTING");
                            echo "\" /></a> ";
                        }
                        echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "PERMISSION");
                        echo "</th>
\t\t\t\t\t";
                        // line 105
                        if ($this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW")) {
                            // line 106
                            echo "\t\t\t\t\t\t<td";
                            if ($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_YES")) {
                                echo " class=\"yes\"";
                            }
                            echo ">&nbsp;</td>
\t\t\t\t\t\t<td";
                            // line 107
                            if ($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_NEVER")) {
                                echo " class=\"never\"";
                            }
                            echo "></td>
\t\t\t\t\t";
                        } else {
                            // line 109
                            echo "\t\t\t\t\t\t<td class=\"permissions-yes\"><label for=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "_y\"><input onclick=\"reset_role('role";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "'); set_colours('";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                            echo "', false)\" id=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "_y\" name=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "\" class=\"radio\" type=\"radio\"";
                            if ($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_YES")) {
                                echo " checked=\"checked\"";
                            }
                            echo " value=\"1\" /></label></td>
\t\t\t\t\t\t<td class=\"permissions-no\"><label for=\"";
                            // line 110
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "_u\"><input onclick=\"reset_role('role";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "'); set_colours('";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                            echo "', false)\" id=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "_u\" name=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "\" class=\"radio\" type=\"radio\"";
                            if ($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_NO")) {
                                echo " checked=\"checked\"";
                            }
                            echo " value=\"-1\" /></label></td>
\t\t\t\t\t\t<td class=\"permissions-never\"><label for=\"";
                            // line 111
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "_n\"><input onclick=\"reset_role('role";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "'); set_colours('";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["category"]) ? $context["category"] : null), "S_ROW_COUNT");
                            echo "', false)\" id=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "_n\" name=\"";
                            echo $this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_FIELD_NAME");
                            echo "\" class=\"radio\" type=\"radio\"";
                            if ($this->getAttribute((isset($context["mask"]) ? $context["mask"] : null), "S_NEVER")) {
                                echo " checked=\"checked\"";
                            }
                            echo " value=\"0\" /></label></td>
\t\t\t\t\t";
                        }
                        // line 113
                        echo "\t\t\t\t</tr>
\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mask'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 115
                    echo "\t\t\t\t</tbody>
\t\t\t\t</table>
\t\t\t</div>
\t\t\t
\t\t\t";
                    // line 119
                    if ((!$this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_VIEW"))) {
                        // line 120
                        echo "\t\t\t<fieldset class=\"quick\" style=\"margin-";
                        echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                        echo $this->env->getExtension('phpbb')->lang("COLON");
                        echo " 11px;\">
\t\t\t\t<p class=\"small\">";
                        // line 121
                        echo $this->env->getExtension('phpbb')->lang("APPLY_PERMISSIONS_EXPLAIN");
                        echo "</p>
\t\t\t\t<input class=\"button1\" type=\"submit\" name=\"psubmit[";
                        // line 122
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "UG_ID");
                        echo "][";
                        echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "FORUM_ID");
                        echo "]\" value=\"";
                        echo $this->env->getExtension('phpbb')->lang("APPLY_PERMISSIONS");
                        echo "\" />
\t\t\t\t";
                        // line 123
                        if (((twig_length_filter($this->env, $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "f_mask")) > 1) || (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "p_mask")) > 1))) {
                            // line 124
                            echo "\t\t\t\t\t<p class=\"small\"><a href=\"#\" onclick=\"reset_opacity(0, '";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "'); return false;\">";
                            echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
                            echo "</a> &bull; <a href=\"#\" onclick=\"reset_opacity(1, '";
                            echo $this->getAttribute((isset($context["p_mask"]) ? $context["p_mask"] : null), "S_ROW_COUNT");
                            echo $this->getAttribute((isset($context["f_mask"]) ? $context["f_mask"] : null), "S_ROW_COUNT");
                            echo "'); return false;\">";
                            echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
                            echo "</a></p>
\t\t\t\t";
                        }
                        // line 126
                        echo "\t\t\t</fieldset>
\t\t
\t\t\t";
                    }
                    // line 129
                    echo "
\t\t</div>
\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 132
                echo "\t\t\t<div class=\"clearfix\"></div>
\t</div>
</fieldset>
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['f_mask'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 136
            echo "
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['p_mask'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "permission_mask.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  602 => 136,  593 => 132,  585 => 129,  580 => 126,  566 => 124,  564 => 123,  556 => 122,  552 => 121,  546 => 120,  544 => 119,  538 => 115,  531 => 113,  511 => 111,  492 => 110,  472 => 109,  465 => 107,  458 => 106,  456 => 105,  436 => 104,  429 => 103,  425 => 102,  420 => 99,  404 => 97,  389 => 96,  373 => 95,  368 => 93,  363 => 92,  361 => 91,  357 => 90,  352 => 87,  348 => 85,  346 => 84,  336 => 79,  323 => 77,  319 => 76,  314 => 73,  295 => 71,  283 => 69,  271 => 67,  259 => 65,  247 => 63,  245 => 62,  242 => 61,  236 => 57,  229 => 55,  222 => 53,  219 => 52,  216 => 51,  212 => 50,  209 => 49,  205 => 47,  199 => 45,  177 => 43,  175 => 42,  167 => 41,  163 => 39,  153 => 38,  117 => 36,  113 => 34,  111 => 33,  99 => 31,  96 => 30,  82 => 28,  80 => 27,  75 => 26,  70 => 25,  67 => 24,  63 => 23,  53 => 21,  50 => 20,  46 => 19,  40 => 15,  34 => 13,  32 => 12,  19 => 1,);
    }
}
