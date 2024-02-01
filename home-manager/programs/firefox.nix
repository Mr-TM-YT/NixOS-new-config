<<<<<<< HEAD
{ pkgs, inputs, config, programs, ... }: {
=======
{ inputs, ... }: {
>>>>>>> 4e56933 (Improved vscodium.nix)

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
<<<<<<< HEAD
=======
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
>>>>>>> 4e56933 (Improved vscodium.nix)
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          bitwarden
          ublock-origin
          sponsorblock
<<<<<<< HEAD
          tridactyl
          youtube-shorts-block
=======
          youtube-shorts-block
          vimium-c
>>>>>>> 4e56933 (Improved vscodium.nix)
        ];
      };
    };
  };
}
