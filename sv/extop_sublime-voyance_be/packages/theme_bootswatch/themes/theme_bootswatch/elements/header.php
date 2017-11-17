<?php   defined('C5_EXECUTE') or die("Access Denied.");
global $u;
$isLoggedIn = $u->isLoggedIn();

Loader::model('template_theme', 'theme_bootswatch');

$templateName = TemplateTheme::getSelectedTheme();
$useTypography = TemplateTheme::getUseTypography();
?>

<!DOCTYPE html>
<html lang="<?php  echo LANGUAGE?>">
	<head>

		<?php   Loader::element('header_required'); ?>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Meta specifique -->
		<!--[if IE]>
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<![endif]-->

		<meta name="author" content="Guillaume Agresta" />
		<meta name="copyright" content="Copyright &copy; 2013 Guillaume Agresta" />

		<meta property="og:type" content="website" />
		<meta property="og:title" content="<?php  echo $c->getCollectionName();?>" />
		<meta property="og:image" content="<?php  echo $this->getThemePath() .'/logo/og_310x310.png' ?>"/>
		<meta property="og:site_name" content="<?php  echo SITE;?>" />
		<meta property="og:description" content="<?php  echo $c->getCollectionDescription();?>" />
		<meta property="og:url" content="<?php  echo DIR_REL.$c->getCollectionPath();?>" />
	    <meta property="og:locale" content="<?php  echo LANGUAGE?>" />

		<meta name="application-name" content="<?php  echo $c->getCollectionName();?>" /> 
		<meta name="msapplication-tooltip" content="<?php  echo $c->getCollectionName();?>" />
		<meta name="msapplication-navbutton-color" content="#000" />
		<meta name="msapplication-starturl" content="./" />
		<meta name="msapplication-window" content="width=1200;height=768" />
		
		<meta name="DC.title" content="<?php  echo $c->getCollectionName();?>" />
		<meta name="DC.language" content="<?php  echo LANGUAGE?>" />
		<meta name="DC.format" content="text/html">
		<meta name="DC.publisher" content="<?php  echo $c->getCollectionName();?>" />
	
        <!-- Site web -->
        <link rel="shortcut icon" type="image/x-icon" href="<?php  echo $this->getThemePath(). '/logo/favicon.ico' ?>" /> <!-- for IE and other browsers -->
        <link rel="icon" type="image/x-icon" sizes="16x16" href="<?php  echo $this->getThemePath(). '/logo/favicon_16x16.png' ?>" /> <!-- for classic favicon displayed in the tabs -->
        <link rel="icon" type="image/x-icon" sizes="32x32" href="<?php  echo $this->getThemePath(). '/logo/favicon_32x32.png' ?>" /> <!-- for Safari on Mac OS -->
        <link rel="icon" type="image/x-icon" sizes="96x96" href="<?php  echo $this->getThemePath(). '/logo/favicon_96x96.png' ?>" /> <!-- for Google TV -->
        <link rel="icon" type="image/x-icon" sizes="160x160" href="<?php  echo $this->getThemePath(). '/logo/favicon_160x160.png' ?>" /> <!-- for Opera Speed Dial -->

        <!-- Apple -->
        <link rel="apple-touch-icon" href="<?php  echo $this->getThemePath(). '/logo/iphone_57x57.png' ?>"  /> <!-- for default iOS -->
        <link rel="apple-touch-icon" sizes="57x57" href="<?php  echo $this->getThemePath(). '/logo/iphone_57x57.png' ?>" />    <!-- for iPhone and iPad -->
        <link rel="apple-touch-icon" sizes="60x60" href="<?php  echo $this->getThemePath(). '/logo/iphone_60x60.png' ?>" />    <!-- for non-retina iPhone with iOS7 -->
        <link rel="apple-touch-icon" sizes="72x72" href="<?php  echo $this->getThemePath(). '/logo/iphone_72x72.png' ?>" />    <!-- for non-retina iPad with iOS6 or prior -->
        <link rel="apple-touch-icon" sizes="114x114" href="<?php  echo $this->getThemePath(). '/logo/iphone_114x114.png' ?>" />  <!-- for retina iPhone with iOS6 or prior -->
        <link rel="apple-touch-icon" sizes="120x120" href="<?php  echo $this->getThemePath(). '/logo/iphone_120x120.png' ?>" />  <!-- for retina iPhone with iOS7 -->
        <link rel="apple-touch-icon" sizes="144x144" href="<?php  echo $this->getThemePath(). '/logo/iphone_144x144.png' ?>" />  <!-- for retina iPad with iOS6 or prior -->
        <link rel="apple-touch-icon" sizes="152x152" href="<?php  echo $this->getThemePath(). '/logo/iphone_152x152.png' ?>" />  <!-- for retina iPad with iOS7 -->

        <!-- Windows 8 et Phone -->
        <meta name="msapplication-TileColor" content="#ffffff" />
        <meta name="msapplication-square70x70logo" content="<?php  echo $this->getThemePath(). '/logo/mstile_70x70.png' ?>" /> <!-- for Windows 8 / IE11 -->
        <meta name="msapplication-square150x150logo" content="<?php  echo $this->getThemePath(). '/logo/mstile_150x150.png' ?>" /> <!-- for Windows 8 / IE11 -->
        <meta name="msapplication-square310x310logo" content="<?php  echo $this->getThemePath(). '/logo/mstile_310x310.png' ?>" /> <!-- for Windows 8 / IE11 -->
        <meta name="msapplication-wide310x150logo" content="<?php  echo $this->getThemePath(). '/logo/mstile_310x150.png' ?>" /> <!-- for Windows 8 / IE11 -->
        <meta name="msapplication-TileImage" content="<?php  echo $this->getThemePath(). '/logo/mstile_144x144.png' ?>" /> <!-- for Windows 8 / IE10 -->

		<!-- Bootstrap -->
		<?php  if (($templateName == "") || ($templateName == "none")) { ?>
		    <link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getThemePath(). '/css/bootstrap.min.css'?>" />
		<?php  } else { ?>
			<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getThemePath(). '/bootswatch/'.$templateName.'.css'?>" />
		<?php  } ?>

		<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getThemePath(). '/css/bootstrap-responsive.min.css'?>" />
		
		<!-- CSS -->
		<link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getStyleSheet('main.css')?>" />
		<?php  if ($useTypography) {?>
		    <link rel="stylesheet" media="screen" type="text/css" href="<?php  echo $this->getStyleSheet('typography.css')?>">
        <?php  } ?>
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="//html5shim.googlecode.com/svn/trunk/html5.js')?>"></script>
        <![endif]-->
	</head>