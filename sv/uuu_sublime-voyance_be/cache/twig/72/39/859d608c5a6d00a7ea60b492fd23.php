<?php

/* viewtopic_topic_tools.html */
class __TwigTemplate_7239859d608c5a6d00a7ea60b492fd23 extends Twig_Template
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
        if (((!(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) && ((((((isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null) || (isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null)) || (isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null)) || (isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null)) || (isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null)) || (isset($context["S_DISPLAY_TOPIC_TOOLS"]) ? $context["S_DISPLAY_TOPIC_TOOLS"] : null)))) {
            // line 2
            echo "\t<div class=\"dropdown-container dropdown-button-control topic-tools\">
\t\t<span title=\"";
            // line 3
            echo $this->env->getExtension('phpbb')->lang("TOPIC_TOOLS");
            echo "\" class=\"button icon-button tools-icon dropdown-trigger dropdown-select\"></span>
\t\t<div class=\"dropdown hidden\">
\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 7
            // line 8
            echo "\t\t\t\t";
            if ((isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null)) {
                // line 9
                echo "\t\t\t\t\t<li class=\"small-icon icon-";
                if ((isset($context["S_WATCHING_TOPIC"]) ? $context["S_WATCHING_TOPIC"] : null)) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\">
\t\t\t\t\t\t<a href=\"";
                // line 10
                echo (isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null);
                echo "\" class=\"watch-topic-link\" title=\"";
                echo (isset($context["S_WATCH_TOPIC_TITLE"]) ? $context["S_WATCH_TOPIC_TITLE"] : null);
                echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"small-icon icon-";
                if ((!(isset($context["S_WATCHING_TOPIC"]) ? $context["S_WATCHING_TOPIC"] : null))) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\" data-toggle-text=\"";
                echo (isset($context["S_WATCH_TOPIC_TOGGLE"]) ? $context["S_WATCH_TOPIC_TOGGLE"] : null);
                echo "\" data-toggle-url=\"";
                echo (isset($context["U_WATCH_TOPIC_TOGGLE"]) ? $context["U_WATCH_TOPIC_TOGGLE"] : null);
                echo "\" data-update-all=\".watch-topic-link\">";
                echo (isset($context["S_WATCH_TOPIC_TITLE"]) ? $context["S_WATCH_TOPIC_TITLE"] : null);
                echo "</a>
\t\t\t\t\t</li>
\t\t\t\t";
            }
            // line 13
            echo "\t\t\t\t";
            if ((isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null)) {
                // line 14
                echo "\t\t\t\t\t<li class=\"small-icon icon-bookmark\">
\t\t\t\t\t\t<a href=\"";
                // line 15
                echo (isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null);
                echo "\" class=\"bookmark-link\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("BOOKMARK_TOPIC");
                echo "\" data-ajax=\"alt_text\" data-alt-text=\"";
                echo (isset($context["S_BOOKMARK_TOGGLE"]) ? $context["S_BOOKMARK_TOGGLE"] : null);
                echo "\" data-update-all=\".bookmark-link\">";
                echo (isset($context["S_BOOKMARK_TOPIC"]) ? $context["S_BOOKMARK_TOPIC"] : null);
                echo "</a>
\t\t\t\t\t</li>
\t\t\t\t";
            }
            // line 18
            echo "\t\t\t\t";
            if ((isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null)) {
                echo "<li class=\"small-icon icon-bump\"><a href=\"";
                echo (isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("BUMP_TOPIC");
                echo "\" data-ajax=\"true\">";
                echo $this->env->getExtension('phpbb')->lang("BUMP_TOPIC");
                echo "</a></li>";
            }
            // line 19
            echo "\t\t\t\t";
            if ((isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null)) {
                echo "<li class=\"small-icon icon-sendemail\"><a href=\"";
                echo (isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("EMAIL_TOPIC");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("EMAIL_TOPIC");
                echo "</a></li>";
            }
            // line 20
            echo "\t\t\t\t";
            if ((isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null)) {
                echo "<li class=\"small-icon icon-print\"><a href=\"";
                echo (isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("PRINT_TOPIC");
                echo "\" accesskey=\"p\">";
                echo $this->env->getExtension('phpbb')->lang("PRINT_TOPIC");
                echo "</a></li>";
            }
            // line 21
            echo "\t\t\t\t";
            // line 22
            echo "\t\t\t</ul>
\t\t</div>
\t</div>
";
        }
    }

    public function getTemplateName()
    {
        return "viewtopic_topic_tools.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  115 => 21,  93 => 19,  82 => 18,  67 => 14,  64 => 13,  44 => 10,  35 => 9,  32 => 8,  24 => 3,  21 => 2,  1453 => 400,  1450 => 399,  1444 => 396,  1432 => 395,  1429 => 394,  1427 => 393,  1424 => 392,  1412 => 391,  1411 => 390,  1406 => 387,  1402 => 385,  1396 => 383,  1393 => 382,  1380 => 381,  1378 => 380,  1374 => 379,  1371 => 378,  1369 => 377,  1366 => 376,  1360 => 372,  1345 => 370,  1341 => 369,  1337 => 368,  1328 => 364,  1321 => 363,  1319 => 362,  1316 => 361,  1304 => 360,  1300 => 358,  1299 => 357,  1296 => 356,  1292 => 354,  1286 => 353,  1269 => 352,  1267 => 351,  1264 => 350,  1263 => 349,  1259 => 347,  1258 => 346,  1255 => 345,  1249 => 341,  1244 => 339,  1236 => 338,  1228 => 337,  1226 => 336,  1220 => 334,  1218 => 333,  1215 => 332,  1201 => 330,  1199 => 329,  1196 => 328,  1191 => 326,  1180 => 320,  1174 => 316,  1173 => 315,  1170 => 314,  1161 => 313,  1159 => 312,  1153 => 311,  1150 => 310,  1146 => 308,  1137 => 307,  1133 => 306,  1130 => 305,  1126 => 303,  1117 => 302,  1113 => 301,  1110 => 300,  1107 => 299,  1100 => 298,  1099 => 297,  1096 => 296,  1092 => 294,  1083 => 292,  1079 => 291,  1074 => 289,  1070 => 287,  1068 => 286,  1063 => 284,  1060 => 283,  1052 => 280,  1049 => 279,  1047 => 278,  1044 => 277,  1037 => 273,  1033 => 272,  1029 => 271,  1025 => 270,  1021 => 269,  1015 => 267,  1008 => 263,  1004 => 262,  1000 => 261,  996 => 260,  992 => 259,  986 => 257,  984 => 256,  981 => 255,  980 => 254,  961 => 253,  960 => 252,  957 => 251,  954 => 250,  950 => 248,  948 => 247,  938 => 244,  935 => 243,  932 => 242,  922 => 239,  919 => 238,  916 => 237,  906 => 234,  903 => 233,  900 => 232,  890 => 229,  887 => 228,  884 => 227,  874 => 224,  871 => 223,  868 => 222,  858 => 219,  855 => 218,  852 => 217,  851 => 216,  848 => 215,  845 => 214,  843 => 213,  821 => 211,  811 => 209,  808 => 208,  802 => 205,  798 => 204,  793 => 203,  787 => 200,  783 => 199,  778 => 198,  775 => 197,  773 => 196,  767 => 192,  765 => 191,  758 => 186,  752 => 185,  748 => 183,  746 => 182,  739 => 180,  721 => 179,  717 => 177,  714 => 176,  710 => 175,  707 => 174,  703 => 173,  694 => 169,  688 => 167,  685 => 166,  682 => 165,  681 => 164,  678 => 163,  676 => 162,  670 => 161,  659 => 159,  656 => 158,  651 => 157,  650 => 156,  647 => 155,  639 => 153,  636 => 152,  634 => 151,  631 => 150,  621 => 149,  611 => 148,  594 => 147,  591 => 146,  581 => 145,  577 => 143,  575 => 142,  566 => 141,  565 => 140,  562 => 139,  560 => 138,  557 => 137,  544 => 136,  541 => 135,  540 => 134,  525 => 132,  517 => 131,  489 => 128,  479 => 126,  476 => 125,  474 => 124,  470 => 123,  467 => 122,  458 => 116,  454 => 115,  447 => 111,  444 => 110,  436 => 107,  432 => 105,  430 => 104,  427 => 103,  421 => 100,  417 => 98,  415 => 97,  406 => 94,  399 => 92,  396 => 91,  390 => 90,  389 => 89,  376 => 87,  353 => 86,  327 => 85,  315 => 84,  297 => 83,  295 => 82,  291 => 81,  277 => 78,  273 => 77,  263 => 71,  261 => 70,  257 => 68,  255 => 67,  251 => 65,  245 => 63,  242 => 62,  229 => 61,  227 => 60,  216 => 59,  213 => 58,  211 => 57,  208 => 56,  200 => 51,  192 => 50,  186 => 49,  182 => 48,  177 => 46,  174 => 45,  172 => 44,  169 => 43,  157 => 42,  153 => 40,  152 => 39,  149 => 38,  145 => 36,  139 => 35,  122 => 34,  120 => 33,  117 => 22,  116 => 31,  110 => 27,  104 => 20,  99 => 21,  94 => 20,  86 => 18,  84 => 17,  75 => 14,  73 => 13,  70 => 15,  57 => 9,  54 => 8,  52 => 7,  49 => 6,  43 => 5,  34 => 3,  31 => 7,  19 => 1,);
    }
}
