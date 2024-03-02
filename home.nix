{ config, pkgs, ... }:

{
  home.username = "gmf";
  home.homeDirectory = "/home/gmf";

  home.packages = with pkgs; [
    neofetch
    firefox
    kate
    zip
    xz
    unzip
    p7zip
    ripgrep
    jq
    yq-go
    eza
    fzf 
    lshw
    transmission-gtk
    gimp
    inkscape
    krita
    kcalc
    thunderbird
    tor-browser
    mtr 
    iperf3
    dnsutils
    ldns
    aria2
    socat
    nmap
    ipcalc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg
    nix-output-monitor
    hugo
    glow
    vscode
    blender
    prismlauncher
    killall
    yt-dlp
    gamemode
    dxvk
    btop
    iotop
    iftop
    strace
    ltrace
    lsof
    sysstat
    lm_sensors
    ethtool
    pciutils
    usbutils
    grc
    mpv
    keepassxc
  ];

  programs.git = {
    enable = true;
    userName = "Gabriel Machado Fernandes";
    userEmail = "gabrielmfernandes25@gmail.com";
  };

  gtk = {
    enable = true;
    theme = {
      name = "Breeze-Dark";
      package = pkgs.kdePackages.breeze-gtk;
    };
  };

  programs.bat.enable = true;

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      { name = "fzf"; src = pkgs.fishPlugins.fzf.src; }
      { name = "hydro"; src = pkgs.fishPlugins.hydro.src; }
    ];
    shellAliases = {
      ls = "eza";
    };
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
