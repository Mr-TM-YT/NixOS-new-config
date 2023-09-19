{ pkgs, inputs, config, programs, ... }: {

  programs = {
    firefox = {
      enable = true;
      profiles.mohamed = {
        settings = {
          "dom.security.https_only_mode" = true;
          "browser.download.panel.shown" = true;
          "identity.fxaccounts.enabled" = false;
          "signon.rememberSignons" = false;
        };
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          bitwarden
          ublock-origin
          sponsorblock
          tridactyl
          youtube-shorts-block
        ];
      };
    };
  };
}
