<?php

/* memberlist_body.html */
class __TwigTemplate_3ffad84d1889e55880f888cafa2f8b0b extends Twig_Template
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
        if ((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null)) {
            // line 2
            echo "\t";
            $location = "simple_header.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("simple_header.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 3
            echo "\t";
            $location = "memberlist_search.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("memberlist_search.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 4
            echo "\t<form method=\"post\" id=\"results\" action=\"";
            echo (isset($context["S_MODE_ACTION"]) ? $context["S_MODE_ACTION"] : null);
            echo "\" onsubmit=\"insert_marked_users('#results', this.user); return false;\" data-form-name=\"";
            echo (isset($context["S_FORM_NAME"]) ? $context["S_FORM_NAME"] : null);
            echo "\" data-field-name=\"";
            echo (isset($context["S_FIELD_NAME"]) ? $context["S_FIELD_NAME"] : null);
            echo "\">

";
        } else {
            // line 7
            echo "\t";
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
            // line 8
            echo "\t<div class=\"panel\" id=\"memberlist_search\"";
            if ((!(isset($context["S_SEARCH_USER"]) ? $context["S_SEARCH_USER"] : null))) {
                echo " style=\"display: none;\"";
            }
            echo ">
\t";
            // line 9
            $location = "memberlist_search.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("memberlist_search.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 10
            echo "\t</div>
\t<form method=\"post\" action=\"";
            // line 11
            echo (isset($context["S_MODE_ACTION"]) ? $context["S_MODE_ACTION"] : null);
            echo "\">

";
        }
        // line 14
        echo "
\t";
        // line 15
        if ((isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null)) {
            // line 16
            echo "\t\t<h2 class=\"group-title\"";
            if ((isset($context["GROUP_COLOR"]) ? $context["GROUP_COLOR"] : null)) {
                echo " style=\"color:#";
                echo (isset($context["GROUP_COLOR"]) ? $context["GROUP_COLOR"] : null);
                echo ";\"";
            }
            echo ">";
            echo (isset($context["GROUP_NAME"]) ? $context["GROUP_NAME"] : null);
            echo "</h2>
\t\t<p>";
            // line 17
            echo (isset($context["GROUP_DESC"]) ? $context["GROUP_DESC"] : null);
            echo " ";
            echo (isset($context["GROUP_TYPE"]) ? $context["GROUP_TYPE"] : null);
            echo "</p>
\t\t<p>
\t\t\t";
            // line 19
            if ((isset($context["AVATAR_IMG"]) ? $context["AVATAR_IMG"] : null)) {
                echo (isset($context["AVATAR_IMG"]) ? $context["AVATAR_IMG"] : null);
            }
            // line 20
            echo "\t\t\t";
            if ((isset($context["RANK_IMG"]) ? $context["RANK_IMG"] : null)) {
                echo (isset($context["RANK_IMG"]) ? $context["RANK_IMG"] : null);
            }
            // line 21
            echo "\t\t\t";
            if ((isset($context["GROUP_RANK"]) ? $context["GROUP_RANK"] : null)) {
                echo (isset($context["GROUP_RANK"]) ? $context["GROUP_RANK"] : null);
            }
            // line 22
            echo "\t\t</p>
\t";
        } else {
            // line 24
            echo "\t\t<h2 class=\"solo\">";
            echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
            if ((isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " <a href=\"";
                echo (isset($context["U_SEARCH_WORDS"]) ? $context["U_SEARCH_WORDS"] : null);
                echo "\">";
                echo (isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null);
                echo "</a>";
            }
            echo "</h2>

\t\t<div class=\"action-bar top\">
\t\t\t<div class=\"member-search panel\">
\t\t\t\t";
            // line 28
            if (((isset($context["U_FIND_MEMBER"]) ? $context["U_FIND_MEMBER"] : null) && (!(isset($context["S_SEARCH_USER"]) ? $context["S_SEARCH_USER"] : null)))) {
                echo "<a href=\"";
                echo (isset($context["U_FIND_MEMBER"]) ? $context["U_FIND_MEMBER"] : null);
                echo "\" id=\"member_search\" data-alt-text=\"";
                echo addslashes($this->env->getExtension('phpbb')->lang("HIDE_MEMBER_SEARCH"));
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FIND_USERNAME");
                echo "</a> &bull; ";
            } elseif ((((isset($context["S_SEARCH_USER"]) ? $context["S_SEARCH_USER"] : null) && (isset($context["U_HIDE_FIND_MEMBER"]) ? $context["U_HIDE_FIND_MEMBER"] : null)) && (!(isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null)))) {
                echo "<a href=\"";
                echo (isset($context["U_HIDE_FIND_MEMBER"]) ? $context["U_HIDE_FIND_MEMBER"] : null);
                echo "\" id=\"member_search\" data-alt-text=\"";
                echo addslashes($this->env->getExtension('phpbb')->lang("FIND_USERNAME"));
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("HIDE_MEMBER_SEARCH");
                echo "</a> &bull; ";
            }
            // line 29
            echo "\t\t\t\t<strong>
\t\t\t\t";
            // line 30
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "first_char"));
            foreach ($context['_seq'] as $context["_key"] => $context["first_char"]) {
                // line 31
                echo "\t\t\t\t\t<a href=\"";
                echo $this->getAttribute((isset($context["first_char"]) ? $context["first_char"] : null), "U_SORT");
                echo "\">";
                echo $this->getAttribute((isset($context["first_char"]) ? $context["first_char"] : null), "DESC");
                echo "</a>&nbsp;
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['first_char'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 33
            echo "\t\t\t\t</strong>
\t\t\t</div>
\t\t
\t\t\t<div class=\"pagination\">
\t\t\t\t";
            // line 37
            echo (isset($context["TOTAL_USERS"]) ? $context["TOTAL_USERS"] : null);
            echo "
\t\t\t\t";
            // line 38
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
                echo " 
\t\t\t\t\t";
                // line 39
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
                // line 40
                echo "\t\t\t\t";
            } else {
                echo " 
\t\t\t\t\t &bull; ";
                // line 41
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t\t";
            }
            // line 43
            echo "\t\t\t</div>
\t\t</div>
\t";
        }
        // line 46
        echo "
\t";
        // line 47
        if ((((isset($context["S_LEADERS_SET"]) ? $context["S_LEADERS_SET"] : null) || (!(isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null))) || (!twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "memberrow"))))) {
            // line 48
            echo "\t<div class=\"forumbg forumbg-table\">
\t\t<div class=\"inner\">

\t\t<table class=\"table1\" id=\"memberlist\">
\t\t<thead>
\t\t<tr>
\t\t\t<th class=\"name\" data-dfn=\"";
            // line 54
            echo $this->env->getExtension('phpbb')->lang("RANK");
            echo $this->env->getExtension('phpbb')->lang("COMMA_SEPARATOR");
            if (((isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "memberrow")))) {
                echo $this->env->getExtension('phpbb')->lang("GROUP_LEADER");
            } else {
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
            }
            echo "\"><span class=\"rank-img\"><a href=\"";
            echo (isset($context["U_SORT_RANK"]) ? $context["U_SORT_RANK"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("RANK");
            echo "</a></span><a href=\"";
            echo (isset($context["U_SORT_USERNAME"]) ? $context["U_SORT_USERNAME"] : null);
            echo "\">";
            if (((isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "memberrow")))) {
                echo $this->env->getExtension('phpbb')->lang("GROUP_LEADER");
            } else {
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
            }
            echo "</a></th>
\t\t\t<th class=\"posts\"><a href=\"";
            // line 55
            echo (isset($context["U_SORT_POSTS"]) ? $context["U_SORT_POSTS"] : null);
            echo "#memberlist\">";
            echo $this->env->getExtension('phpbb')->lang("POSTS");
            echo "</a></th>
\t\t\t<th class=\"info\">";
            // line 56
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "custom_fields"));
            foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                if ((!$this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "S_FIRST_ROW"))) {
                    echo $this->env->getExtension('phpbb')->lang("COMMA_SEPARATOR");
                    echo " ";
                }
                echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_NAME");
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</th>
\t\t\t<th class=\"joined\"><a href=\"";
            // line 57
            echo (isset($context["U_SORT_JOINED"]) ? $context["U_SORT_JOINED"] : null);
            echo "#memberlist\">";
            echo $this->env->getExtension('phpbb')->lang("JOINED");
            echo "</a></th>
\t\t\t";
            // line 58
            if ((isset($context["U_SORT_ACTIVE"]) ? $context["U_SORT_ACTIVE"] : null)) {
                echo "<th class=\"active\"><a href=\"";
                echo (isset($context["U_SORT_ACTIVE"]) ? $context["U_SORT_ACTIVE"] : null);
                echo "#memberlist\">";
                echo $this->env->getExtension('phpbb')->lang("LAST_ACTIVE");
                echo "</a></th>";
            }
            // line 59
            echo "\t\t</tr>
\t\t</thead>
\t\t<tbody>
\t";
        }
        // line 63
        echo "\t\t";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "memberrow"));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["memberrow"]) {
            // line 64
            echo "\t\t\t";
            if ((isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null)) {
                // line 65
                echo "\t\t\t\t";
                if (((!$this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "S_GROUP_LEADER")) && (!$this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "S_MEMBER_HEADER")))) {
                    // line 66
                    echo "\t\t\t\t";
                    if (((isset($context["S_LEADERS_SET"]) ? $context["S_LEADERS_SET"] : null) && $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "S_FIRST_ROW"))) {
                        // line 67
                        echo "\t\t\t\t<tr class=\"bg1\">
\t\t\t\t\t<td colspan=\"";
                        // line 68
                        if ((isset($context["U_SORT_ACTIVE"]) ? $context["U_SORT_ACTIVE"] : null)) {
                            echo "5";
                        } else {
                            echo "4";
                        }
                        echo "\">&nbsp;</td>
\t\t\t\t</tr>
\t\t\t\t";
                    }
                    // line 71
                    if ((isset($context["S_LEADERS_SET"]) ? $context["S_LEADERS_SET"] : null)) {
                        // line 72
                        echo "\t\t</tbody>
\t\t</table>

\t</div>
</div>
";
                    }
                    // line 78
                    echo "<div class=\"forumbg forumbg-table\">
\t<div class=\"inner\">

\t<table class=\"table1\">
\t<thead>
\t<tr>
\t";
                    // line 84
                    if ((!(isset($context["S_LEADERS_SET"]) ? $context["S_LEADERS_SET"] : null))) {
                        // line 85
                        echo "\t\t<th class=\"name\" data-dfn=\"";
                        echo $this->env->getExtension('phpbb')->lang("RANK");
                        echo $this->env->getExtension('phpbb')->lang("COMMA_SEPARATOR");
                        echo $this->env->getExtension('phpbb')->lang("USERNAME");
                        echo "\"><span class=\"rank-img\"><a href=\"";
                        echo (isset($context["U_SORT_RANK"]) ? $context["U_SORT_RANK"] : null);
                        echo "\">";
                        echo $this->env->getExtension('phpbb')->lang("RANK");
                        echo "</a></span><a href=\"";
                        echo (isset($context["U_SORT_USERNAME"]) ? $context["U_SORT_USERNAME"] : null);
                        echo "\">";
                        if ((isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null)) {
                            echo $this->env->getExtension('phpbb')->lang("GROUP_MEMBERS");
                        } else {
                            echo $this->env->getExtension('phpbb')->lang("USERNAME");
                        }
                        echo "</a></th>
\t\t\t<th class=\"posts\"><a href=\"";
                        // line 86
                        echo (isset($context["U_SORT_POSTS"]) ? $context["U_SORT_POSTS"] : null);
                        echo "#memberlist\">";
                        echo $this->env->getExtension('phpbb')->lang("POSTS");
                        echo "</a></th>
\t\t\t<th class=\"info\">";
                        // line 87
                        $context['_parent'] = (array) $context;
                        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "custom_fields"));
                        foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                            if ((!$this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "S_FIRST_ROW"))) {
                                echo $this->env->getExtension('phpbb')->lang("COMMA_SEPARATOR");
                                echo " ";
                            }
                            echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_NAME");
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        echo "</th>
\t\t\t<th class=\"joined\"><a href=\"";
                        // line 88
                        echo (isset($context["U_SORT_JOINED"]) ? $context["U_SORT_JOINED"] : null);
                        echo "#memberlist\">";
                        echo $this->env->getExtension('phpbb')->lang("JOINED");
                        echo "</a></th>
\t\t\t";
                        // line 89
                        if ((isset($context["U_SORT_ACTIVE"]) ? $context["U_SORT_ACTIVE"] : null)) {
                            echo "<th class=\"active\"><a href=\"";
                            echo (isset($context["U_SORT_ACTIVE"]) ? $context["U_SORT_ACTIVE"] : null);
                            echo "#memberlist\">";
                            echo $this->env->getExtension('phpbb')->lang("LAST_ACTIVE");
                            echo "</a></th>";
                        }
                        // line 90
                        echo "\t";
                    } elseif ((isset($context["S_SHOW_GROUP"]) ? $context["S_SHOW_GROUP"] : null)) {
                        // line 91
                        echo "\t\t<th class=\"name\">";
                        echo $this->env->getExtension('phpbb')->lang("GROUP_MEMBERS");
                        echo "</th>
\t\t<th class=\"posts\">";
                        // line 92
                        echo $this->env->getExtension('phpbb')->lang("POSTS");
                        echo "</th>
\t\t<th class=\"info\">";
                        // line 93
                        $context['_parent'] = (array) $context;
                        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "custom_fields"));
                        foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                            if ((!$this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "S_FIRST_ROW"))) {
                                echo $this->env->getExtension('phpbb')->lang("COMMA_SEPARATOR");
                                echo " ";
                            }
                            echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_NAME");
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        echo "</th>
\t\t<th class=\"joined\">";
                        // line 94
                        echo $this->env->getExtension('phpbb')->lang("JOINED");
                        echo "</th>
\t\t";
                        // line 95
                        if ((isset($context["U_SORT_ACTIVE"]) ? $context["U_SORT_ACTIVE"] : null)) {
                            echo "<th class=\"active\">";
                            echo $this->env->getExtension('phpbb')->lang("LAST_ACTIVE");
                            echo "</th>";
                        }
                        // line 96
                        echo "\t";
                    }
                    // line 97
                    echo "\t</tr>
\t</thead>
\t<tbody>
\t\t\t\t\t";
                    // line 100
                    $value = 1;
                    $context['definition']->set('S_MEMBER_HEADER', $value);
                    // line 101
                    echo "\t\t\t\t";
                }
                // line 102
                echo "\t\t\t";
            }
            // line 103
            echo "
\t<tr class=\"";
            // line 104
            if (($this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "S_ROW_COUNT") % 2 == 0)) {
                echo "bg1";
            } else {
                echo "bg2";
            }
            echo "\">
\t\t<td>";
            // line 105
            if ($this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "RANK_IMG")) {
                echo "<span class=\"rank-img\">";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "RANK_IMG");
                echo "</span>";
            } else {
                echo "<span class=\"rank-img\">";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "RANK_TITLE");
                echo "</span>";
            }
            if (((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null) && (!(isset($context["S_SELECT_SINGLE"]) ? $context["S_SELECT_SINGLE"] : null)))) {
                echo "<input type=\"checkbox\" name=\"user\" value=\"";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "USERNAME");
                echo "\" /> ";
            }
            echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "USERNAME_FULL");
            if ((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null)) {
                echo "<br />[&nbsp;<a href=\"#\" onclick=\"insert_single_user('#results', '";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "A_USERNAME");
                echo "'); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("SELECT");
                echo "</a>&nbsp;]";
            }
            echo "</td>
\t\t<td class=\"posts\">";
            // line 106
            if (($this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "POSTS") && (isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null))) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "U_SEARCH_USER");
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_USER_POSTS");
                echo "\">";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "POSTS");
                echo "</a>";
            } else {
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "POSTS");
            }
            echo "</td>
\t\t<td class=\"info\">";
            // line 107
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "custom_fields"));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                echo "<div>";
                echo $this->getAttribute((isset($context["custom_fields"]) ? $context["custom_fields"] : null), "PROFILE_FIELD_VALUE");
                echo "</div>";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                echo "&nbsp;";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</td>
\t\t<td>";
            // line 108
            echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "JOINED");
            echo "</td>
\t\t";
            // line 109
            if ((isset($context["S_VIEWONLINE"]) ? $context["S_VIEWONLINE"] : null)) {
                echo "<td>";
                echo $this->getAttribute((isset($context["memberrow"]) ? $context["memberrow"] : null), "LAST_ACTIVE");
                echo "&nbsp;</td>";
            }
            // line 110
            echo "\t</tr>
\t\t";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 112
            echo "\t<tr class=\"bg1\">
\t\t<td colspan=\"";
            // line 113
            if ((isset($context["S_VIEWONLINE"]) ? $context["S_VIEWONLINE"] : null)) {
                echo "5";
            } else {
                echo "4";
            }
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("NO_MEMBERS");
            echo "</td>
\t</tr>
\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['memberrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 116
        echo "\t</tbody>
\t</table>

\t</div>
</div>

";
        // line 122
        if (((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null) && (!(isset($context["S_SELECT_SINGLE"]) ? $context["S_SELECT_SINGLE"] : null)))) {
            // line 123
            echo "<fieldset class=\"display-actions\">
\t<input type=\"submit\" name=\"submit\" value=\"";
            // line 124
            echo $this->env->getExtension('phpbb')->lang("SELECT_MARKED");
            echo "\" class=\"button2\" />
\t<div><a href=\"#\" onclick=\"marklist('results', 'user', true); return false;\">";
            // line 125
            echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
            echo "</a> &bull; <a href=\"#\" onclick=\"marklist('results', 'user', false); return false;\">";
            echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
            echo "</a></div>
</fieldset>
";
        }
        // line 128
        echo "
";
        // line 129
        if ((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null)) {
            // line 130
            echo "</form>
<form method=\"post\" id=\"sort-results\" action=\"";
            // line 131
            echo (isset($context["S_MODE_ACTION"]) ? $context["S_MODE_ACTION"] : null);
            echo "\">
";
        }
        // line 133
        echo "
";
        // line 134
        if (((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null) && (!(isset($context["S_SEARCH_USER"]) ? $context["S_SEARCH_USER"] : null)))) {
            // line 135
            echo "<fieldset class=\"display-options\">
\t<label for=\"sk\">";
            // line 136
            echo $this->env->getExtension('phpbb')->lang("SELECT_SORT_METHOD");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <select name=\"sk\" id=\"sk\">";
            echo (isset($context["S_MODE_SELECT"]) ? $context["S_MODE_SELECT"] : null);
            echo "</select></label>
\t<label for=\"sd\">";
            // line 137
            echo $this->env->getExtension('phpbb')->lang("ORDER");
            echo " <select name=\"sd\" id=\"sd\">";
            echo (isset($context["S_ORDER_SELECT"]) ? $context["S_ORDER_SELECT"] : null);
            echo "</select></label>
\t<input type=\"submit\" name=\"sort\" value=\"";
            // line 138
            echo $this->env->getExtension('phpbb')->lang("SUBMIT");
            echo "\" class=\"button2\" />
</fieldset>
";
        }
        // line 141
        echo "
</form>

<div class=\"action-bar bottom\">
\t<div class=\"pagination\">
\t\t";
        // line 146
        echo (isset($context["TOTAL_USERS"]) ? $context["TOTAL_USERS"] : null);
        echo "
\t\t";
        // line 147
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination"))) {
            echo " 
\t\t\t";
            // line 148
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
            // line 149
            echo "\t\t";
        } else {
            echo " 
\t\t\t &bull; ";
            // line 150
            echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
            echo "
\t\t";
        }
        // line 152
        echo "\t</div>
</div>

";
        // line 155
        if ((isset($context["S_IN_SEARCH_POPUP"]) ? $context["S_IN_SEARCH_POPUP"] : null)) {
            // line 156
            echo "\t";
            $location = "simple_footer.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->env->loadTemplate("simple_footer.html")->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        } else {
            // line 158
            echo "\t";
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
            // line 159
            echo "\t";
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
    }

    public function getTemplateName()
    {
        return "memberlist_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  703 => 159,  690 => 158,  676 => 156,  674 => 155,  669 => 152,  664 => 150,  659 => 149,  647 => 148,  643 => 147,  639 => 146,  632 => 141,  626 => 138,  620 => 137,  613 => 136,  610 => 135,  608 => 134,  605 => 133,  600 => 131,  597 => 130,  595 => 129,  592 => 128,  584 => 125,  580 => 124,  577 => 123,  575 => 122,  567 => 116,  552 => 113,  549 => 112,  543 => 110,  537 => 109,  533 => 108,  515 => 107,  501 => 106,  476 => 105,  468 => 104,  465 => 103,  462 => 102,  459 => 101,  456 => 100,  451 => 97,  448 => 96,  442 => 95,  438 => 94,  423 => 93,  419 => 92,  414 => 91,  411 => 90,  403 => 89,  397 => 88,  382 => 87,  376 => 86,  357 => 85,  355 => 84,  347 => 78,  339 => 72,  337 => 71,  327 => 68,  324 => 67,  321 => 66,  318 => 65,  315 => 64,  309 => 63,  303 => 59,  295 => 58,  289 => 57,  274 => 56,  268 => 55,  246 => 54,  238 => 48,  236 => 47,  233 => 46,  228 => 43,  223 => 41,  218 => 40,  206 => 39,  202 => 38,  198 => 37,  192 => 33,  181 => 31,  177 => 30,  174 => 29,  156 => 28,  140 => 24,  136 => 22,  131 => 21,  126 => 20,  122 => 19,  115 => 17,  104 => 16,  102 => 15,  99 => 14,  93 => 11,  90 => 10,  78 => 9,  71 => 8,  58 => 7,  47 => 4,  34 => 3,  21 => 2,  19 => 1,);
    }
}
