{
  programs.firefox.enable = true;

  programs.firefox.policies = {
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
      "*".installation_mode = "blocked";
    };
  };
  
  programs.firefox.preferences = {
  };
}
