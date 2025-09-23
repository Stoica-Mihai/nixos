{
  programs.firefox = {
    enable = true;
    policies = {
      DisableTelemetry = true;
      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
           install_url = "https://addons.mozilla.org/firefox/downloads/file/4573289/ublock_origin-1.66.0.xpi";
           installation_mode = "force_installed"; 
	   default_area = "menupanel";
	 };
	 "extension@tabliss.io" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/3940751/tabliss-2.6.0.xpi";
	    installation_mode = "force_installed";
          };
          "{a7589411-c5f6-41cf-8bdc-f66527d9d930}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/3913593/matte_black_red-2022.2.23.xpi";
	    installation_mode = "force_installed";
          };
          "*".installation_mode = "blocked";
       };
    };
  };
}
