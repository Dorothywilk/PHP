<?php

/* profilefields/url.html */
class __TwigTemplate_d9ed82dfc0a001da78edc2dca40fe69a extends Twig_Template
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
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "url"));
        foreach ($context['_seq'] as $context["_key"] => $context["url"]) {
            // line 2
            echo "<input type=\"url\" class=\"inputbox autowidth\" name=\"";
            echo $this->getAttribute((isset($context["url"]) ? $context["url"] : null), "FIELD_IDENT");
            echo "\" id=\"";
            echo $this->getAttribute((isset($context["url"]) ? $context["url"] : null), "FIELD_IDENT");
            echo "\" size=\"";
            echo $this->getAttribute((isset($context["url"]) ? $context["url"] : null), "FIELD_LENGTH");
            echo "\" maxlength=\"";
            echo $this->getAttribute((isset($context["url"]) ? $context["url"] : null), "FIELD_MAXLEN");
            echo "\" value=\"";
            echo $this->getAttribute((isset($context["url"]) ? $context["url"] : null), "FIELD_VALUE");
            echo "\" />
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['url'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "profilefields/url.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  23 => 2,  19 => 1,);
    }
}
