<?php     
	defined('C5_EXECUTE') or die("Access Denied.");	
	class QuickiePlayerBlockController extends BlockController {

		protected $btInterfaceWidth = 400;
		protected $btInterfaceHeight = 240;
		protected $btTable = 'quickie_player';
		protected $btWrapperClass = 'ccm-ui';
		public $vURL = '';
		public $vEmbed = '';

		public function getBlockTypeDescription() {
			return t("A quick and responsive video embed from YouTube, Vimeo or custom embed code");
		}
		
		public function getBlockTypeName() {
			return t("Quickie Player - Responsive Video Block");
		}


		public function save($data) {	
			
			
			$args['vURL'] = isset($data['vURL']) ? $data['vURL'] : '';
			$url = $data['vURL'];
			$urlHost = parse_url($url, PHP_URL_HOST);
			if (($urlHost == 'youtu.be') || ($urlHost == 'youtube.com') || ($urlHost == 'www.youtube.com')){
		
				if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $url, $match)) {
				    $video_id = $match[1];
				}						
				$video_src = 'http://www.youtube.com/embed/' . $video_id . '?rel=0&showinfo=0';
				$thumbnailSrc = 'http://img.youtube.com/vi/' . $video_id . '/0.jpg';
				$args['vEmbed'] = '<iframe  width="480" height="270" src="' . $video_src . '" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>';
						
			}elseif (($urlHost == 'vimeo.com') || ($urlHost == 'www.vimeo.com')){
					
					if (preg_match('%(?:www\.)?vimeo\.com/(?:clip:)?(\d+)%', $url, $match)) {		   
						  $video_id = $match[1];
						  $video_src = 'http://player.vimeo.com/video/' . $video_id . '?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;color=ffffff';
						  $args['vEmbed'] = '<iframe  width="480" height="270" src="' . $video_src . '" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>';
				 	 	}		
							
						
				}else{						
					$args['vEmbed'] = isset($data['uEmbed']) ? $data['uEmbed'] : '';
										
				}
				
				$args['uEmbed'] = isset($data['uEmbed']) ? $data['uEmbed'] : '';	
				
				
				$v = View::GetInstance();
				$b = $this->getBlockObject();
				$btID = $b->getBlockTypeID();
				$bt = BlockType::getByID($btID);
				$uh = Loader::helper('concrete/urls');
				$bURL = $uh->getBlockTypeAssetsURL($bt);
				$args['bURL'] = $bURL;
			
			
			parent::save($args);
		}



		public function on_page_view() {
			$v = View::GetInstance();
			$b = $this->getBlockObject();
			$btID = $b->getBlockTypeID();
			$bt = BlockType::getByID($btID);
			$uh = Loader::helper('concrete/urls');
			$bURL = $uh->getBlockTypeAssetsURL($bt);
			$v->addHeaderItem('<script type="text/javascript" src="' . $bURL. '/js/jquery.fitvids.js"></script>', 'CONTROLLER');
			
			

		}
	}

?>
