<?php

/* plupload.html */
class __TwigTemplate_79b52ae06c4a126dd06614eb086883ed extends Twig_Template
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
        echo "<script type=\"text/javascript\">
//<![CDATA[
phpbb.plupload = {
\ti18n: {
\t\t'b': '";
        // line 5
        echo addslashes($this->env->getExtension('phpbb')->lang("BYTES_SHORT"));
        echo "',
\t\t'kb': '";
        // line 6
        echo addslashes($this->env->getExtension('phpbb')->lang("KB"));
        echo "',
\t\t'mb': '";
        // line 7
        echo addslashes($this->env->getExtension('phpbb')->lang("MB"));
        echo "',
\t\t'gb': '";
        // line 8
        echo addslashes($this->env->getExtension('phpbb')->lang("GB"));
        echo "',
\t\t'tb': '";
        // line 9
        echo addslashes($this->env->getExtension('phpbb')->lang("TB"));
        echo "',
\t\t'Add Files': '";
        // line 10
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ADD_FILES"));
        echo "',
\t\t'Add files to the upload queue and click the start button.': '";
        // line 11
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ADD_FILES_TO_QUEUE"));
        echo "',
\t\t'Close': '";
        // line 12
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_CLOSE"));
        echo "',
\t\t'Drag files here.': '";
        // line 13
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_DRAG"));
        echo "',
\t\t'Duplicate file error.': '";
        // line 14
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_DUPLICATE_ERROR"));
        echo "',
\t\t'File: %s': '";
        // line 15
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_FILE"));
        echo "',
\t\t'File: %s, size: %d, max file size: %d': '";
        // line 16
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_FILE_DETAILS"));
        echo "',
\t\t'File count error.': '";
        // line 17
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ERR_FILE_COUNT"));
        echo "',
\t\t'File extension error.': '";
        // line 18
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_EXTENSION_ERROR"));
        echo "',
\t\t'File size error.': '";
        // line 19
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_SIZE_ERROR"));
        echo "',
\t\t'File too large:': '";
        // line 20
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ERR_FILE_TOO_LARGE"));
        echo "',
\t\t'Filename': '";
        // line 21
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_FILENAME"));
        echo "',
\t\t'Generic error.': '";
        // line 22
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_GENERIC_ERROR"));
        echo "',
\t\t'HTTP Error.': '";
        // line 23
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_HTTP_ERROR"));
        echo "',
\t\t'Image format either wrong or not supported.': '";
        // line 24
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_IMAGE_FORMAT"));
        echo "',
\t\t'Init error.': '";
        // line 25
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_INIT_ERROR"));
        echo "',
\t\t'IO error.': '";
        // line 26
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_IO_ERROR"));
        echo "',
\t\t'Invalid file extension:': '";
        // line 27
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ERR_FILE_INVALID_EXT"));
        echo "',
\t\t'N/A': '";
        // line 28
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_NOT_APPLICABLE"));
        echo "',
\t\t'Runtime ran out of available memory.': '";
        // line 29
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ERR_RUNTIME_MEMORY"));
        echo "',
\t\t'Security error.': '";
        // line 30
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_SECURITY_ERROR"));
        echo "',
\t\t'Select files': '";
        // line 31
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_SELECT_FILES"));
        echo "',
\t\t'Size': '";
        // line 32
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_SIZE"));
        echo "',
\t\t'Start Upload': '";
        // line 33
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_START_UPLOAD"));
        echo "',
\t\t'Start uploading queue': '";
        // line 34
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_START_CURRENT_UPLOAD"));
        echo "',
\t\t'Status': '";
        // line 35
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_STATUS"));
        echo "',
\t\t'Stop Upload': '";
        // line 36
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_STOP_UPLOAD"));
        echo "',
\t\t'Stop current upload': '";
        // line 37
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_STOP_CURRENT_UPLOAD"));
        echo "',
\t\t\"Upload URL might be wrong or doesn't exist.\": '";
        // line 38
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ERR_UPLOAD_URL"));
        echo "',
\t\t'Uploaded %d/%d files': '";
        // line 39
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_UPLOADED"));
        echo "',
\t\t'%d files queued': '";
        // line 40
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_FILES_QUEUED"));
        echo "',
\t\t'%s already present in the queue.': '";
        // line 41
        echo addslashes($this->env->getExtension('phpbb')->lang("PLUPLOAD_ALREADY_QUEUED"));
        echo "'
\t},
\tconfig: {
\t\truntimes: 'html5',
\t\turl: '";
        // line 45
        echo (isset($context["S_PLUPLOAD_URL"]) ? $context["S_PLUPLOAD_URL"] : null);
        echo "',
\t\tmax_file_size: '";
        // line 46
        echo (isset($context["FILESIZE"]) ? $context["FILESIZE"] : null);
        echo "b',
\t\tchunk_size: '";
        // line 47
        echo (isset($context["CHUNK_SIZE"]) ? $context["CHUNK_SIZE"] : null);
        echo "b',
\t\tunique_names: true,
\t\tfilters: [";
        // line 49
        echo (isset($context["FILTERS"]) ? $context["FILTERS"] : null);
        echo "],
\t\t";
        // line 50
        echo (isset($context["S_RESIZE"]) ? $context["S_RESIZE"] : null);
        echo "
\t\theaders: {'X-PHPBB-USING-PLUPLOAD': '1', 'X-Requested-With': 'XMLHttpRequest'},
\t\tfile_data_name: 'fileupload',
\t\tmultipart_params: {'add_file': '";
        // line 53
        echo addslashes($this->env->getExtension('phpbb')->lang("ADD_FILE"));
        echo "'},
\t\tform_hook: '#postform',
\t\tbrowse_button: 'add_files',
\t\tdrop_element : 'message',
\t},
\tlang: {
\t\tERROR: '";
        // line 59
        echo addslashes($this->env->getExtension('phpbb')->lang("ERROR"));
        echo "',
\t\tTOO_MANY_ATTACHMENTS: '";
        // line 60
        echo addslashes($this->env->getExtension('phpbb')->lang("TOO_MANY_ATTACHMENTS"));
        echo "',
\t},
\torder: '";
        // line 62
        echo (isset($context["ATTACH_ORDER"]) ? $context["ATTACH_ORDER"] : null);
        echo "',
\tmaxFiles: ";
        // line 63
        echo (isset($context["MAX_ATTACHMENTS"]) ? $context["MAX_ATTACHMENTS"] : null);
        echo ",
\tdata: ";
        // line 64
        echo (isset($context["S_ATTACH_DATA"]) ? $context["S_ATTACH_DATA"] : null);
        echo ",
}
//]]>
</script>
";
        // line 68
        $asset_file = (("" . (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null)) . "/plupload/plupload.full.min.js");
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            $asset->add_assets_version('6');
            $asset_file = $asset->get_url();
            }
        }
        $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
        // line 69
        $asset_file = (("" . (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null)) . "/javascript/plupload.js");
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            $asset->add_assets_version('6');
            $asset_file = $asset->get_url();
            }
        }
        $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
    }

    public function getTemplateName()
    {
        return "plupload.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  247 => 69,  232 => 68,  225 => 64,  221 => 63,  217 => 62,  212 => 60,  184 => 47,  161 => 39,  157 => 38,  153 => 37,  145 => 35,  137 => 33,  133 => 32,  129 => 31,  117 => 28,  105 => 25,  93 => 22,  89 => 21,  85 => 20,  77 => 18,  65 => 15,  61 => 14,  53 => 12,  49 => 11,  45 => 10,  41 => 9,  37 => 8,  29 => 6,  166 => 70,  130 => 59,  87 => 31,  79 => 29,  69 => 16,  63 => 21,  43 => 11,  39 => 10,  325 => 102,  322 => 101,  305 => 99,  298 => 97,  297 => 96,  290 => 94,  278 => 90,  276 => 89,  271 => 88,  269 => 87,  265 => 86,  261 => 85,  257 => 84,  252 => 83,  237 => 78,  228 => 75,  226 => 74,  218 => 72,  209 => 70,  203 => 68,  201 => 67,  197 => 66,  193 => 50,  186 => 63,  176 => 45,  172 => 73,  170 => 54,  167 => 53,  143 => 63,  136 => 61,  125 => 30,  110 => 30,  98 => 27,  94 => 26,  90 => 25,  82 => 23,  74 => 21,  70 => 20,  62 => 18,  58 => 17,  54 => 16,  25 => 5,  650 => 189,  646 => 187,  640 => 184,  635 => 183,  632 => 182,  630 => 181,  627 => 180,  623 => 178,  617 => 176,  615 => 175,  609 => 174,  604 => 173,  600 => 171,  598 => 170,  595 => 169,  589 => 166,  583 => 165,  578 => 164,  575 => 163,  573 => 162,  570 => 161,  547 => 158,  538 => 157,  535 => 156,  533 => 155,  530 => 154,  526 => 152,  524 => 151,  521 => 150,  511 => 148,  508 => 147,  500 => 145,  497 => 144,  489 => 142,  486 => 141,  478 => 139,  475 => 138,  467 => 136,  464 => 135,  456 => 133,  453 => 132,  445 => 130,  442 => 129,  441 => 128,  435 => 124,  433 => 123,  430 => 122,  425 => 119,  419 => 116,  416 => 115,  413 => 114,  406 => 110,  402 => 108,  400 => 107,  396 => 106,  386 => 104,  384 => 103,  381 => 102,  371 => 95,  362 => 94,  355 => 93,  349 => 92,  345 => 91,  341 => 90,  336 => 87,  334 => 86,  331 => 85,  326 => 82,  324 => 81,  321 => 80,  319 => 79,  315 => 77,  314 => 76,  300 => 73,  296 => 71,  295 => 70,  291 => 68,  288 => 67,  281 => 66,  272 => 65,  264 => 63,  262 => 62,  255 => 59,  250 => 57,  241 => 55,  239 => 54,  234 => 77,  224 => 50,  214 => 71,  211 => 46,  208 => 59,  189 => 49,  185 => 80,  180 => 46,  178 => 40,  175 => 39,  171 => 37,  159 => 36,  156 => 35,  152 => 52,  149 => 36,  146 => 31,  132 => 30,  128 => 29,  126 => 58,  114 => 31,  106 => 41,  101 => 24,  100 => 21,  97 => 23,  91 => 32,  83 => 30,  78 => 22,  73 => 17,  50 => 15,  42 => 8,  33 => 7,  28 => 3,  306 => 84,  301 => 98,  287 => 93,  284 => 92,  270 => 78,  267 => 64,  253 => 76,  246 => 81,  243 => 80,  230 => 52,  227 => 51,  222 => 73,  216 => 63,  202 => 62,  199 => 53,  187 => 54,  179 => 49,  174 => 48,  169 => 41,  165 => 40,  160 => 69,  158 => 41,  155 => 34,  141 => 34,  138 => 38,  124 => 37,  121 => 29,  113 => 27,  109 => 26,  104 => 23,  102 => 40,  95 => 24,  92 => 23,  86 => 24,  81 => 19,  76 => 16,  68 => 14,  66 => 19,  57 => 13,  55 => 16,  52 => 8,  44 => 6,  36 => 6,  34 => 3,  31 => 4,  38 => 11,  24 => 4,  22 => 2,  19 => 1,);
    }
}
