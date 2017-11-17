<?php

/* profilefields/string.html */
class __TwigTemplate_819e8dde2a1d7e3c60e49d8e64247da8 extends Twig_Template
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
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "string"));
        foreach ($context['_seq'] as $context["_key"] => $context["string"]) {
            // line 2
            echo "<input type=\"text\" class=\"inputbox autowidth\" name=\"";
            echo $this->getAttribute((isset($context["string"]) ? $context["string"] : null), "FIELD_IDENT");
            echo "\" id=\"";
            echo $this->getAttribute((isset($context["string"]) ? $context["string"] : null), "FIELD_IDENT");
            echo "\" size=\"";
            echo $this->getAttribute((isset($context["string"]) ? $context["string"] : null), "FIELD_LENGTH");
            echo "\" maxlength=\"";
            echo $this->getAttribute((isset($context["string"]) ? $context["string"] : null), "FIELD_MAXLEN");
            echo "\" value=\"";
            echo $this->getAttribute((isset($context["string"]) ? $context["string"] : null), "FIELD_VALUE");
            echo "\" />
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['string'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "profilefields/string.html";
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
