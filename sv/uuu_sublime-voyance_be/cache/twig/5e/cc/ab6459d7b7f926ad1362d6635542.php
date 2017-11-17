<?php

/* posting_attach_body.html */
class __TwigTemplate_5eccab6459d7b7f926ad1362d6635542 extends Twig_Template
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
        echo "<div class=\"panel bg3 panel-container\" id=\"attach-panel\">
\t<div class=\"inner\">

\t<p>";
        // line 4
        echo $this->env->getExtension('phpbb')->lang("ADD_ATTACHMENT_EXPLAIN");
        echo " <span class=\"hidden\" id=\"drag-n-drop-message\">";
        echo $this->env->getExtension('phpbb')->lang("PLUPLOAD_DRAG_TEXTAREA");
        echo "</span></p>
\t
\t<fieldset class=\"fields2\" id=\"attach-panel-basic\">
\t<dl>
\t\t<dt><label for=\"fileupload\">";
        // line 8
        echo $this->env->getExtension('phpbb')->lang("FILENAME");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd>
\t\t\t<input type=\"file\" name=\"fileupload\" id=\"fileupload\" maxlength=\"";
        // line 10
        echo (isset($context["FILESIZE"]) ? $context["FILESIZE"] : null);
        echo "\" value=\"\" class=\"inputbox autowidth\" /> 
\t\t\t<input type=\"submit\" name=\"add_file\" value=\"";
        // line 11
        echo $this->env->getExtension('phpbb')->lang("ADD_FILE");
        echo "\" class=\"button2\" onclick=\"upload = true;\" />
\t\t</dd>
\t</dl>
\t<dl>
\t\t<dt><label for=\"filecomment\">";
        // line 15
        echo $this->env->getExtension('phpbb')->lang("FILE_COMMENT");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t<dd><textarea name=\"filecomment\" id=\"filecomment\" rows=\"1\" cols=\"40\" class=\"inputbox autowidth\">";
        // line 16
        echo (isset($context["FILE_COMMENT"]) ? $context["FILE_COMMENT"] : null);
        echo "</textarea></dd>
\t</dl>
\t</fieldset>

\t<div id=\"attach-panel-multi\">
\t\t<input type=\"button\" class=\"button2\" value=\"";
        // line 21
        echo $this->env->getExtension('phpbb')->lang("PLUPLOAD_ADD_FILES");
        echo "\" id=\"add_files\" />
\t</div>

\t<div class=\"panel";
        // line 24
        if ((!twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "attach_row")))) {
            echo " hidden";
        }
        echo "\" id=\"file-list-container\">
\t\t<div class=\"inner\">
\t\t\t<table class=\"table1 zebra-list fixed-width-table\">
\t\t\t\t<thead>
\t\t\t\t\t<tr>
\t\t\t\t\t\t<th class=\"attach-name\">";
        // line 29
        echo $this->env->getExtension('phpbb')->lang("PLUPLOAD_FILENAME");
        echo "</th>
\t\t\t\t\t\t<th class=\"attach-comment\">";
        // line 30
        echo $this->env->getExtension('phpbb')->lang("FILE_COMMENT");
        echo "</th>
\t\t\t\t\t\t<th class=\"attach-filesize\">";
        // line 31
        echo $this->env->getExtension('phpbb')->lang("PLUPLOAD_SIZE");
        echo "</th>
\t\t\t\t\t\t<th class=\"attach-status\">";
        // line 32
        echo $this->env->getExtension('phpbb')->lang("PLUPLOAD_STATUS");
        echo "</th>
\t\t\t\t\t</tr>
\t\t\t\t</thead>
\t\t\t\t<tbody class=\"responsive-skip-empty\" id=\"file-list\">
\t\t\t\t\t<tr class=\"attach-row\" id=\"attach-row-tpl\">
\t\t\t\t\t\t\t<td class=\"attach-name\">
\t\t\t\t\t\t\t\t<span class=\"file-name ellipsis-text\"></span>
\t\t\t\t\t\t\t\t<span class=\"attach-controls\">
\t\t\t\t\t\t\t\t\t<input type=\"button\" value=\"";
        // line 40
        echo $this->env->getExtension('phpbb')->lang("PLACE_INLINE");
        echo "\" class=\"button2 hidden file-inline-bbcode\" />&nbsp;
\t\t\t\t\t\t\t\t\t<input type=\"button\" value=\"";
        // line 41
        echo $this->env->getExtension('phpbb')->lang("DELETE_FILE");
        echo "\" class=\"button2 file-delete\" />
\t\t\t\t\t\t\t\t</span>
\t\t\t\t\t\t\t\t<span class=\"clear\"></span>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td class=\"attach-comment\">
\t\t\t\t\t\t\t\t<textarea rows=\"1\" cols=\"30\" class=\"inputbox\"></textarea>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td class=\"attach-filesize\">
\t\t\t\t\t\t\t\t<span class=\"file-size\"></span>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td class=\"attach-status\">
\t\t\t\t\t\t\t\t<span class=\"file-progress\">
\t\t\t\t\t\t\t\t\t<span class=\"file-progress-bar\"></span>
\t\t\t\t\t\t\t\t</span>
\t\t\t\t\t\t\t\t<span class=\"file-status\"></span>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t</tr>
\t\t\t\t\t";
        // line 58
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "attach_row"));
        foreach ($context['_seq'] as $context["_key"] => $context["attach_row"]) {
            // line 59
            echo "\t\t\t\t\t\t<tr class=\"attach-row\" data-attach-id=\"";
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "ATTACH_ID");
            echo "\">
\t\t\t\t\t\t\t<td class=\"attach-name\">
\t\t\t\t\t\t\t\t<span class=\"file-name ellipsis-text\"><a href=\"";
            // line 61
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "U_VIEW_ATTACHMENT");
            echo "\">";
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "FILENAME");
            echo "</a></span>
\t\t\t\t\t\t\t\t<span class=\"attach-controls\">
\t\t\t\t\t\t\t\t\t";
            // line 63
            if ((isset($context["S_INLINE_ATTACHMENT_OPTIONS"]) ? $context["S_INLINE_ATTACHMENT_OPTIONS"] : null)) {
                echo "<input type=\"button\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("PLACE_INLINE");
                echo "\" class=\"button2 file-inline-bbcode\" />&nbsp; ";
            }
            // line 64
            echo "\t\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"delete_file[";
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "ASSOC_INDEX");
            echo "]\" value=\"";
            echo $this->env->getExtension('phpbb')->lang("DELETE_FILE");
            echo "\" class=\"button2 file-delete\" />
\t\t\t\t\t\t\t\t</span>
\t\t\t\t\t\t\t\t<span class=\"clear\"></span>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td class=\"attach-comment\">
\t\t\t\t\t\t\t\t<textarea name=\"comment_list[";
            // line 69
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "ASSOC_INDEX");
            echo "]\" rows=\"1\" cols=\"30\" class=\"inputbox\">";
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "FILE_COMMENT");
            echo "</textarea>
\t\t\t\t\t\t\t\t";
            // line 70
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "S_HIDDEN");
            echo "
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td class=\"attach-filesize\">
\t\t\t\t\t\t\t\t<span class=\"file-size\">";
            // line 73
            echo $this->getAttribute((isset($context["attach_row"]) ? $context["attach_row"] : null), "FILESIZE");
            echo "</span>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td class=\"attach-status\">
\t\t\t\t\t\t\t\t<span class=\"file-status file-uploaded\"></span>
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t</tr>
\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attach_row'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 80
        echo "\t\t\t\t</tbody>
\t\t\t</table>
\t\t</div>
\t</div>
\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "posting_attach_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  166 => 70,  130 => 59,  87 => 31,  79 => 29,  69 => 24,  63 => 21,  43 => 11,  39 => 10,  325 => 102,  322 => 101,  305 => 99,  298 => 97,  297 => 96,  290 => 94,  278 => 90,  276 => 89,  271 => 88,  269 => 87,  265 => 86,  261 => 85,  257 => 84,  252 => 83,  237 => 78,  228 => 75,  226 => 74,  218 => 72,  209 => 70,  203 => 68,  201 => 67,  197 => 66,  193 => 65,  186 => 63,  176 => 57,  172 => 73,  170 => 54,  167 => 53,  143 => 63,  136 => 61,  125 => 33,  110 => 30,  98 => 27,  94 => 26,  90 => 25,  82 => 23,  74 => 21,  70 => 20,  62 => 18,  58 => 17,  54 => 16,  25 => 5,  650 => 189,  646 => 187,  640 => 184,  635 => 183,  632 => 182,  630 => 181,  627 => 180,  623 => 178,  617 => 176,  615 => 175,  609 => 174,  604 => 173,  600 => 171,  598 => 170,  595 => 169,  589 => 166,  583 => 165,  578 => 164,  575 => 163,  573 => 162,  570 => 161,  547 => 158,  538 => 157,  535 => 156,  533 => 155,  530 => 154,  526 => 152,  524 => 151,  521 => 150,  511 => 148,  508 => 147,  500 => 145,  497 => 144,  489 => 142,  486 => 141,  478 => 139,  475 => 138,  467 => 136,  464 => 135,  456 => 133,  453 => 132,  445 => 130,  442 => 129,  441 => 128,  435 => 124,  433 => 123,  430 => 122,  425 => 119,  419 => 116,  416 => 115,  413 => 114,  406 => 110,  402 => 108,  400 => 107,  396 => 106,  386 => 104,  384 => 103,  381 => 102,  371 => 95,  362 => 94,  355 => 93,  349 => 92,  345 => 91,  341 => 90,  336 => 87,  334 => 86,  331 => 85,  326 => 82,  324 => 81,  321 => 80,  319 => 79,  315 => 77,  314 => 76,  300 => 73,  296 => 71,  295 => 70,  291 => 68,  288 => 67,  281 => 66,  272 => 65,  264 => 63,  262 => 62,  255 => 59,  250 => 57,  241 => 55,  239 => 54,  234 => 77,  224 => 50,  214 => 71,  211 => 46,  208 => 45,  189 => 64,  185 => 80,  180 => 41,  178 => 40,  175 => 39,  171 => 37,  159 => 36,  156 => 35,  152 => 52,  149 => 64,  146 => 31,  132 => 30,  128 => 29,  126 => 58,  114 => 31,  106 => 41,  101 => 22,  100 => 21,  97 => 20,  91 => 32,  83 => 30,  78 => 22,  73 => 10,  50 => 15,  42 => 8,  33 => 8,  28 => 3,  306 => 84,  301 => 98,  287 => 93,  284 => 92,  270 => 78,  267 => 64,  253 => 76,  246 => 81,  243 => 80,  230 => 52,  227 => 51,  222 => 73,  216 => 63,  202 => 62,  199 => 61,  187 => 54,  179 => 49,  174 => 48,  169 => 46,  165 => 45,  160 => 69,  158 => 41,  155 => 34,  141 => 39,  138 => 38,  124 => 37,  121 => 36,  113 => 31,  109 => 25,  104 => 23,  102 => 40,  95 => 24,  92 => 23,  86 => 24,  81 => 14,  76 => 16,  68 => 14,  66 => 19,  57 => 10,  55 => 16,  52 => 8,  44 => 6,  36 => 6,  34 => 3,  31 => 4,  38 => 11,  24 => 4,  22 => 2,  19 => 1,);
    }
}
