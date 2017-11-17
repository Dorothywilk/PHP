<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); 
$c = Page::getCurrentPage();

if ($c->isEditMode() && $show_earth) { ?>
	<div style="border:1px solid #999; background:#eee; color:#999; padding:64px 16px; text-align:center; margin:8px 0px">
		<?php   echo  t('Google Earth Map Placeholder') ?>
	</div>
<?php    }else{ ?> 
	<?php    if($show_earth){ ?>
	<script>
	google.load("earth","1"); 
	function detectGoogleEarth(){
		try{
		var isInstalled = google.earth.isInstalled(); 
		var isSupported = google.earth.isSupported();
		if(isInstalled && isSupported) return true;
		}catch(e){  } 
		return false;
	} 
	</script>
	<?php    } ?>
	
	<script type="text/javascript"> 
	var geoXml<?php   echo $bID?>=null;
	
	function googleMapInit<?php   echo $bID?>() { 
		try{
			if (GBrowserIsCompatible()) { 
				//geoXml = new EGeoXml( "http://mapgadgets.googlepages.com/cta.kml" );
				var map = new GMap2(document.getElementById("googleAdvancedMapCanvas<?php   echo $bID?>"));
				map.setCenter(new GLatLng( <?php   echo $latitude?>, <?php   echo $longitude?>), <?php   echo $zoom?> ); 
				
				//var mapControl = new GSmallMapControl();
				//map.addControl(mapControl); 
				//  G_NORMAL_MAP  G_HYBRID_MAP  G_SATELLITE_MAP  G_PHYSICAL_MAP  G_SATELLITE_3D_MAP
				<?php    if($load_earth){ ?>
				if(detectGoogleEarth())
					 map.setMapType(G_SATELLITE_3D_MAP);
				else map.setMapType(<?php   echo $map_type_constant?>);
				<?php    }else{ ?> 
				map.setMapType(<?php   echo $map_type_constant?>);
				<?php    } ?>
				
				<?php    if($show_earth){ ?>
				if(detectGoogleEarth()) map.addMapType(G_SATELLITE_3D_MAP);			
				<?php    } ?>
				
				map.addControl(new GHierarchicalMapTypeControl());
				map.addControl(new GLargeMapControl());							
				<?php    if( strlen($kml_file_path) ){ ?>
				geoXml<?php   echo $bID?> = new GGeoXml("<?php   echo $kml_file_path ?>"
					<?php    if( floatval($latitude)==0 && floatval($longitude)==0 ){ ?>
					,function(){ geoXml<?php   echo $bID?>.gotoDefaultViewport(map); } 			
					<?php    } ?>
				);			
				map.addOverlay(geoXml<?php   echo $bID?>);
				<?php    } ?>
			}
		}catch(e){alert(e.message)} 
	}
	</script>
	<?php    if( strlen($title)>0){ ?><h3><?php   echo $title?></h3><?php    } ?>
		<div id="googleAdvancedMapCanvas<?php   echo $bID?>" class="googleAdvancedMapCanvas" ></div>
	<?php    if(strlen($kml_file_path) && $kml_link){ ?>
		<div class="ccm-note"><a href="<?php   echo $this->url('/download_file', $kml_fID)?>" target="_blank">Download KML for Google Earth</a></div>
	<?php    } ?>
	<script type="text/javascript">$(function() { googleMapInit<?php   echo $bID?>(); });</script> 
	
<?php    } ?>