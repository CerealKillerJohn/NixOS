{pkgs, user, ...}:

{
  programs = {
    firefox= {
      enable = true;
      profiles = {
#        ${user} = {
        amreed = {
          settings = {
            "browser.startup.homepage" = "fva.owschools.com";
          };
        gcreed = {
          settings = {
            "browser.startup.homepage" = "fva.owschools.com";
          };
        jwrhine = {
          settings = {
            "browser.startup.homepage" = "mail.proton.me";
            "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          };
          userChrome = ''
            @namespace url(http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul);
            #navigator-toolbox {
              height: 0px !important;
              min-height: 0px !important;
              overflow: hidden !important;
            }

            #navigator-toolbox:focus,
            #navigator-toolbox:focus-within,
            #navigator-toolbox:active {
              height: auto !important;
              overflow: visible !important;
            }
          '';

        };
      };
    };
  };
}
