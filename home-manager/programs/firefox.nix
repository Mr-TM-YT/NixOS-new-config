{ inputs, ... }: {

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
        bookmarks = [
          {
            name = "NixOS package search";
            tags = [ "search" "nixos" ];
            url = "https://search.nixos.org/packages/";
          }
          {
            name = "NixOS Home-Manager options search";
            tags = [ "search" "nixos" ];
            url = "https://mipmip.github.io/home-manager-option-search/";
          }
          {
            name = "Youtube";
            tags = [ "Entertainment" ];
            url = "https://www.youtube.com/";
          }
          {
            name = "Notion";
            tags = [ "Productivity" ];
            url = "https://notion.so/";
          }
          {
            name = "Google Calendar";
            tags = [ "Productivity" ];
            url = "https://calendar.google.com/";
          }
          {
            name = "Github";
            tags = [ "Coding" ];
            url = "https://www.github.com";
          }
        ];
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          bitwarden
          ublock-origin
          sponsorblock
          youtube-shorts-block
          vimium-c
        ];
      };
    };
  };
}
