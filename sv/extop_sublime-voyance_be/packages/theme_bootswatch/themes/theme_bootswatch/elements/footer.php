<?php  
defined('C5_EXECUTE') or die(_("Access Denied."));
?>
    <!-- FOOTER -->
    <footer id="footer" class="text-center">
        <div class="span12">
            <?php echo t('Built with ')?><a href="http://www.concrete5.org/r/-/7790">concrete5 CMS</a> &nbsp;&nbsp; <?php echo t('Site Design by')?> Guillaume Agresta &nbsp;&nbsp;

            <?php 
            $u = new User();
            if ($u->isRegistered()) { ?>
                <?php 
                if (Config::get("ENABLE_USER_PROFILES")) {
                    $userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
                } else {
                    $userName = $u->getUserName();
                }
                ?>
                <span class="sign-in"><?php  echo t('Hi <b>%s</b>.', $userName)?> <a href="<?php  echo $this->url('/login', 'logout')?>"><?php  echo t('Sign Out')?></a></span>
            <?php  } else { ?>
                <span class="sign-in"><a href="<?php  echo $this->url('/login')?>"><?php  echo t('Sign In')?></a></span>
            <?php  } ?>

            &copy; <?php echo date('Y')?>&nbsp;&nbsp; <?php echo t('All rights reserved.')?>
        </div>
    </footer>


    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?php  echo $this->getThemePath().'/js/bootstrap.min.js'?>"></script>
	<script src="<?php  echo $this->getThemePath().'/js/respond.min.js'?>"></script>



