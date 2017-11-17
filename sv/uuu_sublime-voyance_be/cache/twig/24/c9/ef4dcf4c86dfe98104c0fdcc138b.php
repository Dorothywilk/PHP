<?php

/* memberlist_team.html */
class __TwigTemplate_24c9ef4dcf4c86dfe98104c0fdcc138b extends Twig_Template
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
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        echo "</h2>

<form method=\"post\" action=\"";
        // line 5
        echo (isset($context["S_MODE_ACTION"]) ? $context["S_MODE_ACTION"] : null);
        echo "\">

";
        // line 7
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "group"));
        foreach ($context['_seq'] as $context["_key"] => $context["group"]) {
            // line 8
            echo "<div class=\"forumbg forumbg-table\">
\t<div class=\"inner\">

\t<table class=\"table1\">
\t<thead>
\t<tr>
\t\t<th class=\"name\" data-dfn=\"";
            // line 14
            echo $this->env->getExtension('phpbb')->lang("RANK");
            echo $this->env->getExtension('phpbb')->lang("COMMA_SEPARATOR");
            echo $this->env->getExtension('phpbb')->lang("USERNAME");
            echo "\"><span class=\"rank-img\">";
            echo $this->env->getExtension('phpbb')->lang("RANK");
            echo "&nbsp;</span>";
            if ($this->getAttribute((isset($context["group"]) ? $context["group"] : null), "U_GROUP")) {
                echo "<a href=\"";
                echo $this->getAttribute((isset($context["group"]) ? $context["group"] : null), "U_GROUP");
                echo "\">";
                echo $this->getAttribute((isset($context["group"]) ? $context["group"] : null), "GROUP_NAME");
                echo "</a>";
            } else {
                echo $this->getAttribute((isset($context["group"]) ? $context["group"] : null), "GROUP_NAME");
            }
            echo "</th>
\t\t<th class=\"info\">";
            // line 15
            echo $this->env->getExtension('phpbb')->lang("PRIMARY_GROUP");
            echo "</th>
\t\t";
            // line 16
            if ((isset($context["S_DISPLAY_MODERATOR_FORUMS"]) ? $context["S_DISPLAY_MODERATOR_FORUMS"] : null)) {
                echo "<th class=\"info\">";
                echo $this->env->getExtension('phpbb')->lang("MODERATOR");
                echo "</th>";
            }
            // line 17
            echo "\t</tr>
\t</thead>
\t<tbody>
";
            // line 20
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["group"]) ? $context["group"] : null), "user"));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["user"]) {
                // line 21
                echo "\t<tr class=\"";
                if (($this->getAttribute((isset($context["user"]) ? $context["user"] : null), "S_ROW_COUNT") % 2 == 0)) {
                    echo "bg1";
                } else {
                    echo "bg2";
                }
                echo "\">
\t\t<td>";
                // line 22
                if ($this->getAttribute((isset($context["user"]) ? $context["user"] : null), "RANK_IMG")) {
                    echo "<span class=\"rank-img\">";
                    echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "RANK_IMG");
                    echo "</span>";
                } else {
                    echo "<span class=\"rank-img\">";
                    echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "RANK_TITLE");
                    echo "</span>";
                }
                echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "USERNAME_FULL");
                echo "</td>
\t\t<td class=\"info\">";
                // line 23
                if ($this->getAttribute((isset($context["user"]) ? $context["user"] : null), "U_GROUP")) {
                    // line 24
                    echo "\t\t\t<a";
                    if ($this->getAttribute((isset($context["user"]) ? $context["user"] : null), "GROUP_COLOR")) {
                        echo " style=\"font-weight: bold; color: #";
                        echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "GROUP_COLOR");
                        echo "\"";
                    }
                    echo " href=\"";
                    echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "U_GROUP");
                    echo "\">";
                    echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "GROUP_NAME");
                    echo "</a>
\t\t\t";
                } else {
                    // line 26
                    echo "\t\t\t\t";
                    echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "GROUP_NAME");
                    echo "
\t\t\t";
                }
                // line 27
                echo "</td>
\t\t";
                // line 28
                if ((isset($context["S_DISPLAY_MODERATOR_FORUMS"]) ? $context["S_DISPLAY_MODERATOR_FORUMS"] : null)) {
                    // line 29
                    echo "\t\t\t<td class=\"info\">";
                    if ($this->getAttribute((isset($context["user"]) ? $context["user"] : null), "FORUM_OPTIONS")) {
                        echo "<select style=\"width: 100%;\">";
                        echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "FORUMS");
                        echo "</select>";
                    } elseif ($this->getAttribute((isset($context["user"]) ? $context["user"] : null), "FORUMS")) {
                        echo $this->getAttribute((isset($context["user"]) ? $context["user"] : null), "FORUMS");
                    } else {
                        echo "-";
                    }
                    echo "</td>
\t\t";
                }
                // line 31
                echo "\t</tr>
";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                // line 33
                echo "\t<tr class=\"bg1\">
\t\t<td colspan=\"3\"><strong>";
                // line 34
                echo $this->env->getExtension('phpbb')->lang("NO_MEMBERS");
                echo "</strong></td>
\t</tr>
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['user'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 37
            echo "\t</tbody>
\t</table>
\t
\t</div>
</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['group'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 43
        echo "
</form>

";
        // line 46
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
        // line 47
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
        return "memberlist_team.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  203 => 47,  191 => 46,  186 => 43,  175 => 37,  166 => 34,  163 => 33,  157 => 31,  143 => 29,  141 => 28,  138 => 27,  132 => 26,  118 => 24,  116 => 23,  103 => 22,  94 => 21,  89 => 20,  84 => 17,  78 => 16,  74 => 15,  56 => 14,  48 => 8,  44 => 7,  39 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
